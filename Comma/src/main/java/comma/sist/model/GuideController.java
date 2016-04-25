package comma.sist.model;

import javax.servlet.http.HttpServletRequest;

import comma.sist.controller.Controller;
import comma.sist.controller.RequestMapping;
import comma.sist.guide.dao.*;
import java.util.*;

@Controller("gc")
public class GuideController {

	
	@RequestMapping("guide_Insert.do")
	public String guide_Insert(HttpServletRequest request) throws Exception{
		
		request.setCharacterEncoding("EUC-KR");
		
		String guide_subject = request.getParameter("guide_subject");
		String guide_loc_intro = request.getParameter("guide_loc_intro");
		
		
		
		
		GuideVO vo = new GuideVO();
		vo.setGuide_subject(guide_subject);
		vo.setGuide_loc_intro(guide_loc_intro);
		
		
		
		
		GuideDAO.guideInsert(vo);
		request.setAttribute("jsp", "guide/guide.jsp");
		return "main.jsp";
	}
	
}
