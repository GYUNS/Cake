package service;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import mapperInterface.CakeMapper;
import mapperInterface.MemberMapper;
import vo.CakeVO;
import vo.MemberVO;

@Service
public class CakeServiceImpl implements CakeService {
	
	@Autowired
	   CakeMapper mapper;
	
	@Override
	public int cakeLetterInsert(CakeVO vo) {
		return mapper.cakeLetterInsert(vo);
	}
	

}
