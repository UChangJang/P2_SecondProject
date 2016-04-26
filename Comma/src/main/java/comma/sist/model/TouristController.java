package comma.sist.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import comma.sist.controller.Controller;
import comma.sist.controller.RequestMapping;
import comma.sist.tourist.dao.TouristDAO;
import comma.sist.tourist.dao.TouristVO;

@Controller("tc")
public class TouristController {
	
	/* tourist.do */
	@RequestMapping("tourist.do")		
	public String tourist(HttpServletRequest req){
		
		/*List<TouristVO> list=TouristDAO.touristAllData();
		for(TouristVO vo:list){
			vo.setText_no(text_no);
			vo.setTour_detail(tour_detail);
			vo.setTour_no(tour_no);
			vo.setTour_theme(tour_theme);
			vo.setUser_id(user_id);
		}
		
		String page=req.getParameter("page");
		if(page==null){
			page="1";
		}
		int curpage=Integer.parseInt(page);
		Map map=new HashMap();
		int rowSize=10;
		int start=(curpage*rowSize)-(rowSize-1);
		int end=curpage*rowSize;
		map.put("start", start);
		map.put("end", end);
		
		
		for(BoardVO vo:list){
			vo.setReplyCount(BoardDAO.replyCount(vo.getNo()));							//´ñ±Û¼ö
			vo.setDbday(new SimpleDateFormat("yyyy-MM-dd").format(vo.getRegdate()));	//¿À´Ã³¯Â¥
		}
		
		int totalpage=BoardDAO.boardTotalPage();
		
		req.setAttribute("today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		req.setAttribute("curpage", curpage);
		req.setAttribute("totalpage", totalpage);
		req.setAttribute("list", list);
		req.setAttribute("jsp", "board/board_list.jsp");//
		
		
		
		
		req.setAttribute("list", "list");	*/
		req.setAttribute("innerList", "touristList.jsp");		
		req.setAttribute("jsp", "tourist/tourist.jsp");			
		
		return "main.jsp";
	}
}
