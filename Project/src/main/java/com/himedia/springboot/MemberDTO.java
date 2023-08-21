package com.himedia.springboot;

import lombok.Data;

@Data
public class MemberDTO {
	String userid;
	String passcode;
	String name;
	String mobile;
	String gender;
	String birthday;
}
