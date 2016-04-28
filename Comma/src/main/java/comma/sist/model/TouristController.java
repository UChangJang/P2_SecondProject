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
      

      List<TouristVO> list=TouristDAO.touristFiveData(map);   //1�� 5 �Ѱ���=>5���� touristVO�� �������� ��      
      int totalpage=TouristDAO.boardTotalPage();   //����������
      
      //req.setAttribute("today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
      //req.setAttribute("curpage", curpage);
      //req.setAttribute("totalpage", totalpage);
      req.setAttribute("list", list);
      
      req.setAttribute("innerList", "touristList.jsp");      
      req.setAttribute("jsp", "tourist/tourist.jsp");         
      
      return "main.jsp";
   }
   
   
   
   @RequestMapping("touristWrite_Ok.do")
   public String tourist_Insert(HttpServletRequest req){
	   System.out.println("??");
	   String tour_theme = req.getParameter("tour_theme");
	   String tour_detail = req.getParameter("tour_detail");	   
	   String text_loc = req.getParameter("text_loc");
	   String text_cost = req.getParameter("text_cost");
	   String text_total_person = req.getParameter("text_total_person");
	   String text_time1 = req.getParameter("text_time1");
	   String text_time2 = req.getParameter("text_time2");
	   String text_time3 = req.getParameter("text_time3");
	   String text_time4 = req.getParameter("text_time4");
	   String text_move = req.getParameter("text_move");
	   String text_tour_date = req.getParameter("text_tour_date");

	   System.out.println("??");
	   TextVO tvo = new TextVO();
	   tvo.getTouristvo().setTour_theme(tour_theme);
	   tvo.getTouristvo().setTour_detail(tour_detail);   
	   tvo.setText_loc(text_loc);
	   tvo.setText_cost(text_cost);
	   tvo.setText_total_person(Integer.parseInt(text_total_person));
	   tvo.setText_time1(text_time1);
	   tvo.setText_time2(text_time2);
	   tvo.setText_move(text_move);
	   tvo.setText_tour_date(text_tour_date);

	   HttpSession session = req.getSession();
	   String user_id = (String)session.getAttribute("id");
	   tvo.getTouristvo().setUser_id(user_id);
	   System.out.println("??");
	   TouristDAO.textInsert(tvo);
	   TouristDAO.touristWrite(tvo);
	   System.out.println("tourInsert");
	   
	   return "tourist/touristWriteOk.jsp";

   }

   
}