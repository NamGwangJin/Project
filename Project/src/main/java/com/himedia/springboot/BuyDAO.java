package com.himedia.springboot;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface BuyDAO {
	int buy (String img, String prodName, String size, int qty, int price,String userid ,String userName);
	
	BuyDTO getBuy(String userName);
	
	int deleteBuy(String id);
}
