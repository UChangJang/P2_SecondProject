package comma.sist.model;

import javax.servlet.http.HttpServletRequest;

import comma.sist.controller.*;
import comma.sist.user.dao.UserDAO;

import java.io.UnsupportedEncodingException;
import java.util.*;
import comma.sist.user.dao.*;
@Controller("IC")
public class IntroController {
	
	@RequestMapping("main.do")
	public String mainStart(HttpServletRequest request){
		
			
		List<UserVO> list = UserDAO.userAllData();
		System.out.println(list.size());
		for(UserVO vo:list){
			
			System.out.println(vo.getUser_id());
			System.out.println(vo.getUser_name());
			System.out.println(vo.getUser_sex());
			System.out.println("====================");
		}
		
		return "main.jsp";
	}
	
}
