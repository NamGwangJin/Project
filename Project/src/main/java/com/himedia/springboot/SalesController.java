package com.himedia.springboot;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class SalesController {
	@Autowired
	private OrderListDAO old;
	@Autowired
	private CartDAO cd;
	
	@GetMapping("/cart") // 장바구니 화면
	public String cart() {
		return "cart";
	}
	
	@PostMapping("/order") // 주문하기 클릭 ( ajax로 데이터 교환 후 /payment 매핑 )
	@ResponseBody
	public String order(HttpServletRequest req) {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		String img = req.getParameter("img");
		String prodName = req.getParameter("prodName");
		String size = req.getParameter("size");
		int price = Integer.parseInt(req.getParameter("price"));
		int qty = Integer.parseInt(req.getParameter("qty"));
		String userName = req.getParameter("userName");
		int data = old.insertOrder(img, prodName, size, qty, price, id ,userName);
		cd.insertCart(id, img, prodName, size, qty, price);
		session.setAttribute("id", id);
		session.setAttribute("userName", userName);
		return String.valueOf(data);
	}
	@GetMapping("/payment") // 주문 화면
	public String payment(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		String userid = (String) session.getAttribute("id");
		String userName = (String) session.getAttribute("userName");
		OrderListDTO order = old.getOrder(userid);
		model.addAttribute("order",order);
		model.addAttribute("userName",userName);
		return "order";
	}
}
