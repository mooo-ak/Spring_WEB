package com.min.edu.comm;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Data
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
public class Pagenation {

	// [ 페이징 변수 ] 
	private int currentPage; // 현재페이지
	private int startPage; // 현재 페이지 기준 시작페이지
	private int endPage; // 현재 페이지 기준 마지막페이지
	private int totalPage; // 모든 페이지 수 
	private int displayPage; // pagination의 개수
	
	private boolean prev, next; // 이전, 다음페이지
	private int totalPost; // 전체 게시글 수
	private int pagePerPost; // 페이지 당 보여질 게시글 수
	
	public void setPagingInfo(int currentPage, int displayPage, int totalPost, int pagePerPost) {
	       this.currentPage = currentPage;
	       this.displayPage = displayPage;
	       this.totalPost = totalPost;
	       this.pagePerPost = pagePerPost;
	       
	       // 총 페이지 = 총 게시글 / 페이지당 게시글 개수
	       this.totalPage = (int) Math.ceil((double) totalPost / pagePerPost);
	       // 시작 페이지 = ( (현재 페이지-1)/pagenation 개수 ) * pagenation개수+1 = ((2-1)/10)+11
	       this.startPage = ((currentPage - 1) / displayPage) * displayPage + 1;
	
	       this.endPage = this.startPage + displayPage - 1;
	       if (this.endPage > this.totalPage) {
	           this.endPage = this.totalPage;
	       }
	
	       this.prev = this.startPage > 1;
	       this.next = this.endPage < this.totalPage;
	   }
	
	
}
