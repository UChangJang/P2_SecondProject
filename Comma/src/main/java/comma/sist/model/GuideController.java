package comma.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import comma.sist.controller.Controller;
import comma.sist.controller.RequestMapping;
import comma.sist.guide.dao.*;
import java.util.*;
import java.io.*;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.*;

@Controller("gc")
public class GuideController {

	
	@RequestMapping("guide_Insert.do")
	public String guide_Insert(HttpServletRequest request) throws Exception{
		
		request.setCharacterEncoding("EUC-KR");
		
		int size = 1024*1024*100;
		String path = "\\211.238.142.74\\images";
		String enctype = "EUC-KR";
		MultipartRequest mr = new MultipartRequest(request,path,size,enctype,
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
		String text_time1 = mr.getParameter("text_time1");
		String text_time2 = mr.getParameter("text_time2");
		String guide_meet = mr.getParameter("guide_meet");
		String text_tour_date = mr.getParameter("text_tour_date");
		
		GuideVO vo = new GuideVO();
		if(guide_img==null){
			vo.setGuide_img(guide_img);
			vo.setFilesize(0);
		}else{
			File f = new File(path+"\\"+guide_img);
			vo.setGuide_img(guide_img);
			vo.setFilesize((int)f.length());
		}
		
		vo.setGuide_subject(guide_subject);
		vo.setGuide_loc_intro(guide_loc_intro);
		vo.setGuide_img(guide_img);
		vo.setGuide_detail(guide_detail);
		vo.setGuide_cost_detail(guide_cost_detail);
		vo.setGuide_meet(guide_meet);
		vo.getTextVO().setText_loc(text_loc);
		vo.getTextVO().setText_total_person(Integer.parseInt(text_total_person));
		vo.getTextVO().setText_cost(text_cost);
		vo.getTextVO().setText_move(text_move);
		vo.getTextVO().setText_time1(text_time1);
		vo.getTextVO().setText_time2(text_time2);
		vo.getTextVO().setText_tour_date(text_tour_date);
		
		
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("id");
		vo.setUser_id(user_id);
		
		vo.setGuide_map("temp"); // ¹Ù²ã¾ßµÊ
		

		System.out.println("111");
		GuideDAO.guideInsert(vo);
		System.out.println("222");
		int text_no = GuideDAO.textCheckNo();
		vo.getTextVO().setText_no(text_no);
		System.out.println("333");
		GuideDAO.guideInsert2(vo);
		System.out.println("444");
		
		return "guide/guide.jsp";
		
	}
	
	
	
	
	
	
}
