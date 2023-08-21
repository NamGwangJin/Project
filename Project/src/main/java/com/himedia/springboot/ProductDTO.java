package com.himedia.springboot;

import lombok.Data;

@Data
public class ProductDTO {
	int product_id;
	String product_name;
	int product_price;
	String product_img;
	String category;
	String size;
}
