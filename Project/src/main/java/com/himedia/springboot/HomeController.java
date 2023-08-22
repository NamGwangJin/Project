package com.himedia.springboot;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class HomeController {
	@Autowired
	private MemberDAO md;
	@Autowired CartDAO cd;
	
	@GetMapping("/") // 초기 화면
	public String home() {
		return "home";
	}
	@GetMapping("/logout") // 로그아웃
	public String logout(HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.invalidate();
		return "redirect:/";
	}
	@GetMapping("/login") // 로그인 화면
	public String login() {
		return "login";
	}
	@GetMapping("/loginToHome") // 로그인 화면에서 홈으로 버튼 클릭
	public String loginToHome(HttpServletRequest req) {
		HttpSession session = req.getSession();
		session.invalidate();
		return "redirect:/";
	}
	@PostMapping("/doLogin") // 로그인 시도
	@ResponseBody
	public String doLogin(HttpServletRequest req) {
		String id = req.getParameter("id");
		String pw = req.getParameter("pw");
		int data = md.doLogin(id, pw);
		if (data == 1) { // 로그인 성공 시 장바구니 조회, 세션으로 아이디와 이름 전달
			HttpSession session = req.getSession();
			MemberDTO memberData = md.loginSuccess(id);
			ArrayList<CartDTO> cart = cd.getCart(id);
			session.setAttribute("cart",cart.size());
			session.setAttribute("name", memberData.getName());
			session.setAttribute("id", memberData.getUserid());
		} else {
			HttpSession session = req.getSession();
			session.setAttribute("name", null);
		}
		return String.valueOf(data);
	}
	
	@GetMapping("/signUp") // 회원가입 버튼 클릭
	public String signUp() {
		return "signup";
	}
	@PostMapping("/signUpOk") // 회원가입 페이지에서 가입하기 버튼 클릭
	public String signUpOk(HttpServletRequest req) {
		String userid = req.getParameter("logid");
		String passcode = req.getParameter("pwd");
		String name = req.getParameter("name");
		String mobile = req.getParameter("mobile");
		String gender = req.getParameter("gender");
		String birthday = req.getParameter("birthday");
		md.signUp(userid, passcode, name, mobile, gender, birthday);
		return "redirect:/signUpOkView";
	}
	@PostMapping("/idCheck") // 아이디 중복 검사
	@ResponseBody
	public String idCheck(HttpServletRequest req) {
		String id = req.getParameter("id");
		int check = md.idCheck(id);
		System.out.println(check);
		return String.valueOf(check);
	}
	@GetMapping("/signUpOkView") // 회원가입 완료 안내 페이지
	public String signUpOkView() {
		return "signUpOk";
	}
}
