package com.js.web.map;

import lombok.Data;

@Data
public class BoardDTO {
	private int bno;
	private double latitude, longitude; 
	private String btitle, addr;
}
