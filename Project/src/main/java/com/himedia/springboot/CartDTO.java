package com.himedia.springboot;

import lombok.Data;

@Data
public class CartDTO {
	String user_id;
	String product_img;
	String product_name;
	String product_size;
	int product_qty;
	int product_price;
}
