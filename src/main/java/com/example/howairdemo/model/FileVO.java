package com.example.howairdemo.model;

import lombok.Data;

@Data
public class FileVO {
	private int fno;
	private int bno;
	private String savefolder;
	private String savefile;
	private String originfile;
	private String filetype;
}
