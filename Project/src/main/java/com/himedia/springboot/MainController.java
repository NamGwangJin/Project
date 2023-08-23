package com.himedia.springboot;

import java.util.ArrayList;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpSession;

@Controller
public class MainController {
	@Autowired
	private ProductDAO pd;
	
	@GetMapping("/showAll") // 전체 상품 보기 클릭
	public String showAll(HttpServletRequest req, Model model) {
		ArrayList<ProductDTO> pList = pd.getProducts();
		model.addAttribute("pList",pList);
		return "showAll";
	}
	
	@GetMapping("/viewProduct") // 상품 상세 보기 클릭
	public String viewProduct(HttpServletRequest req, Model model) {
		HttpSession session = req.getSession();
		String id = (String) session.getAttribute("id");
		int product_id = Integer.parseInt(req.getParameter("id"));
		ProductDTO product = pd.getProduct(product_id);
		String size = pd.getSize(product_id);
		String[] sizeList = size.split(",");
		model.addAttribute("productSize",sizeList);
		model.addAttribute("product", product);
		session.setAttribute("id",id);
		return "viewProduct";
	}
	
	@GetMapping("/top") // 상의 클릭
	public String top(Model model) {
		ArrayList<ProductDTO> topList = pd.getCategory("top");
		model.addAttribute("top",topList);
		return "top";
	}
	
	@GetMapping("/bottom") // 하의 클릭
	public String bottom(Model model) {
		ArrayList<ProductDTO> botList = pd.getCategory("bottom");
		model.addAttribute("bottom",botList);
		return "bottom";
	}
	
	@GetMapping("/shoes") // 신발 클릭
	public String shoes(Model model) {
		ArrayList<ProductDTO> shoeList = pd.getCategory("shoes");
		model.addAttribute("shoes",shoeList);
		return "shoes";
	}
	
	@GetMapping("/acc") // acc 클릭
	public String acc(Model model) {
		ArrayList<ProductDTO> accList = pd.getCategory("acc");
		model.addAttribute("acc",accList);
		return "acc";
	}
}