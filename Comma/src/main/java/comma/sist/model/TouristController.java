package comma.sist.model;

import java.io.UnsupportedEncodingException;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import comma.sist.common.TextVO;
import comma.sist.controller.Controller;
import comma.sist.controller.RequestMapping;
import comma.sist.tourist.dao.TouristDAO;


@Controller("tc")
public class TouristController {

   // 1.tourist�ʱ� ��Ϻ���
   @RequestMapping("tourist.do")      
   public String tourist(HttpServletRequest req){
	   try{
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
      
      List<TextVO> list=TouristDAO.touristFiveData(map);   //1�� 5 �Ѱ���=>5���� touristVO�� �������� ��            
      int totalpage=TouristDAO.boardTotalPage();   //����������=2page
   
      //req.setAttribute("today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
      req.setAttribute("curpage", curpage);
      req.setAttribute("totalpage", totalpage);
      req.setAttribute("list", list);      
      //req.setAttribute("innerList", "touristList.jsp");      
      req.setAttribute("jsp", "tourist/tourist.jsp");         
	   }catch(Exception e){
		   System.out.println(e.getMessage());
	   }
      return "main.jsp";
   }
   
 
   
   //2. ajax���_����,���� ������ ��ư_�˻������ 
   @RequestMapping("tourist_nextPrev.do")      
   public String tourist_nextPrev(HttpServletRequest req){

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
      
      List<TextVO> list=TouristDAO.touristFiveData(map);   //1�� 5 �Ѱ���=>5���� touristVO�� �������� ��            
      int totalpage=TouristDAO.boardTotalPage();   //����������=2page
   
      //req.setAttribute("today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
      req.setAttribute("curpage", curpage);
      req.setAttribute("totalpage", totalpage);
      req.setAttribute("list", list);              
	  
      return "tourist/touristList.jsp";
   }


   //3. ����
   @RequestMapping("tourist_sort.do")
   public String tourist_sort(HttpServletRequest req) throws Exception{
	   	System.out.println("controller����");
		req.setCharacterEncoding("UTF-8");
		String place = req.getParameter("place"); // 1.���=seoul
		String dateTemp = req.getParameter("date"); // 2.��¥=31/03/2016
		String date = TouristDAO.datePicker(dateTemp); // ��¥�� 20160331�� ����
		System.out.println("place:" + place + ",date:" + date);

		String page = req.getParameter("page"); // page=������������..ó���� ������ 1page
		if (page == null) {
			page = "1";
		}
		int curpage = Integer.parseInt(page);
		Map map = new HashMap();
		int rowSize = 5;
		int start = (curpage * rowSize) - (rowSize - 1);
		int end = curpage * rowSize;
		map.put("start", start);
		map.put("end", end);
		map.put("place", place);
		map.put("date", date);

		String type = req.getParameter("type"); // 3.����Ÿ��="cost"/"newest"
		System.out.println("����Ÿ��:"+type );

		List<TextVO> list = TouristDAO.tourist_sort(map, type); 
		System.out.println(2);
      
      int totalpage=TouristDAO.searchTotalPage(map);   //����������=2page
            System.out.println(3);      
      //req.setAttribute("today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
      req.setAttribute("curpage", curpage);
      req.setAttribute("totalpage", totalpage);
      req.setAttribute("list", list);         
      return "tourist/touristList.jsp";
   }
   
   /* 3.�˻�*/
   @RequestMapping("tourist_search.do")
   public String tourist_search(HttpServletRequest req){
	  try{
	   req.setCharacterEncoding("UTF-8");
      String place=req.getParameter("place");			//1.���=seoul
      String dateTemp=req.getParameter("date");			//2.��¥=31/03/2016
      String date=TouristDAO.datePicker(dateTemp);					//��¥�� 20160331�� ����
      System.out.println("place:"+place+",date:"+date);
      
      String page=req.getParameter("page");      //3.�˻��� ������ 1page(���������� ������ ���� ����� �ͼ� �ذ�)
      if(page==null){
         page="1";
      }
      
      int curpage=Integer.parseInt(page);
      System.out.println("hihi");
      Map map=new HashMap();					//5�� �����͸� �ѹ��� ������
      int rowSize=5;
      int start=(curpage*rowSize)-(rowSize-1);
      System.out.println("hihi2");
      int end=curpage*rowSize;
      map.put("start", start);
      map.put("end", end);
      map.put("place",place );
      map.put("date", date);
      
      List<TextVO> list=TouristDAO.tourist_search(map);   //5���� ������,seoul,20160331   
            System.out.println("tourist_search1");
      
      int totalpage=TouristDAO.searchTotalPage(map);   //�˻� �� _�� ������ ��
            System.out.println("tourist_search2");      
      req.setAttribute("curpage", curpage);
      req.setAttribute("totalpage", totalpage);
      req.setAttribute("list", list);
	  }catch(Exception e){
		  System.out.println("tourist:"+e.getMessage());
	  }
      
      return "tourist/touristList.jsp";
   }
   
   
   
   
   @RequestMapping("touristWrite_Ok.do")
   public String tourist_Insert(HttpServletRequest req) throws Exception{
      
	  req.setCharacterEncoding("UTF-8");
	   
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
      
      int t_start = Integer.parseInt(text_time1);
	  int t_end = Integer.parseInt(text_time3);
	  int text_time = 0;
		
	  if((text_time2.equals("am") && text_time4.equals("am")) || (text_time2.equals("pm") && text_time4.equals("pm"))){
		  text_time = (int)(Math.abs(t_end-t_start));
	  }else if((text_time2.equals("am") && text_time4.equals("pm"))){
		  t_end += 12;
		  text_time = t_end - t_start;
	  }else if((text_time2.equals("pm") && text_time4.equals("am"))){
		  t_start -= 12;
		  text_time = t_end - t_start;
	  }
     
      TextVO tvo = new TextVO();
      tvo.getTouristvo().setTour_theme(tour_theme);
      tvo.getTouristvo().setTour_detail(tour_detail);   
      tvo.setText_loc(text_loc);
      tvo.setText_cost(text_cost);
      tvo.setText_total_person(Integer.parseInt(text_total_person));
      tvo.setText_time1(text_time1);
      tvo.setText_time2(text_time3);
      tvo.setText_move(text_move);
      tvo.setText_tour_date(text_tour_date);
      tvo.setText_time(text_time);
      
      HttpSession session = req.getSession();
      String user_id = (String)session.getAttribute("id");
      tvo.getTouristvo().setUser_id(user_id);
      
      TouristDAO.textInsert(tvo);
      TouristDAO.touristWrite(tvo);
      System.out.println("tourInsert");

      return "tourist/touristWriteOk.jsp";

   }



}