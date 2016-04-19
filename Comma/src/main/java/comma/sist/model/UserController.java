package comma.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import comma.sist.controller.Controller;
import comma.sist.controller.RequestMapping;
import comma.sist.user.dao.UserDAO;

@Controller("uc")
public class UserController {

	@RequestMapping("login.do")
	public String userLogin(HttpServletRequest request){
		
		String id = request.getParameter("id");
		String pwd = request.getParameter("pwd");
		
		String res = UserDAO.userLogin(id,pwd);
		String name = "";
		String admin = "";
		System.out.println(res);
		if(!(res.equals("NOID")||res.equals("NOPWD"))){
			name = res;
			HttpSession session = request.getSession();
			session.setAttribute("id", id);
			session.setAttribute("name", name);
			
		}else{
			request.setAttribute("res", res);
		}
		return "user/login.jsp";
	}
	
	@RequestMapping("logout.do")
	public String userLogout(HttpServletRequest request){
		
		HttpSession session = request.getSession();
		session.invalidate();
		
		return "user/logout.jsp";
	}
	
	
	
	
	
	
	
	
	
	
	
	
	
}
