package com.min.edu.ctrl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.min.edu.comm.Pagenation;
import com.min.edu.dto.BoardDto;
import com.min.edu.service.IPageService;

import lombok.extern.slf4j.Slf4j;

@Controller
@Slf4j
public class PageController {
	
	@Autowired
	private IPageService pageService;

	
	// 처음 페이지 요청은 1페이지를 보여줌 (paging.do?page=1)
	 @GetMapping (value = "/paging.do")
	public String paging(Model model, @RequestParam(value = "currentPage", defaultValue = "1") Integer currentPage) {
		
		// 해당 페이지에서 보여줄 글 전체 목록
		//List<BoardDto> pageList = pageService.testBoardList();
		
		log.info("현재 선택된 페이지 : {}", currentPage);
		 
		List<BoardDto> pagingList = pageService.selectPaging(currentPage);
		System.out.println("선택된 페이지의 게시글 목록: "+pagingList);
		Pagenation pagenation = pageService.paging(currentPage);

        model.addAttribute("pagingList", pagingList);
        model.addAttribute("pagenation", pagenation);
		return "/board/boardList";
	}
	
	
	
	
} // PageController END
