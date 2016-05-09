package comma.sist.model;


import java.io.*;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;

import comma.sist.common.TextVO;
import comma.sist.controller.Controller;
import comma.sist.controller.RequestMapping;
import comma.sist.guide.dao.GuideDAO;
import comma.sist.guide.dao.GuideVO;
import comma.sist.reservation.dao.ReservationDAO;
import comma.sist.review.dao.ReviewDAO;
import comma.sist.review.dao.ReviewVO;
import comma.sist.tourist.dao.TouristDAO;
import comma.sist.tourist.dao.TouristResVO;
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
		String id=req.getParameter("id");
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
	
	@RequestMapping("mypage_mydetail.do")
	public String mypage_detail(HttpServletRequest req){
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		String user_img=UserDAO.userProfileImage(id);
		req.setAttribute("user_img", user_img);
		UserVO vo = UserDAO.userProfile(id);
		req.setAttribute("vo", vo);		
		req.setAttribute("jsp", "mypage/mypage.jsp");
		
		req.setAttribute("mypage", "mypage/mypage_mydetail.jsp");
		return "main.jsp";
	}
	
	//���ø���Ʈ=�ٽ� â ����/////////////////////////////////////////////////////////////////////////////
	@RequestMapping("mypage_wishlist.do")
	public String mypage_wishlist(HttpServletRequest req){			
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		String user_img=UserDAO.userProfileImage(id);
		req.setAttribute("user_img", user_img);
		
		List<TextVO> guidevo=WishDAO.myWishGuide(id);
		List<TextVO> tourvo=WishDAO.myWishTour(id);	
		req.setAttribute("guidevo", guidevo);
		req.setAttribute("tourvo", tourvo);
		req.setAttribute("jsp", "mypage/mypage.jsp");
		req.setAttribute("mypage", "mypage/mypage_wishlist.jsp");		
		return "main.jsp";
	}
	
	//���� ���� �׽�Ʈ
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
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		String user_img=UserDAO.userProfileImage(id);
		req.setAttribute("user_img", user_img);
		

		List<Integer> myGuideNoList = GuideDAO.guideAllNumberWrited(id);
		List<TextVO> myAllReview = new ArrayList<TextVO>();
		for(int gn:myGuideNoList){
			List<TextVO> list = ReviewDAO.myAllReview(gn);
			for(TextVO vo:list){
				myAllReview.add(vo);
			}
		}
		
		
		List<GuideVO> guidevo=ReviewDAO.myAbleReview(id);
		
		req.setAttribute("list", myAllReview);
		req.setAttribute("guidevo", guidevo);
		req.setAttribute("jsp", "mypage/mypage.jsp");
		req.setAttribute("mypage", "mypage/mypage_review.jsp");		
		return "main.jsp";
	}
	
	//����������_���ฮ��Ʈ �����ֱ�
	@RequestMapping("mypage_reservation.do")
	public String mypage_reserve(HttpServletRequest req){
		HttpSession session = req.getSession();
		String user_id = (String)session.getAttribute("id");
		String user_img=UserDAO.userProfileImage(user_id);
		req.setAttribute("user_img", user_img);
		
		List<TextVO> guidevo = ReservationDAO.myGuideReservation(user_id);	
		List<TextVO> tourvo = ReservationDAO.myTourReservation(user_id);	
		for(TextVO vo:guidevo){
			String sumTemp=ReservationDAO.reserveGuideCheck(vo.getGuidevo().getGuide_no());
			if(sumTemp==null) sumTemp="0";
			vo.setNum(Integer.parseInt(sumTemp));
		}
		
		req.setAttribute("guidevo", guidevo);
		req.setAttribute("tourvo", tourvo);
		req.setAttribute("jsp", "mypage/mypage.jsp");
		req.setAttribute("mypage", "mypage/mypage_reservation.jsp");		
		return "main.jsp";
		
	}
	
	@RequestMapping("mypage_mywriter.do")/////////////////////////////////////////////////////���� �� �� 
	public String mypage_mywriter(HttpServletRequest req){
		try{
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		String user_img=UserDAO.userProfileImage(id);
		req.setAttribute("user_img", user_img);
		
		List<TextVO> guidevo2=new ArrayList<TextVO>();		//��¥ �����ؼ� �ѱ� ����
		List<TextVO> guidevo=GuideDAO.myGuideWriter(id);	//1.���� �� ���̵�۵� ����
		List<TextVO> guideResvo = new ArrayList<TextVO>();
		for(TextVO vo:guidevo){
			int guideno=vo.getGuidevo().getGuide_no();
			//System.out.println("���̵�۹�ȣ:"+guideno);
			List<TextVO> gvo = ReservationDAO.reserveData(guideno);
			if(gvo!=null){
				for(TextVO v:gvo){
					guideResvo.add(v);
				}
			}
			
			String respeople=GuideDAO.myGuideWriterPerson(guideno);		//������ �ο� ��
			if(respeople==null) respeople="0";
			vo.getGuidevo().setReservation_person(respeople);
			guidevo2.add(vo);			
		}
		
		
		
		List<TextVO> touristvo=TouristDAO.myTouristWriter(id);	//2.���� �� �������۵� ����
		List<TextVO> touristvo2=new ArrayList<TextVO>();
		
		for(TextVO vo:touristvo){
			int tourno=vo.getTouristvo().getTour_no();	//*�� ����۸��� ��������� ��ȣ
			//System.out.println("\n����۹�ȣ:"+tourno);
			
			String respeople=TouristDAO.myTourWriterPerson(tourno);	//*�� ����۸��� ������ �ο�
			//System.out.println("�����ȣ:"+tourno+",�������ο�"+respeople);
			if(respeople==null) respeople="0";
			vo.getTouristvo().setReservation_person(respeople);
			
			List<TouristResVO> rvo=TouristDAO.tourResInfo(tourno);	//3.*����� ������ ����� ���� �ҷ�����
			if(rvo==null){
				//System.out.println("controller�����ڰ� ���׿�");
			}else{
				vo.setTourresvo(rvo);//list�� �߰�
			}
			touristvo2.add(vo);	
		}

		req.setAttribute("guidevo", guidevo2);
		req.setAttribute("touristvo", touristvo2);		
		req.setAttribute("guideResvo", guideResvo);
		
		req.setAttribute("jsp", "mypage/mypage.jsp");
		req.setAttribute("mypage", "mypage/mypage_mywriter.jsp");		
		}catch(Exception e){
			System.out.println("mypage_mywriter:"+e.getMessage());
		}
		return "main.jsp";
	}
	
	@RequestMapping("mypage_mywriter_gDel.do")
	public String mypage_mywriter_gDel(HttpServletRequest request){
		
		String no = request.getParameter("no");		
		System.out.println("���̵�"+no);
		GuideDAO.guideDelete(Integer.parseInt(no));	

		return "mypage/mywrite_deleteOk.jsp";
	}
	
	@RequestMapping("mypage_mywriter_tDel.do")
	public String mypage_mywriter_tDel(HttpServletRequest request){
		
		String no = request.getParameter("no");		
		System.out.println("������"+no);
		TouristDAO.touristDelete(Integer.parseInt(no));	

		return "mypage/mywrite_deleteOk.jsp";
	}
	
	
	@RequestMapping("mypage_reserve_gDel.do")
	public String mypage_reserve_gDel(HttpServletRequest request){
		
		// ���̵�� ���̵� ��ȣ => ���� �����ȣ
		String no = request.getParameter("no"); // ���̵� ��ȣ
		
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("id");
		
		
		Map map = new HashMap();
		map.put("no", no);
		map.put("user_id", user_id);
		
		ReservationDAO.reserveGuideDelete(map);
		
		
		return "mypage/myreserve_deleteOk.jsp";
	}
	
	@RequestMapping("mypage_reserve_tDel.do")
	public String mypage_reserve_tDel(HttpServletRequest request){
		
		// ���̵�� ���̵� ��ȣ => ���� �����ȣ
		String no = request.getParameter("no"); // ������ ��ȣ
		
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("id");
		
		
		Map map = new HashMap();
		map.put("no", no);
		map.put("user_id", user_id);
		
		ReservationDAO.reserveTourDelete(map);
		
		
		return "mypage/myreserve_deleteOk.jsp";
	}
	
	
	
	@RequestMapping("mytourresv.do")
	public String mytourresv(HttpServletRequest req) throws Exception{
		//android,ajax(js)=>UTF-8
		req.setCharacterEncoding("UTF-8");
		String no=req.getParameter("no");		//�����ȣ
		String user_id=req.getParameter("id");		//�г���
		int tour_no=Integer.parseInt(no);
		System.out.println("\nController����: "+tour_no+","+user_id);
		
		Map map=new HashMap();
		map.put("tour_no", tour_no);
		map.put("user_id", user_id);
		
		TouristDAO.mytourOkUpdate(map);
		System.out.println("���οϷ�===");
		
		TouristDAO.mytourNotOkUpdate(map);
		System.out.println("���������ξ��ϱ�Ϸ�===");
		
		req.setAttribute("user_id",user_id);
		req.setAttribute("tour_no", tour_no);
		
		return "mypage/tourRes_ok.jsp";
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
		
		System.out.println("111");
		String path = "\\\\211.238.142.74\\Users\\74\\Git\\P2_SecondProject\\Comma\\src\\main\\webapp\\profile";
		String enctype = "EUC-KR";
		int	size = 1024*1024*100; 
		System.out.println("222");
		MultipartRequest mr 
				= new MultipartRequest(req,path,size,enctype,
						new DefaultFileRenamePolicy());
		System.out.println("3333");
		String nick=mr.getParameter("nick");
		String pwd=mr.getParameter("pwd");
		String email=mr.getParameter("email");
		String birth=mr.getParameter("year")+"/"+mr.getParameter("month")+"/"+mr.getParameter("day");
		String gender=mr.getParameter("demo-priority");
		String tel=mr.getParameter("tel1")+"-"+mr.getParameter("tel2")+"-"+mr.getParameter("tel3");
		String addr=mr.getParameter("addr1")+"-"+mr.getParameter("addr2");
		String introduce=mr.getParameter("introduce");
		String user_img = mr.getOriginalFileName("user_img");
		
		
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		System.out.println(id);
		
		
		/*String nick=req.getParameter("nick");
		String pwd=req.getParameter("pwd");
		String email=req.getParameter("email");
		String birth=req.getParameter("year")+"/"+req.getParameter("month")+"/"+req.getParameter("day");
		String gender=req.getParameter("demo-priority");
		String tel=req.getParameter("tel1")+"-"+req.getParameter("tel2")+"-"+req.getParameter("tel3");
		String addr=req.getParameter("addr1")+"-"+req.getParameter("addr2");
		String introduce=req.getParameter("introduce");
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");*/
		
		UserVO vo=new UserVO();
		vo.setUser_pwd(pwd);
		vo.setUser_id(id);
		vo.setUser_introduce(introduce);
		vo.setUser_nick(nick);
		vo.setUser_mail(email);
		vo.setUser_birth(birth);
		vo.setUser_sex(gender);
		vo.setUser_addr(addr);
		
		if(user_img==null){
			vo.setUser_img("");
		}else{
			File f = new File(path+"\\"+user_img);
			vo.setUser_img(user_img);
		}
		System.out.println(vo.getUser_img());
		UserDAO.infoCorrection(vo);		
		
		return "mypage/infoCorrection_ok.jsp";
	}
	@RequestMapping("idFind.do")
	public String idFind(HttpServletRequest req) throws Exception{
		HttpSession session = req.getSession();
		String user_id = (String)session.getAttribute("id");
		
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
	
	@RequestMapping("reviewWrite.do")
	public String reviewWrite(HttpServletRequest req) throws Exception{
		
		req.setCharacterEncoding("EUC-KR");
		String guide_no=req.getParameter("guide_no");
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		String score= req.getParameter("score");
		String review_text=req.getParameter("review_text");
		ReviewVO vo=new ReviewVO();
		vo.setGuide_no(Integer.parseInt(guide_no));
		vo.setReview_score(Integer.parseInt(score));
		vo.setUser_id(id);		
		vo.setReview_text(review_text);
		
		ReviewDAO.reviewWrite(vo);		
		return "mypage/reviewWrite.jsp";
	}
	

	
	
	
}
