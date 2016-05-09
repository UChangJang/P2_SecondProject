package comma.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import comma.sist.common.TextVO;
import comma.sist.controller.*;
import comma.sist.guide.dao.GuideDAO;
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
		for(int i=0;i<slist.size();i++){
			String search_loc=slist.get(i).getSearch_loc();

			hlist=HotspotDAO.allGiudeBoard(search_loc);

		}

		req.setAttribute("bestGuide", bestGuide);
		req.setAttribute("slist", slist);						// hotspot 저장
		req.setAttribute("hlist", hlist);
		req.setAttribute("wlist", wlist);
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
	
	//main_quick_search 검색
	@RequestMapping("quick_search.do")
	public String quick_search(HttpServletRequest req){	
		
		String quick_date = req.getParameter("quick_date");
		String quick_place = req.getParameter("quick_place");
		String quick_people = req.getParameter("quick_people");
		String quick_method = req.getParameter("quick_method");
		
		req.setAttribute("innerjsp", "guideList.jsp");
		req.setAttribute("jsp", "guide/guide.jsp");
		
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
