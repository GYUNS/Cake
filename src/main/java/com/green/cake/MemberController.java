package com.green.cake;

import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.request;

import java.io.File;
import java.io.IOException;
import java.io.PrintWriter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import dao.MemberDAO;
import service.MemberService;
import vo.MemberVO;

@Controller
public class MemberController {
	@Autowired
	MemberService service;
	
	@RequestMapping(value = "/selectone", method=RequestMethod.GET)
	public ModelAndView selectMemberone(ModelAndView mv, MemberVO vo) {
		// 입력한 newID 보관
		mv.addObject("newId", vo.getId());
		vo = service.selectOne(vo);
		if ( vo!=null ) { 
			// id 존재 -> 사용불가능
			mv.addObject("idUse", "F");
		}else {
			// id 존재하지 않음 -> 사용가능
			mv.addObject("idUse", "T");
		}
		mv.setViewName("views/member_main");
		return mv;
	} //idDupCheck

	@RequestMapping(value = "/login")
	   public ModelAndView memberlogin(HttpServletRequest request, HttpServletResponse response, ModelAndView mv, MemberVO vo,
	         RedirectAttributes rttr) throws IOException {
	      // 한글처리
	      response.setContentType("text/html; charset=UTF-8");

	      // 요청분석
	      String password = vo.getLog_password();
	      PrintWriter out = response.getWriter();
	      
	    
	      System.out.println(vo.getLog_id());
	      System.out.println(vo.getLog_password());
	      
	      // Service
	      vo = service.selectOne(vo);
	      
	      if (vo != null) {
	         // 아이디 확인완료(일치)
	    	 System.out.println("if문 안에있다"+vo.getPassword());
	         if (vo.getPassword().equals(password)) {
	            // 아이디, 비밀번호 확인완료(일치) => 로그인 성공

	            // 로그인 성공 => id, name session 객체 생성 후 보관 => home
	            HttpSession session = request.getSession(true);
	            session.setAttribute("LoginID", vo.getId());
	            // session.setAttribute("LoginName", vo.getName());
	            // 1.redirect:가 붙지 않으면 servlet-context.xml에서 InternalResourceViewResolver가 
	            // 설정한 prefix와 suffix 정보가 적용된 .jsp 파일을 찾고, 
	            // 2.redirect:가 붙으면 InternalResourceViewResolver 설정 정보는 무시되고 Context path 위치에서 .jsp 파일을 찾는다.
	            // 예를들어서 mv.setViewName("home");로 되어 있으면 http://localhost/Kmall/WEB-INF/views/home.jsp를 찾게 되고
	            // mv.setViewName("redirect:home");로 되어 있으면
	            // http://localhost/Kmall/home.jsp를 찾게 된다.
	            
	            mv.setViewName("redirect:home");
	         } else {
	            // 비밀번호 일치하지 않음
	        	 System.out.println("id 넘어왔습니다"+vo.getId());
		         System.out.println("id 넘어왔습니다"+vo.getPassword());
	        	 out.println("<script>location.href='.loginform';</script>");
	             mv.setViewName("client/clientLoginForm");
	             out.flush();
	            //mv.setViewName("#");
	         }
	      } else {
	         // 아이디 일치하지 않음
	    	 out.println("<script>location.href='.loginform';</script>");
             mv.setViewName("client/clientLoginForm");
             out.flush();
	    	  
	        // mv.setViewName("#");
	      }
	      // view
	      return mv;
	   } // memberlogin
	
	@RequestMapping(value = "/logout") 
    public ModelAndView logout(HttpServletRequest request, ModelAndView mv, RedirectAttributes rttr) {
        request.getSession().invalidate(); 

        mv.setViewName("redirect:home");
        return mv;
    } //logout
	
	
	
	
	//** 2. Join
	@RequestMapping(value = "/joinf", method=RequestMethod.GET)
	public ModelAndView joinf(ModelAndView mv) {
		mv.setViewName("member/joinForm");
		return mv;
	} //join
	
	@RequestMapping(value = "/join", method=RequestMethod.POST)
	public ModelAndView join(HttpServletRequest request, 
							ModelAndView mv, MemberVO vo) throws IOException {
		
		// 2. Service

		int cnt = service.insert(vo);//insert 
		
		
		if ( cnt> 0 ) {
			// 입력성공 -> loginForm 으로 
			mv.addObject("message", "~~ 회원가입 완료 -> 로그인후 이용 하세요 ~~");
			mv.setViewName("redirect:home");
		}else {
			// 입력실패 -> 재시도 유도 joinForm 으로
			mv.addObject("message", "~~ 회원가입 오류 -> 다시 하세요 ~~");
		}
		// 3. 결과 : view 처리
		return mv;
	} //join
	
	
	// 실시간 아이디 중복검사
//	@RequestMapping(value = "/idOverlap")
//	public ModelAndView idOverlap(HttpServletRequest request, HttpServletResponse response, ModelAndView mv,
//			MemberVO vo) throws IOException {
//		// 1. 요청분석
//		// => 입력한 id 보관
//		// => response 한글처리
//		response.setContentType("text/html; charset=UTF-8");
//		String id = vo.getId();
//		PrintWriter out = response.getWriter();
//
//		int idDoubleCheck = service.idDoubleCheck(vo);
//
//		// 2. Service
//		if (idDoubleCheck == 0) {
//			System.out.println("이미 존재하는 아이디입니다.");
//		} else if (idDoubleCheck == 1) {
//			System.out.println("사용 가능한 아이디 입니다.");
//		}
//
//		out.write(idDoubleCheck + "");
//		// 3. 결과 : view 처리
//		mv.setViewName("jsonView");
//		return mv;
//	} // idOverlap	
@RequestMapping(value = "/memberIdChk", method = RequestMethod.POST)
@ResponseBody
public void memberIdChkPOST(String memberId) throws Exception{
	
	}

}

