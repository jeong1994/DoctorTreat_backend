package com.doctorTreat.app.member;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.doctorTreat.app.Execute;
import com.doctorTreat.app.Result;
import com.doctorTreat.app.dto.MemberDTO;
import com.doctorTreat.app.member.dao.MemberDAO;

public class MemberJoinOkController implements Execute {
	@Override
	public Result execute(HttpServletRequest request, HttpServletResponse response)
			throws IOException, ServletException {

		// 인코딩 설정확인
		request.setCharacterEncoding("UTF-8");

		// MemberDTO와 DAO 객체 생성
		MemberDTO memberDTO = new MemberDTO();
		MemberDAO memberDAO = new MemberDAO();
		Result result = new Result();

		// DTO 객체 생성 및 폼 데이터 받아오기
		memberDTO.setMemberId(request.getParameter("memberId"));
		memberDTO.setMemberPw(request.getParameter("memberPw"));
		memberDTO.setMemberName(request.getParameter("memberName"));
		memberDTO.setMemberBirth(request.getParameter("memberBirth"));
		memberDTO.setMemberPhone(request.getParameter("memberPhone"));
		memberDTO.setAddressPostal(request.getParameter("addressPostal"));
		memberDTO.setAddressAddress(request.getParameter("addressAddress"));
		memberDTO.setAddressDetail(request.getParameter("addressDetail"));

		// 디버깅용 로그 출력
		System.out.println("MemberDTO : " + memberDTO);

		try {
            // DAO 메서드 호출
          memberDAO.joinMemberTransaction(memberDTO); // 트랜잭션 메서드 호출

            // 성공 처리
            result.setRedirect(true);
        } catch (Exception e) {
            e.printStackTrace(); // 에러 로그 기록
            result.setRedirect(false);
            System.out.println("에러!");
            // 에러 처리: 적절한 에러 메시지를 설정하거나 페이지로 리다이렉트
        }
        
        

        return result;
    }
}