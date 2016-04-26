package comma.sist.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import comma.sist.common.TextVO;
import comma.sist.controller.Controller;
import comma.sist.controller.RequestMapping;
import comma.sist.guide.dao.GuideDAO;
import comma.sist.guide.dao.GuideVO;
import comma.sist.reservation.dao.ReservationDAO;
import comma.sist.reservation.dao.ReservationVO;
import comma.sist.review.dao.ReviewDAO;
import comma.sist.review.dao.ReviewVO;
import comma.sist.tourist.dao.TouristDAO;
import comma.sist.tourist.dao.TouristVO;
import comma.sist.user.dao.UserDAO;
import comma.sist.user.dao.UserVO;
import comma.sist.wish.dao.WishDAO;
import comma.sist.wish.dao.WishVO;

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
	@RequestMapping("join.do")
	public String memberJoinOk(HttpServletRequest req) throws Exception{
		HttpSession session=req.getSession();
		req.setCharacterEncoding("EUC-KR");
		String id=req.getParameter("id");
		String name=req.getParameter("name");
		String pwd=req.getParameter("pwd");
		String mail=req.getParameter("email");
		String nick=req.getParameter("nick");		
		
		UserVO vo=new UserVO();
		vo.setUser_id(id);
		vo.setUser_pwd(pwd);
		vo.setUser_name(name);
		vo.setUser_nick(nick);
		vo.setUser_mail(mail);
		System.out.println(vo.getUser_name());
		System.out.println(vo.getUser_id());
		System.out.println(vo.getUser_pwd());
		System.out.println(vo.getUser_nick());
		System.out.println(vo.getUser_mail());	
		UserDAO.userJoin(vo);
		

		return "user/join.jsp";
	}
	@RequestMapping("mypage_infoCorrection.do")
	public String mypage_detail(HttpServletRequest req){
		String id=req.getParameter("userid");
		UserVO vo = UserDAO.userProfile(id);
		req.setAttribute("vo", vo);
		
		req.setAttribute("jsp", "mypage/mypage.jsp");
		req.setAttribute("mypage", "mypage/mypage_infoCorrection.jsp");
		return "main.jsp";
	}
	@RequestMapping("mypage_wishlist.do")
	public String mypage_wishlist(HttpServletRequest req){
		String id=req.getParameter("userid");		
		List<WishVO> vo=WishDAO.myAllWish(id);	
		req.setAttribute("vo", vo);
		req.setAttribute("jsp", "mypage/mypage.jsp");
		req.setAttribute("mypage", "mypage/mypage_wishlist.jsp");		
		return "main.jsp";
	}
	@RequestMapping("mypage_review.do")
	public String mypage_review(HttpServletRequest req){
		String id=req.getParameter("userid");
		//List<ReviewVO> vo = ReviewDAO.myAllReview(id);	
		//req.setAttribute("vo", vo);
		req.setAttribute("jsp", "mypage/mypage.jsp");
		req.setAttribute("mypage", "mypage/mypage_review.jsp");		
		return "main.jsp";
	}
	@RequestMapping("mypage_reservation.do")
	public String mypage_reserve(HttpServletRequest req){
		String id= req.getParameter("userid");		
		//List<ReservationVO> guidevo = ReservationDAO.myGuideReservation(id);	
		//List<ReservationVO> tourvo = ReservationDAO.myTourReservation(id);	
		
		//req.setAttribute("guidevo", guidevo);
		//req.setAttribute("tourvo", tourvo);
		req.setAttribute("jsp", "mypage/mypage.jsp");
		req.setAttribute("mypage", "mypage/mypage_reservation.jsp");		
		return "main.jsp";
		
	}
	@RequestMapping("mypage_mywriter.do")
	public String mypage_mywriter(HttpServletRequest req){
		String id=req.getParameter("userid");
		System.out.println("id"+id);
		List<TextVO> guidevo=GuideDAO.myGuideWriter(id);
		System.out.println("Ελ");
		//List<TouristVO> touristvo=TouristDAO.myTouristWriter(id);
		
		req.setAttribute("guidevo", guidevo);
		//req.setAttribute("touristvo", touristvo);		

		req.setAttribute("jsp", "mypage/mypage.jsp");
		req.setAttribute("mypage", "mypage/mypage_mywriter.jsp");		
		return "main.jsp";
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
