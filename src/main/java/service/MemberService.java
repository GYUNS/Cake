package service;

import vo.MemberVO;

public interface MemberService {
	MemberVO selectMemberOne(MemberVO vo);
	int insert(MemberVO vo);
}
