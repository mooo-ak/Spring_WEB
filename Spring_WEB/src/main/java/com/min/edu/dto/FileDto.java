package com.min.edu.dto;

import java.io.Serializable;

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
public class FileDto implements Serializable{
	
	/* 파일 업로드 및 다운로드를 위한 Dto */

	private static final long serialVersionUID = 2582531070253040227L;
	
	private String f_seq; // 파일 중복을 방지하고 단일값을 찾기 위한 식별자
	private String b_seq; // 게시판 테이블 PK, 해당 글의 파일을 가져올때 FK
	private String b_writer; // 게시판 작성자
	private String origin_filename; // 파일업로드의 원래 파일 이름 (화면에 보이는)
	private String stored_filename; // 파일업로드의 저장되는 파일명 (서버에 저장되는)
	private String file_size; // 파일 크기
	private String f_regdate; // 파일 저장날짜
	private String f_delflag; // 파일 삭제여부
	private byte[] f_data;
	

}
