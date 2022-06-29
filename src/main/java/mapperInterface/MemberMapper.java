package mapperInterface;

import vo.MemberVO;

public interface MemberMapper {
	MemberVO selectMemberOne(MemberVO vo);
	int insert(MemberVO vo);
}
