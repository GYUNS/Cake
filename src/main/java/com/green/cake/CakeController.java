package com.green.cake;

import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;


import service.CakeService;

import vo.CakeVO;

@Controller
public class CakeController {
	
	// 클래스 변수선언 
	@Autowired
	   CakeService service ;
	
	private static final Logger logger = LoggerFactory.getLogger(HomeController.class);
	   

	@RequestMapping(value = "/cakeletterinsert", method=RequestMethod.GET)
	   public ModelAndView cakeletterinsert(ModelAndView mv, CakeVO vo, RedirectAttributes rttr) {
	      // 1. 요청분석 & Service
	 
	      if ( service.cakeLetterInsert(vo) > 0 ) {
	    	  logger.info("입력성공");
	         // 성공
	         rttr.addFlashAttribute("message", "~~ 새글 등록 성공 ~~");
	         mv.setViewName("redirect:home");
	      }else {
	         // 실패
	    	  logger.info("입력실패");
	         mv.addObject("message", "~~ 새글등록 실패 !! 다시 하세요 ~~");
	         mv.setViewName("redirect:home");
	      }
	      // 2. 결과 : view 처리
	      return mv;
	   } //cakeletterinsert


}

