package comma.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.xml.soap.Text;

import comma.sist.common.TextVO;
import comma.sist.controller.*;
import comma.sist.guide.dao.GuideDAO;
import comma.sist.guide_find.GuideFindDAO;
import comma.sist.guide_find.GuideFindVO;
import comma.sist.hotspot.HotspotDAO;
import comma.sist.hotspot.HotspotVO;
import comma.sist.hotspot.SearchVO;
import comma.sist.tourist.dao.TouristDAO;
import comma.sist.user.dao.UserDAO;
import java.io.UnsupportedEncodingException;
import java.util.*;
import comma.sist.user.dao.*;
import comma.sist.weather.*;

@Controller("IC")
public class IntroController {
	
	@RequestMapping("main.do")
	public String mainStart(HttpServletRequest req){
		
		WeatherManager wm=new WeatherManager();
		List<WeatherDTO> wlist=wm.weatherAllData();
		List<TextVO> bestGuide=GuideDAO.bestGuide();
		
		
		List<SearchVO> slist= HotspotDAO.searchLocFind();		// hotspot
		List<HotspotVO> hlist=new ArrayList<HotspotVO>();

		List<GuideFindVO> flist=GuideFindDAO.guideFind();
		
		for(int i=0;i<slist.size();i++){
			String search_loc=slist.get(i).getSearch_loc();

			hlist=HotspotDAO.allGiudeBoard(search_loc);
		}

		req.setAttribute("bestGuide", bestGuide);
		req.setAttribute("slist", slist);						// hotspot ÀúÀå
		req.setAttribute("hlist", hlist);
		req.setAttribute("wlist", wlist);
		req.setAttribute("flist", flist);
		
		req.setAttribute("jsp", "section.jsp");
		return "main.jsp";
	}
	
	@RequestMapping("introduceSite.do")
	public String introduceSite(HttpServletRequest request){
		request.setAttribute("jsp", "intro/introduceSite.jsp");		
		return "main.jsp";
	}
	@RequestMapping("introduceKor.do")
	public String introduceKor(HttpServletRequest request){
		request.setAttribute("jsp", "intro/introduceKor.jsp");		
		return "main.jsp";
	}
	

	@RequestMapping("mypage.do")
	public String mypage(HttpServletRequest request){	
		HttpSession session = request.getSession();
		String id = (String)session.getAttribute("id");
		String user_img=UserDAO.userProfileImage(id);
		request.setAttribute("user_img",user_img);
		request.setAttribute("jsp", "mypage/mypage.jsp");
		return "main.jsp";
	}
	
	
	@RequestMapping("locHotSpot.do")
	public String hotspot(HttpServletRequest req){
		String loc=req.getParameter("loc");
		List<HotspotVO> list =HotspotDAO.allGiudeBoard(loc);
		req.setAttribute("list", list);
		
		return "best_spot.jsp";
	}

}
