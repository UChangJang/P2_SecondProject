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
		
		return "main.jsp";
	}
	
	@RequestMapping("introduceSite.do")
	public String introduceSite(HttpServletRequest request){
		System.out.println("introduceSite�� ����");		
		return "intro/introduceSite.jsp";
	}
	@RequestMapping("introduceKor.do")
	public String introduceKor(HttpServletRequest request){
		System.out.println("introduceKor�� ����");		
		return "intro/introduceKor.jsp";
	}
	
	@RequestMapping("guide.do")
	public String guide(HttpServletRequest request){
		System.out.println("guide�� ����");		
		return "guide/guide.jsp";
	}
	
	@RequestMapping("guideWrite.do")
	public String guideWrite(HttpServletRequest request){
		System.out.println("guideWrite�� ����");		
		return "guide/guideWrite.jsp";
	}
	
	@RequestMapping("guideBoard.do")
	public String guideBoard(HttpServletRequest request){
		System.out.println("guideBoard�� ����");		
		return "guide/guideBoard.jsp";
	}
	
	@RequestMapping("mypage.do")
	public String mypage(HttpServletRequest request){
		System.out.println("mypage�� ����");		
		return "mypage/mypage.jsp";
	}
}
