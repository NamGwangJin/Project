package com.himedia.springboot;

import java.util.ArrayList;

import org.apache.ibatis.annotations.Mapper;

@Mapper
public interface OrderListDAO {
	int insertOrder (String img, String prodName, String size, int qty, int price,String userid ,String userName);
	OrderListDTO getOrder(String userName);
}
