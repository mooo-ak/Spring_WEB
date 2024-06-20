package com.min.edu.dto;

import java.io.Serializable;
import java.util.Date;
import java.util.List;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;
import lombok.ToString;

@Data
@Getter
@Setter
@ToString
@NoArgsConstructor
@AllArgsConstructor
public class BoardDto implements Serializable {

	// 데이터 직렬화 : 데이터를 쉽게 저장하고 전송, DB에 BLOB으로 저장 가능
	private static final long serialVersionUID = 1350106882718101900L;
	
	// ====================================================

	/* Spring_WEB 게시판 DTO 생성 */
	
	private String b_seq;
	private String b_title;
	private String b_content;
	private String b_writer;
	private String b_writerId;
	private String b_createAt;
	private int b_depth;
	private int b_ref;
	private int b_step;
	private String b_delflag;
	// 페이징 적용 후 게시글 넘버링을 위한 요소
	private String b_no;
	// 조회수 구현
	private String b_viewcount;

	// ====================================================
	
	/* 방법1. FILE DTO 생성 */
	// private String f_seq; 
	// private String origin_filename; 
	// private String stored_filename; 
	// private String file_size; 
	// private String f_regdate; 
	// private String f_delflag;
	
	/* 방법2. FileBoardDto를 만들어서 BoardDto에 추가하기 */
	// 		: board_Statement.xml에서 <resultMap><collection property="fileDto" resultMap="FileBoardDto"/></resultMap>
	private List<FileDto> fileDto;

}
