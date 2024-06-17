package com.min.edu.ctrl;


import java.io.IOException;
import java.io.OutputStream;
import java.net.URLEncoder;
import java.util.List;
import java.util.UUID;

import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestPart;
import org.springframework.web.multipart.MultipartFile;

import com.min.edu.dto.BoardDto;
import com.min.edu.dto.FileDto;
import com.min.edu.service.IBoardService;

import lombok.extern.slf4j.Slf4j;


/*
 * @RestController 
 * 	: 스프링 MVC에서 JSON 형식으로 데이터를 응답 (@Controller + @ResponseBody)
 * @RequestBody 
 * 	: HttpServletRequest 를 통해 JSON 형식으로 전송된 요청 데이터 -> set 객체 속성에 바인딩
 * ResponseEntity 
 *  정상인 경우와 비정상인 경우 모두 JSON 응답을 전송
 *  ResponseEntity.status(상태코드).body(객체) : ResponseEntity의 status로 지정한 값을 응답 상태 코드로 사용
 */

@Controller
@Slf4j
public class BoardController {

	@Autowired
	private IBoardService bService;
	
	/* ---------- 게시판 전체보기 화면 ---------- */
	@GetMapping (value = "/getBoardList.do")
	public String boardList (Model model) {
		log.info("BoardController getBoardList.do : 게시판 화면으로 이동");
		
		List<BoardDto> lists = bService.boardList();
		if (lists == null || lists.isEmpty()) {
			log.info("boardList Data를 찾을 수 없습니다");
		}
		
		model.addAttribute("lists", lists);		
		return "/board/boardList";
	}

	
	/* ---------- 게시글 상세 화면 (게시글 + 첨부파일) ---------- */
	@GetMapping (value = "/getDetailBoard.do")
	public String detailBoard(String b_seq, Model model) {
		log.info("BoardController getDetailBoard.do : {}번 게시글 상세화면으로 이동", b_seq);
		
		BoardDto bDto = bService.detailBoard(b_seq);
		FileDto fDto = bService.getFile(b_seq);
		model.addAttribute("bDto", bDto);
		model.addAttribute("fDto", fDto);
		
		return "/board/boardDetail";
	}

	
	/* ---------- 첨부파일 다운로드 ---------- */ 
	@GetMapping(value = "/downloadFile.do")
	public void downloadFile(String b_seq, HttpServletResponse response) {
	    // b_seq에 해당하는 첨부파일 정보를 가져오기
	    FileDto fileDto = bService.getFile(b_seq);
	    String fileName = fileDto.getOrigin_filename();
	    byte[] fileContent = fileDto.getF_data();
	    
	    log.info("파일 다운로드 실행 : {}", fileName);

	    if (fileDto != null) {
	    	
	    	try {
		        // Content-Type : application/octet-stream -> 파일이기때문에 byte단위로 전송
		    	 response.setContentType("application/octet-stream");
		        // Content-Disposition : 사용자가 해당 파일을 다운받을 때 사용할 파일이름
		    	 String filename = URLEncoder.encode(fileName, "UTF-8");
		    	 response.setHeader("Content-Disposition", "attachment; filename=\"" + filename + "\"");
		    	// 파일 크기 설정 (옵션) : 예상 다운로드 시간을 추정 가능
		    	 response.setContentLength(fileContent.length);
		       
		    	 log.info("Content-Disposition 헤더 : {}", response.getHeader("Content-Disposition"));
				
				  try (OutputStream outputStream = response.getOutputStream()) { // 파일 데이터를 클라이언트로 전송 
					  outputStream.write(fileContent); 
					  outputStream.flush(); 
					  } 
				  catch (IOException e) { 
					  log.error("파일 다운로드 중 오류 발생: " + e.getMessage()); 
				  }
	        } catch (IOException e) {
	            log.error("파일명 인코딩 중 오류 발생: " + e.getMessage());
	        }
	    }
	}
	    
	       

	/* ---------- 게시판 글쓰기 화면 ---------- */
	@GetMapping (value = "/getWriteBoard.do")
	public String writeBoard() {
		log.info("BoardController getWriteBoard.do : 게시글 새글쓰기 화면으로 이동");
		return "/board/boardWrite";
	}

	
	/* ---------- 게시판 새 글 등록 + 파일업로드 ---------- */
    /* 
     * ResponseEntity : HTTP 응답을 나타내는 클래스
	 * # MultipartFile을 AJAX로 보내고 이를 컨트롤러에서 처리할 때, 일반적으로 Model을 사용하지 않아.
	 * 
	 * # @RequestParam(Map) / @RequestPart : multipart/form-data에 특화된 어노테이션
	 * https://somuchthings.tistory.com/160
	 *  
	 * # 절대 경로는 CDN(콘텐츠 전송 네트워크)을 사용하거나, 웹에 올려진 미디어 등을 사용할 때 사용
	 * # 상대 경로는 디렉토리 내부에서 모듈을 연결하거나, 다른 파일을 import하는 경우에 사용
	 */
	
	@PostMapping (value = "/insertBoard.do")
	public ResponseEntity<String> insertBoard(@RequestPart(value = "file", required = false) MultipartFile file,
											@RequestPart (value="bDto") BoardDto bDto,
											HttpSession session) throws IOException {
		
		// log 확인
		log.info("BoardController insertBoard.do : 새 게시글 입력 후 등록");
		log.info("{}\n {}", file, bDto);
		
		/*
		 * 선택사항. 해당 controller 경우 DB에만 저장하도록 설정함으로 저장경로 별도 설정 X
		 * 
		 * 1) 저장할 파일 절대 경로 선언
		 * String path =  WebUtils.getRealPath(session.getServletContext(), "/uploads");		
		 * 경로 File 객체로 변환 -> 폴더로 만들기
		 * File folder = new File(path);
		
		 * 2) 폴더가 존재하지 않는다면 상위 폴더까지 모두 생성 
		 * if(!folder.exists()) {
		 * 	folder.mkdirs();
		 * }
		 */
		
		// 3) 업로드 파일이 있을 경우 파일을 저장하고 FileDto 생성
		if(file != null) {
			FileDto fileDto = new FileDto();
			fileDto.setOrigin_filename(file.getOriginalFilename());
			fileDto.setStored_filename(UUID.randomUUID().toString()); // 형변환 (UUID -> String)
			fileDto.setFile_size(String.valueOf(file.getSize())); // 형변환 (long -> String)
			fileDto.setF_data(file.getBytes());
			
		 /* String fileName = file.getOriginalFilename();
			
			// 지정경로 + 파일명으로 폴더에 저장
			File storage = new File(path + File.separator + fileName);
	        file.transferTo(storage);
	      
	      */
			
			// 게시글 및 파일 정보 등록
			bService.insertTransaction(bDto, fileDto);
		} else {
			// 파일이 없을 경우 게시글만 등록
			bService.writeBoard(bDto);
		}
		
		// 상태 코드 200 OK
		return ResponseEntity.ok("게시글이 성공적으로 등록되었습니다.");
	}

	
	/* ---------- 게시판 글 수정 화면 ---------- */
	@GetMapping (value = "/getUpdateBoard.do")
	public String updateBoard(String b_seq, Model model) {
		log.info("BoardController getUpdateBoard.do : 게시글 수정화면으로 이동");
		
		BoardDto bDto = bService.detailBoard(b_seq);
		model.addAttribute("bDto", bDto);
		
		return "/board/boardUpdate";
	}

	
	/* ---------- 게시판 글 수정 ---------- */
	@PostMapping(value = "/modifyBoard.do")
	public String modifyBoard(BoardDto bDto, Model model) {
	    log.info("BoardController modifyBoard.do : {}번 게시글 수정 후 상세화면으로 이동", bDto.getB_seq());

	    int n = bService.modifyBoard(bDto);
	    model.addAttribute("bDto", bDto);
	    return (n > 0) ? "redirect:/getDetailBoard.do?b_seq=" + bDto.getB_seq() : "";
	}

	
	/* ---------- 게시판 글 삭제 ---------- */
	@GetMapping (value = "delBoard.do")
	public String delBoard(String b_seq, Model model) {
		log.info("BoardController delBoard.do : {}번 게시글 삭제", b_seq);
		
		bService.delBoard(b_seq);
				
		return "redirect:/getBoardList.do";
	}
	
	
	
	
	
	
	
} // BoardController END
