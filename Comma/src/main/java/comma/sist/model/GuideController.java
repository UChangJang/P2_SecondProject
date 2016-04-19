package comma.sist.model;

import javax.servlet.http.HttpServletRequest;

import comma.sist.controller.Controller;
import comma.sist.controller.RequestMapping;

@Controller("gc")
public class GuideController {

	
	@RequestMapping("guide_Insert")
	public String guide_Insert(HttpServletRequest request){
		
		
		return "";
	}
	
}
