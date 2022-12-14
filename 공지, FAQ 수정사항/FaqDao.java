package com.spring.webprj.persistence;

import java.util.List;

import com.spring.webprj.common.SearchVO;
import com.spring.webprj.domain.FaqVo;

public interface FaqDao {

	//Faq 리스트를 가져오기 위한 기능
	public List<FaqVo> selectAll(SearchVO search);

	//페이징 처리 전 목록 전체 개수
	public int listCount(SearchVO search);

	//Faq 상세 조회 기능
	public FaqVo select(int faqSeq);
	
	//Faq 취소 기능
	public void delete(int faqSeq);
	
	//Faq 생성 기능
	public void insert(FaqVo faq);
	
	//Faq 수정 기능
	public void update(FaqVo faq);
}
