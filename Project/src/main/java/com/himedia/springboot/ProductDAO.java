package com.himedia.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface ProductDAO {
	ArrayList<ProductDTO> getProducts();
	
	ProductDTO getProduct(int prod_id);
	
	ArrayList<ProductDTO> getCategory(String category);
	
	String getSize(int prod_id);
}
