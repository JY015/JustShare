package com.js.web.board;

// 페이지 기준 
public class PageCriteria {
	
    private Integer page; // 현재 페이지 번호    null 값이 들어올 수 있어서 integer?
    private int perPageNum; // 페이지당 보여줄 게시글의 개수
    
    public int getPageStart() {
        // 특정 페이지의 범위를 정하는 구간, 현재 페이지의 게시글 시작 번호 페이지당 ~        
        return (this.page -1) * perPageNum;
    }
 
    public PageCriteria() {
    	// 기본 생성자 
    	this.page = 1;
    	this.perPageNum = 10;
	}
    
    // 현재 페이지 번호 page : getter, setter
    public int getPage() {
        return page;
    }
 
    public void setPage(Integer page) {
        if(page == null || page <= 0) {// int는 null값 할당 불가, 순서 바꾸면 오류
            this.page = 1;
            
        } else {
            this.page = page;
        }    
    }

    // 페이지당 보여줄 게시글의 개수 perPageNum : getter, setter
    public int getPerPageNum() {
        return perPageNum;
    }
 
    public void setPerPageNum(int perPageNum) {
        int cnt = this.perPageNum;
        
        if(perPageNum != cnt) {
            this.perPageNum = cnt;    
        } else {
            this.perPageNum = perPageNum;
        }
        
    }
    
  
}