package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapperInterface.MemberMapper;
import vo.MemberVO;

@Service
public class MemberServiceImpl implements MemberService {
	
	@Autowired
	   MemberMapper mapper;
	
	@Override
	public MemberVO selectOne(MemberVO vo) {
		return mapper.selectOne(vo);
	}
	
	// 아이디 실시간 중복검사
	@Override
	public int idDoubleCheck(MemberVO vo) {
		return mapper.idDoubleCheck(vo);
	}

	@Override
	public int insert(MemberVO vo) {
		return mapper.insert(vo);
	}
}
