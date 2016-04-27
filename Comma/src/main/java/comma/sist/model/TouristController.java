package comma.sist.model;

import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import comma.sist.common.TextVO;
import comma.sist.controller.Controller;
import comma.sist.controller.RequestMapping;
import comma.sist.tourist.dao.TouristDAO;
import comma.sist.tourist.dao.TouristVO;

@Controller("tc")
public class TouristController {
	
	/* tourist.do */
	@RequestMapping("tourist.do")		
	public String tourist(HttpServletRequest req){
		String page=req.getParameter("page");
		if(page==null){
			page="1";
		}
		int curpage=Integer.parseInt(page);
		Map map=new HashMap();
		int rowSize=5;
		int start=(curpage*rowSize)-(rowSize-1);
		int end=curpage*rowSize;
		map.put("start", start);
		map.put("end", end);
		System.out.println(1);
		
		List<TextVO> list=TouristDAO.touristFiveData(map);	//1과 5 넘겨줌=>5개의 touristVO만 가져오게 됨		
		System.out.println(2);
		
		//int totalpage=TouristDAO.boardTotalPage();	//총페이지수
		//System.out.println(3);
		
		//req.setAttribute("today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
		//req.setAttribute("curpage", curpage);
		//req.setAttribute("totalpage", totalpage);
		req.setAttribute("list", list);
		
		req.setAttribute("innerList", "touristList.jsp");		
		req.setAttribute("jsp", "tourist/tourist.jsp");			
		
		return "main.jsp";
	}
}
