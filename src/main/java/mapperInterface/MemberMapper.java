package mapperInterface;

import vo.MemberVO;

public interface MemberMapper {
	MemberVO selectOne(MemberVO vo);
	
	// 실시간 아이디 중복검사
	int idDoubleCheck(MemberVO vo);
	
	int insert(MemberVO vo);
}
