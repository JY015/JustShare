package com.js.web.board;

import lombok.Data;

@Data
public class FilterData {	
    private String[] areas;
    private String[] categories;
    private String[] equipments;

    // 생성자, Getter, Setter 메서드
}