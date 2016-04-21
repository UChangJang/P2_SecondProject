package comma.sist.model;

import javax.servlet.http.HttpServletRequest;
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

		GuideDAO.guideInsert(vo);
		
		return "guide/guide.jsp";
	}
	
}
