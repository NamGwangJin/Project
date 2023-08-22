package com.himedia.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface CartDAO {
	void insertCart(String userName, String img, String prodName, String size, int qty, int price);
	
	ArrayList<CartDTO> getCart(String id);
}
