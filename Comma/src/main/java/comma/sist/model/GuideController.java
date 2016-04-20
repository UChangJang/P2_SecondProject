package comma.sist.model;

import javax.servlet.http.HttpServletRequest;

import comma.sist.controller.Controller;
import comma.sist.controller.RequestMapping;

@Controller("gc")
public class GuideController {

	
	@RequestMapping("guide_Insert.do")
	public String guide_Insert(HttpServletRequest request){
		
		System.out.println("111");
		
		return "guide/guide.jsp";
	}
	
}
