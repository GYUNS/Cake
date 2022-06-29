package service;

import vo.MemberVO;

public interface MemberService {
	MemberVO selectOne(MemberVO vo);
	
	// 아이디 실시간 중복검사
	int idDoubleCheck(MemberVO vo);
	
	int insert(MemberVO vo);
}
