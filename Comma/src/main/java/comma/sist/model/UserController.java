package comma.sist.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import comma.sist.common.TextVO;
import comma.sist.controller.Controller;
import comma.sist.controller.RequestMapping;
import comma.sist.guide.dao.GuideDAO;
import comma.sist.reservation.dao.ReservationDAO;
import comma.sist.review.dao.ReviewDAO;
import comma.sist.user.dao.UserDAO;
import comma.sist.user.dao.UserVO;
import comma.sist.user.dao.ZipcodeVO;
import comma.sist.wish.dao.WishDAO;


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
	@RequestMapping("idCheck.do")
	public String idCheck(HttpServletRequest req){
		System.out.println("zz");
		String id=req.getParameter("id");
		System.out.println(id);
		int count=UserDAO.idCheckCount(id);		
		req.setAttribute("count", count);
		System.out.println(count);
		return "idCheck.jsp";
	}
	@RequestMapping("join.do")
	public String memberJoinOk(HttpServletRequest req) throws Exception{
		
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
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		List<TextVO> guidevo=WishDAO.myWishGuide(id);
		List<TextVO> tourvo=WishDAO.myWishTour(id);	
		req.setAttribute("guidevo", guidevo);
		req.setAttribute("tourvo", tourvo);
		req.setAttribute("jsp", "mypage/mypage.jsp");
		req.setAttribute("mypage", "mypage/mypage_wishlist.jsp");		
		return "main.jsp";
	}
	//미정 삭제 테스트
	
	@RequestMapping("wishlist_guide_delete.do")
	   public String board_guide_delete(HttpServletRequest req){	
		   String gwish_no=req.getParameter("gwish_no");
		   WishDAO.myWishGuideDelete(Integer.parseInt(gwish_no));
		  
		   return "mypage/wishlist_delete.jsp";
	   }
	@RequestMapping("wishlist_tour_delete.do")
	   public String wishlist_tour_delete(HttpServletRequest req){
		   String twish_no=req.getParameter("twish_no");
		   WishDAO.myWishTourDelete(Integer.parseInt(twish_no));
		   return "mypage/wishlist_delete.jsp";
	   }
	
	
	@RequestMapping("mypage_review.do")
	public String mypage_review(HttpServletRequest req){
		String id=req.getParameter("userid");
		List<TextVO> vo = ReviewDAO.myAllReview(id);	
		req.setAttribute("vo", vo);
		req.setAttribute("jsp", "mypage/mypage.jsp");
		req.setAttribute("mypage", "mypage/mypage_review.jsp");		
		return "main.jsp";
	}
	@RequestMapping("mypage_reservation.do")
	public String mypage_reserve(HttpServletRequest req){
		String id= req.getParameter("userid");		
		List<TextVO> guidevo = ReservationDAO.myGuideReservation(id);	
		List<TextVO> tourvo = ReservationDAO.myTourReservation(id);	
		
		req.setAttribute("guidevo", guidevo);
		req.setAttribute("tourvo", tourvo);
		req.setAttribute("jsp", "mypage/mypage.jsp");
		req.setAttribute("mypage", "mypage/mypage_reservation.jsp");		
		return "main.jsp";
		
	}
	@RequestMapping("mypage_mywriter.do")
	public String mypage_mywriter(HttpServletRequest req){
		String id=req.getParameter("userid");
		String writer_no=req.getParameter("writer_no");
		System.out.println("id"+id);
		System.out.println("writer_no"+writer_no);
		List<TextVO> guidevo=GuideDAO.myGuideWriter(id);
		//List<TouristVO> touristvo=TouristDAO.myTouristWriter(id);
		
		req.setAttribute("guidevo", guidevo);
		//req.setAttribute("touristvo", touristvo);		

		req.setAttribute("jsp", "mypage/mypage.jsp");
		req.setAttribute("mypage", "mypage/mypage_mywriter.jsp");		
		return "main.jsp";
	}
	@RequestMapping("postfind_ok.do")
	public String postfind_ok(HttpServletRequest req) throws Exception{
		//android,ajax(js)=>UTF-8
		req.setCharacterEncoding("UTF-8");
		String dong=req.getParameter("dong");

		int count = UserDAO.postfindCount(dong);

		List<ZipcodeVO> list = UserDAO.postfindAllData(dong);
		
		req.setAttribute("list",list);
		req.setAttribute("count",count);
		return "mypage/postfind_ok.jsp";
	}
	@RequestMapping("infoCorrection_ok.do")
	public String infoCorrection_ok(HttpServletRequest req) throws Exception{
		req.setCharacterEncoding("EUC-KR");
		String nick=req.getParameter("nick");
		String pwd=req.getParameter("pwd");
		String email=req.getParameter("email");
		String birth=req.getParameter("year")+"/"+req.getParameter("month")+"/"+req.getParameter("day");
		String gender=req.getParameter("demo-priority");
		String tel=req.getParameter("tel1")+"-"+req.getParameter("tel2")+"-"+req.getParameter("tel3");
		String addr=req.getParameter("addr1")+"-"+req.getParameter("addr2");
		String introduce=req.getParameter("introduce");
		System.out.println(introduce);
		System.out.println(nick);
		System.out.println(pwd);
		System.out.println(email);
		System.out.println(birth);
		System.out.println(gender);
		System.out.println(tel);
		System.out.println(addr);
		
		
		
		req.setAttribute("jsp", "mypage/mypage.jsp");
		return "main.jsp";
	}
	@RequestMapping("idFind.do")
	public String idFind(HttpServletRequest req) throws Exception{
		
		req.setCharacterEncoding("UTF-8");
		String name=req.getParameter("name");
		String id=UserDAO.idFind(name);
		req.setAttribute("id", id);		
		
		return "user/idFind_ok.jsp";
	}
	@RequestMapping("pwdFind.do")
	public String pwdFind(HttpServletRequest req) throws Exception{
		
		req.setCharacterEncoding("UTF-8");
		String id=req.getParameter("id");
		String pwd=UserDAO.pwdFind(id);
		req.setAttribute("pwd", pwd);		
		
		return "user/pwdFind_ok.jsp";
	}
	
	
	
	
	
	
	
	
	
	
	
	
}
