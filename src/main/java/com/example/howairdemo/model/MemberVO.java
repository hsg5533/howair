package com.example.howairdemo.model;

import java.util.Date;

import lombok.Data;

@Data
public class MemberVO {
	private String id;
	private String name;
	private String pass;
	private String addr;
	private Date regdate;

}
