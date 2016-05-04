package comma.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import comma.sist.controller.Controller;
import comma.sist.controller.RequestMapping;
import comma.sist.guide.dao.*;

import comma.sist.reservation.dao.ReservationDAO;
import comma.sist.reservation.dao.ReservationVO;

import comma.sist.wish.dao.WishDAO;
import comma.sist.wish.dao.WishVO;
import comma.sist.common.*;
import java.util.*;
import java.io.*;

@Controller("gc")
public class GuideController {

	
	@RequestMapping("guide.do")
	public String guide(HttpServletRequest request){
				
		// 가이드 총페이지
		int totalpage = GuideDAO.guideTotalPage();
		
		// 현재 페이지
		String page = request.getParameter("page");
		if(page==null) page = "1";
		int curpage = Integer.parseInt(page);
		
		Map map = new HashMap();
		int rowSize = 9;
		int start = (rowSize*curpage) - (rowSize-1);
		int end = rowSize*curpage;
		map.put("start", start);
		map.put("end", end);
		

		List<TextVO> list = GuideDAO.guideAllData(map);
		
		// 여러개의 사진인 경우
		List<String> imgList = new ArrayList<String>();
		for(TextVO vo:list){
			if(vo.getGuidevo().getGuide_img()!=null){
				StringTokenizer st = new StringTokenizer(vo.getGuidevo().getGuide_img(), "|");
				String ss = st.nextToken();
				int k=0;
				while(st.hasMoreTokens()){
					if(k==0) {
						imgList.add(ss);
						k++;
					}
					else{
						imgList.add(st.nextToken());
					}
				}
				if(imgList.size()>1){
					vo.getGuidevo().setGuide_img(ss);
				}
			}
		}
		
		
		request.setAttribute("curpage", page);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("list", list);
		request.setAttribute("jsp", "guide/guide.jsp");
		//request.setAttribute("mypage", "guide/guideList.jsp");
		return "main.jsp";
	}
	
	
	@RequestMapping("guide_p.do")
	public String guide_p(HttpServletRequest request){
				
		// 가이드 총페이지
		int totalpage = GuideDAO.guideTotalPage();
		
		// 현재 페이지
		String page = request.getParameter("page");
		if(page==null) page = "1";
		int curpage = Integer.parseInt(page);
		
		Map map = new HashMap();
		int rowSize = 9;
		int start = (rowSize*curpage) - (rowSize-1);
		int end = rowSize*curpage;
		map.put("start", start);
		map.put("end", end);
		
		
		List<TextVO> list = GuideDAO.guideAllData(map);
		
		
		
		request.setAttribute("curpage", page);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("list", list);
		request.setAttribute("jsp", "guide/guideList.jsp");
		//request.setAttribute("mypage", "guide/guideList.jsp");
		return "main.jsp";
	}
	
	
	
	@RequestMapping("guideWrite.do")
	public String guideWrite(HttpServletRequest request){
		request.setAttribute("jsp", "guide/guideWrite.jsp");		
		return "main.jsp";
	}
		
	@RequestMapping("guideWrite_ok.do")
	public String guide_Insert(HttpServletRequest request) throws Exception{
		
		request.setCharacterEncoding("EUC-KR");	
		
		// \\211.238.142.74\Users\74\Git\P2_SecondProject\Comma\src\main\webapp\image
		// http://211.238.142.74:8080/controller/image/seoul3.jpg  이미지 파일 읽어올때
		// C:\springDev\springStudy\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Comma\image
		//String path = "\\\\211.238.142.74\\springDev\\springStudy\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Comma\\image";
		String path = "\\\\211.238.142.74\\Users\\74\\Git\\P2_SecondProject\\Comma\\src\\main\\webapp\\image";
		String enctype = "EUC-KR";
		int	size = 1024*1024*100; 
		
		MultipartRequest mr 
				= new MultipartRequest(request,path,size,enctype,
						new DefaultFileRenamePolicy());
		
		
		String guide_subject = mr.getParameter("guide_subject");
		String guide_loc_intro = mr.getParameter("guide_loc_intro");
		String guide_img = mr.getOriginalFileName("guide_img");
		String guide_detail = mr.getParameter("guide_detail");
		String text_loc = mr.getParameter("text_loc");
		String text_total_person = mr.getParameter("text_total_person");
		String text_cost = mr.getParameter("text_cost");
		String guide_cost_detail = mr.getParameter("guide_cost_detail");
		String text_move = mr.getParameter("text_move");
		String text_time1 = mr.getParameter("text_time1"); // 시작 시간
		String text_time2 = mr.getParameter("text_time2"); // am/pm
		String text_time3 = mr.getParameter("text_time3"); // 끝 시간
		String text_time4 = mr.getParameter("text_time4"); // am/pm
		String guide_meet = mr.getParameter("guide_meet");	
		String text_tour_date = mr.getParameter("text_tour_date");
		
		String guide_img2 = mr.getOriginalFileName("guide_img2");
		String guide_detail2 = mr.getParameter("guide_detail2");
		String guide_img3 = mr.getOriginalFileName("guide_img3");
		String guide_detail3 = mr.getParameter("guide_detail3");
		
		
		
		if(guide_img2!=null && guide_img3==null){
			guide_img = guide_img + "|" + guide_img2;		
		}else if(guide_img2!=null && guide_img3!=null){
			guide_img = guide_img + "|" + guide_img2 + "|" + guide_img3;	
		}
		
		
		int t_start = Integer.parseInt(text_time1);
		int t_end = Integer.parseInt(text_time3);
		int text_time = 0;
		
		if((text_time2.equals("am") && text_time4.equals("am")) || (text_time2.equals("pm") && text_time4.equals("pm"))){
			text_time = (int)(Math.abs(t_end-t_start));
		}else if((text_time2.equals("am") && text_time4.equals("pm"))){
			t_end += 12;
			text_time = t_end - t_start;
		}else if((text_time2.equals("pm") && text_time4.equals("am"))){
			t_start -= 12;
			text_time = t_end - t_start;
		}
		
		TextVO vo = new TextVO();
		vo.getGuidevo().setGuide_subject(guide_subject);
		vo.getGuidevo().setGuide_loc_intro(guide_loc_intro);
		vo.getGuidevo().setGuide_detail(guide_detail);
		vo.getGuidevo().setGuide_cost_detail(guide_cost_detail);
		vo.getGuidevo().setGuide_meet(guide_meet);
		vo.setText_loc(text_loc);
		vo.setText_total_person(Integer.parseInt(text_total_person));
		vo.setText_cost(text_cost);
		vo.setText_move(text_move);
		vo.setText_time1(text_time1);
		vo.setText_time2(text_time2);
		vo.setText_time3(text_time3);
		vo.setText_time4(text_time4);
		vo.setText_tour_date(text_tour_date);
		vo.setText_time(text_time);
		
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("id");
		vo.getGuidevo().setUser_id(user_id);
		
		vo.getGuidevo().setGuide_map("임시용"); // 바꿔야됨
		
		if(guide_img==null){
			vo.getGuidevo().setGuide_img("");
		}else{
			
			/*String s = f.getAbsolutePath();
			System.out.println(s);
			request.setAttribute("imgPath", s);*/
			
			File f = new File(path+"\\"+guide_img);
			vo.getGuidevo().setGuide_img(guide_img);
			
			
			
			
			// 똑같은 사진 올릴 경우
			/*int count = GuideDAO.guideImgisExist(guide_img);
			System.out.println(count);
			if(count==0){
				File f = new File(path+"\\"+guide_img);
				vo.getGuidevo().setGuide_img(guide_img);
			}else{
				String s = "";
				s = guide_img.substring(0, guide_img.lastIndexOf('.'))+count+guide_img.substring(guide_img.lastIndexOf('.'));
				guide_img = s;
				
				
				File f = new File(path+"\\"+guide_img);
				
				vo.getGuidevo().setGuide_img(guide_img);
			}*/
			
			
		}
		
		
		
		GuideDAO.textInsert(vo);
		GuideDAO.guideInsert(vo);
		
		return "guide/guideWriteOk.jsp";
	}
	
	
	@RequestMapping("guideBoard.do")
	public String guideBoard(HttpServletRequest request){
		
		String no = request.getParameter("no");	// 가이드 글 번호 (guide_no)
		TextVO vo = GuideDAO.guideInfoData(Integer.parseInt(no));
		
		GuideDAO.guideHitIncrease(vo.getText_no()); // 조회수 증가
		int text_hit = GuideDAO.guideHitInfo(vo.getText_no());
		vo.setText_hit(text_hit);
		
		
		// Img 분리
		List<String> imgList = new ArrayList<String>();
		if(vo.getGuidevo().getGuide_img()!=null){
			StringTokenizer st = new StringTokenizer(vo.getGuidevo().getGuide_img(), "|");
			while(st.hasMoreTokens()){
				imgList.add(st.nextToken());
				
			}
		}
		
		// 현재 로그인된 ID 와 글의 ID를 비교한다.
		HttpSession session = request.getSession();
		boolean confirmId = false;
		
		if(vo.getUservo().getUser_id().equals((String)session.getAttribute("id"))){
			confirmId = true;
		}
		
		request.setAttribute("imgList", imgList);
		request.setAttribute("confirmId", confirmId);
		request.setAttribute("vo", vo);
		request.setAttribute("jsp", "guide/guideBoard.jsp");		

		return "main.jsp";
	}
	
	@RequestMapping("guideUpdate.do")
	public String guideUpdate(HttpServletRequest request){
		
		String no = request.getParameter("no");		
		TextVO vo = GuideDAO.guideInfoData(Integer.parseInt(no));
		
		
		request.setAttribute("vo", vo);
		request.setAttribute("jsp", "guide/guideUpdate.jsp");		

		return "main.jsp";
	}

	
	@RequestMapping("guideDelete.do")
	public String guideDelete(HttpServletRequest request){
		
		String no = request.getParameter("no");		
		System.out.println("가이드"+no);
		GuideDAO.guideDelete(Integer.parseInt(no));	

		return "guide/guideDelete.jsp";
	}

	
	@RequestMapping("reserveGuide.do")
	public String reserveGuide(HttpServletRequest req) throws Exception{
		
		req.setCharacterEncoding("EUC-KR");
		HttpSession session = req.getSession();
		
		String guide_no = req.getParameter("guide_no");
		String user_id = (String)session.getAttribute("id");
		String reservation_person = req.getParameter("reservation_person");
		
		ReservationVO vo = new ReservationVO();
		vo.setGuide_no(Integer.parseInt(guide_no));
		vo.setUser_id(user_id);
		vo.setReservation_person(Integer.parseInt(reservation_person));
		
		ReservationDAO.reserveGuide(vo);
		
		
		req.setAttribute("jsp", "mypage/mypage.jsp");
		
		return "main.jsp";
	}
	@RequestMapping("wishGuide.do")
	public String wish_ok(HttpServletRequest request){
    
	      String guide_no = request.getParameter("guide_no");
	      
	      WishVO vo = new WishVO();
	      vo.setGuide_no(Integer.parseInt(guide_no));
	      
	      HttpSession session = request.getSession();
	      String user_id = (String)session.getAttribute("id");
	      vo.setUser_id(user_id);
     
	      WishDAO.guideWishOk(vo);
	      request.setAttribute("guide_no", guide_no);
	      
	      return "guide/guideWishOk.jsp";
	}

}
