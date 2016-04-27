package comma.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import comma.sist.controller.Controller;
import comma.sist.controller.RequestMapping;
import comma.sist.guide.dao.*;
import comma.sist.common.*;
import java.util.*;
import java.io.*;

@Controller("gc")
public class GuideController {

	
	@RequestMapping("guide.do")
	public String guide(HttpServletRequest request){
		
		List<TextVO> list = GuideDAO.guideAllData();
		
		
		int totalpage = GuideDAO.guideTotalPage();
		System.out.println("가이드 총 페이지: "+totalpage);
		
		
		int rowSize = 9;
		
		
		
		
		request.setAttribute("list", list);
		request.setAttribute("jsp", "guide/guide.jsp");		
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
		
		// \\211.238.142.74\images
		String path = "\\\\211.238.142.74\\images";
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

		/*System.out.println(text_loc);
		System.out.println(text_total_person);
		System.out.println(text_move);
		System.out.println(text_time1);
		System.out.println(text_time2);
		System.out.println(text_time3);
		System.out.println(text_time4);
		System.out.println(guide_meet);
		System.out.println(text_tour_date);
		System.out.println(guide_subject);
		System.out.println(guide_loc_intro);
		System.out.println(guide_detail);
		System.out.println(text_cost);
		System.out.println(guide_cost_detail);
		System.out.println(guide_img);*/

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
		vo.setText_time2(text_time3);
		vo.setText_tour_date(text_tour_date);
		
		
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("id");
		vo.getGuidevo().setUser_id(user_id);
		System.out.println(user_id);
		vo.getGuidevo().setGuide_map("임시용"); // 바꿔야됨
		
		if(guide_img==null){
			vo.getGuidevo().setGuide_img("");
		}else{
			File f = new File(path+"\\"+guide_img);
			vo.getGuidevo().setGuide_img(guide_img);
		}
		
		System.out.println("111");
		GuideDAO.textInsert(vo);
		System.out.println("222");
		GuideDAO.guideInsert(vo);
		System.out.println("333");

		return "guide/guideWriteOk.jsp";
	}
	

	
	@RequestMapping("guideBoard.do")
	public String guideBoard(HttpServletRequest request){
		request.setAttribute("jsp", "guide/guideBoard.jsp");		

		return "main.jsp";
	}
	
}
