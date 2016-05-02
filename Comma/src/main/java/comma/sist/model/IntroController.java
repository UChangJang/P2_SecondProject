package comma.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import comma.sist.common.TextVO;
import comma.sist.controller.*;
import comma.sist.guide.dao.GuideDAO;
import comma.sist.user.dao.UserDAO;
import java.io.UnsupportedEncodingException;
import java.util.*;
import comma.sist.user.dao.*;
import comma.sist.weather.*;

@Controller("IC")
public class IntroController {
	
	@RequestMapping("main.do")
	public String mainStart(HttpServletRequest req){
			
		/*List<UserVO> list = UserDAO.userAllData();
		List<UserVO> list = UserDAO.userAllData();

		System.out.println(list.size());
		for(UserVO vo:list){
			System.out.println(vo.getUser_id());
			System.out.println(vo.getUser_name());
			System.out.println(vo.getUser_pwd());
			System.out.println("====================");
		}*/
		
		
		WeatherManager wm=new WeatherManager();
		List<WeatherDTO> wlist=wm.weatherAllData();
		List<TextVO> bestGuide=GuideDAO.bestGuide();
		req.setAttribute("bestGuide", bestGuide);
		req.setAttribute("wlist", wlist);
		req.setAttribute("jsp", "section.jsp");
		return "main.jsp";
	}
	
	@RequestMapping("introduceSite.do")
	public String introduceSite(HttpServletRequest request){
		request.setAttribute("jsp", "intro/introduceSite.jsp");		
		return "main.jsp";
	}
	@RequestMapping("introduceKor.do")
	public String introduceKor(HttpServletRequest request){
		request.setAttribute("jsp", "intro/introduceKor.jsp");		
		return "main.jsp";
	}
	
	
	
	
	@RequestMapping("touristWrite.do")
	public String touristWrite(HttpServletRequest request){
		request.setAttribute("jsp", "tourist/touristWrite.jsp");		
		return "main.jsp";
	}
	
	@RequestMapping("mypage.do")
	public String mypage(HttpServletRequest request){	
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		String user_img=UserDAO.userProfileImage(id);
		request.setAttribute("user_img",user_img);
		request.setAttribute("jsp", "mypage/mypage.jsp");
		return "main.jsp";
	}

}
