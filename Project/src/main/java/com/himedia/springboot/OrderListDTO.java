package com.himedia.springboot;

import lombok.Data;

@Data
public class OrderListDTO {
	int order_num;
	String order_img;
	String order_product;
	String order_size;
	int order_price;
	int order_qty;
	String order_name;
	String order_time;
	String order_payment;
}
