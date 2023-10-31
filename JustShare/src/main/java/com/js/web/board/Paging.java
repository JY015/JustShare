package com.js.web.board;


public class Paging {
	private int totalCount; // 게시판 전체 데이터 개수
    private int displayPageNum = 10; // 게시판 화면에서 한번에 보여질 페이지 번호의 개수
    
    private int startPage; // 화면의 시작 번호
    private int endPage;  // 화면의 끝 번호

    
    private PageCriteria cri;
 
    
    public int getTotalCount() {
        return totalCount;
    }
 
    public void setTotalCount(int totalCount) {
        this.totalCount = totalCount;
        
        pagingData();
    }
    
    private void pagingData() {
        
        endPage = (int) (Math.ceil(cri.getPage() / (double) displayPageNum) * displayPageNum);
        // endPage = (현재 페이지 번호 / 화면에 보여질 페이지 번호의 개수) * 화면에 보여질 페이지 번호의 개수
        startPage = (endPage - displayPageNum) + 1;
        // startPage = (끝 페이지 번호 - 화면에 보여질 페이지 번호의 개수) + 1
        
        int tempEndPage = (int) (Math.ceil(totalCount / (double) cri.getPerPageNum()));    
        if(endPage > tempEndPage) {
            endPage = tempEndPage;
        }
        // 마지막 페이지 번호 = 총 게시글 수 / 한 페이지당 보여줄 게시글의개수
        
    }
 
    public int getDisplayPageNum() {
        return displayPageNum;
    }
 
    public void setDisplayPageNum(int displayPageNum) {
        this.displayPageNum = displayPageNum;
    }
 
    public int getStartPage() {
        return startPage;
    }
 
    public void setStartPage(int startPage) {
        this.startPage = startPage;
    }
 
    public int getEndPage() {
        return endPage;
    }
 
    public void setEndPage(int endPage) {
        this.endPage = endPage;
    }
 
    public PageCriteria getCri() {
        return cri;
    }
 
    public void setCri(PageCriteria cri) {
        this.cri = cri;
    }
      
}