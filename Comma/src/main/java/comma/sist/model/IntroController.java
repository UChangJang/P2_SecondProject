package comma.sist.model;

import javax.servlet.http.HttpServletRequest;

import comma.sist.controller.*;
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
	
	@RequestMapping("guide.do")
	public String guide(HttpServletRequest request){
		request.setAttribute("jsp", "guide/guide.jsp");		
		return "main.jsp";
	}
	
	@RequestMapping("guideWrite.do")
	public String guideWrite(HttpServletRequest request){
		request.setAttribute("jsp", "guide/guideWrite.jsp");		
		return "main.jsp";
	}
	
	@RequestMapping("guideBoard.do")
	public String guideBoard(HttpServletRequest request){
		request.setAttribute("jsp", "guide/guideBoard.jsp");		
		return "main.jsp";
	}
	
	@RequestMapping("mypage.do")
	public String mypage(HttpServletRequest request){	
		request.setAttribute("jsp", "default.jsp");
		return "mypage/mypage.jsp";
	}
}
