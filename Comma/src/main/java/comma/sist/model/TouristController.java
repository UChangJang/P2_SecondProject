package comma.sist.model;

import java.io.UnsupportedEncodingException;
import java.util.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import comma.sist.common.TextVO;
import comma.sist.controller.Controller;
import comma.sist.controller.RequestMapping;
import comma.sist.reservation.dao.ReservationVO;
import comma.sist.tourist.dao.TouristDAO;
import comma.sist.wish.dao.WishVO;


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
      
      List<TextVO> list=TouristDAO.touristFiveData(map);   //1�� 5 �Ѱ���=>5���� touristVO�� �������� ��            
      int totalpage=TouristDAO.boardTotalPage();   //����������=2page
   
      int mapSeoul=TouristDAO.tourMap("SEOUL");
      int mapJeju=TouristDAO.tourMap("JEJU");
      int mapBusan=TouristDAO.tourMap("BUSAN");
      int mapChuncheon=TouristDAO.tourMap("CHUNCHEON");
      int mapIncheon=TouristDAO.tourMap("INCHEON");
      int mapBoryeong=TouristDAO.tourMap("BORYEONG");
      int mapJeonju=TouristDAO.tourMap("JEONSU");
      int mapGyeongJu=TouristDAO.tourMap("GYEONGJU");
      int mapYeosu=TouristDAO.tourMap("YEOSU");
      
      //req.setAttribute("today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
      req.setAttribute("mapSeoul", mapSeoul); 
      req.setAttribute("mapJeju", mapJeju); 
      req.setAttribute("mapBusan", mapBusan); 
      req.setAttribute("mapChuncheon", mapChuncheon); 
      req.setAttribute("mapIncheon", mapIncheon); 
      req.setAttribute("mapBoryeong", mapBoryeong); 
      req.setAttribute("mapJeonju", mapJeonju); 
      req.setAttribute("mapGyeongJu", mapGyeongJu);
      req.setAttribute("mapYeosu", mapYeosu);
      
      req.setAttribute("curpage", curpage);
      req.setAttribute("totalpage", totalpage);
      req.setAttribute("list", list); 
      req.setAttribute("innerjsp", "touristList.jsp"); 
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
      int curpage=Integer.parseInt(page);	//4page
      Map map=new HashMap();
      int rowSize=5;
      int start=(curpage*rowSize)-(rowSize-1);	//16
      int end=curpage*rowSize;					//20
      map.put("start", start);
      map.put("end", end);
      
      List<TextVO> list=TouristDAO.touristFiveData(map);   //1�� 5 �Ѱ���=>5���� touristVO�� �������� ��
      int totalpage=TouristDAO.boardTotalPage();   //����������=5page
   
      //req.setAttribute("today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
      req.setAttribute("curpage", curpage);
      req.setAttribute("totalpage", totalpage);
      req.setAttribute("list", list);                    
      
      return "tourist/touristList.jsp";
   }


   //3. ����
   @RequestMapping("tourist_sort.do")
   public String tourist_sort(HttpServletRequest req) throws Exception{
		String place = req.getParameter("place"); // 1.���=seoul
		String date = req.getParameter("date"); // 2.��¥=03/31/2016
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
		System.out.println("����Ÿ��:"+type+","+"start:"+start+","+"end:"+end+","+"place:"+place+","+"date:"+date );

		List<TextVO> list = TouristDAO.tourist_sort(map, type); 
		
      
      int totalpage=TouristDAO.searchTotalPage(map);   //����������=2page  
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
      String date=req.getParameter("date");			//2.��¥=03/31/2016
      System.out.println("place:"+place+",date:"+date);
      
      String page=req.getParameter("page");      //3.�˻��� ������ 1page(���������� ������ ���� ����� �ͼ� �ذ�)
      if(page==null){
         page="1";
      }
      
      int curpage=Integer.parseInt(page);
      
      Map map=new HashMap();					//5�� �����͸� �ѹ��� ������
      int rowSize=5;
      int start=(curpage*rowSize)-(rowSize-1);
      
      int end=curpage*rowSize;
      map.put("start", start);
      map.put("end", end);
      map.put("place",place );
      map.put("date", date);
      
      List<TextVO> list=TouristDAO.tourist_search(map);   //5���� ������,seoul,20160331   
            
      
      int totalpage=TouristDAO.searchTotalPage(map);   //�˻� �� _�� ������ ��
                
      req.setAttribute("curpage", curpage);
      req.setAttribute("totalpage", totalpage);
      req.setAttribute("list", list);
	  }catch(Exception e){
		  System.out.println("tourist:"+e.getMessage());
	  }
      
      return "tourist/touristList.jsp";
   }
   
   
   /* 4.���ø���Ʈ �߰� */
   @RequestMapping("wishCheck.do")
   public String wishCheck(HttpServletRequest req){
	  //"tour_no="+no+"&id="+"${sessionScope.id}";
	  String tour_no=req.getParameter("tour_no");		//1.�����ȣ����
      String user_id=req.getParameter("id");			//2.�����id����
      System.out.println("tour:"+tour_no+",id:"+user_id);
      //wish�� : user_id, tour_no
      
      Map map=new HashMap();		
      map.put("tour_no", tour_no);
      map.put("user_id", user_id);
      
      
      int count=TouristDAO.wishSearch(map);		//����=1 ,����x=0
    
      String result="";
      
      if(count==0){				//����x
    	  WishVO vo=new WishVO();
    	  vo.setUser_id(user_id);
    	  vo.setTour_no(Integer.parseInt(tour_no));
    	  
    	  System.out.println(vo.getUser_id()+",�����ȣ:"+vo.getTour_no()+",���̵��ȣ:"+vo.getGuide_no());
    	  TouristDAO.wishInsert(vo);
    	 
    	  result="0";
      }else if(count==1){		//����o
    	  
    	  result="1";
      }
      
      req.setAttribute("result", result);
      return "tourist/wishOk.jsp";
   }
	   
   
   /* 5.�����ϱ� */
   @RequestMapping("resTourCheck.do")
   public String resTourCheck(HttpServletRequest req){
	  //"tour_no="+no+"&id="+"${sessionScope.id}";
	  String tour_no=req.getParameter("tour_no");		//1.�����ȣ����
      String user_id=req.getParameter("id");			//2.�����id����
      System.out.println("tour:"+tour_no+",id:"+user_id);
      //wish�� : reservation_no, user_id, tour_no
      
      Map map=new HashMap();		
      map.put("tour_no", tour_no);
      map.put("user_id", user_id);
      
      int count=TouristDAO.resSearch(map);		//����=1 ,����x=0
     
      String result="";
      
      if(count==0){				//����x
    	  System.out.println("�����ȣ:"+map.get("tour_no")+",���̵��ȣ:"+map.get("user_id"));
    	  TouristDAO.resInsert(map);
    	  
    	  result="0";
      }else if(count==1){		//����o
    	  
    	  result="1";
      }
      
      req.setAttribute("result", result);
      return "tourist/resOk.jsp";
   }
   
   @RequestMapping("touristWrite.do")
	public String touristWrite(HttpServletRequest request){
		request.setAttribute("jsp", "tourist/touristWrite.jsp");		
		return "main.jsp";
	}
   
   /* 6.������ �۾��� */
   @RequestMapping("touristWrite_Ok.do")
   public String tourist_Insert(HttpServletRequest req) throws Exception{
      
	  req.setCharacterEncoding("UTF-8");
	   
      String tour_theme = req.getParameter("tour_theme");
      String text_loc = req.getParameter("text_loc");
      String text_tour_date = req.getParameter("text_tour_date");
      String text_cost = req.getParameter("text_cost");
      String text_total_person = req.getParameter("text_total_person");
      String text_time1 = req.getParameter("text_time1");		//����
      String text_time2 = req.getParameter("text_time2");		//am,pm
      String text_time3 = req.getParameter("text_time3");		//����
      String text_time4 = req.getParameter("text_time4");		//am,pm
      String text_move = req.getParameter("text_move");
      String tour_detail = req.getParameter("tour_detail");  
      
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
     
	  System.out.println(tour_theme+","+text_loc+","+text_tour_date+","+text_cost+","
			  	+text_total_person+","+text_time1+","+text_time3+","+text_move+","+tour_detail+","+text_time);
      TextVO tvo = new TextVO();
      
      tvo.getTouristvo().setTour_theme(tour_theme);
      
      tvo.setText_loc(text_loc);
      tvo.setText_tour_date(text_tour_date);
      tvo.setText_cost(text_cost);
      tvo.setText_total_person(Integer.parseInt(text_total_person));
      tvo.setText_time1(text_time1);		//�ð�
      tvo.setText_time2(text_time2);		//�ð�
      tvo.setText_time3(text_time3);		//�ð�
      tvo.setText_time4(text_time4);		//�ð�
      tvo.setText_move(text_move);     
      tvo.setText_time(text_time);			//�� �ð�
      tvo.getTouristvo().setTour_detail(tour_detail);   
      
      HttpSession session = req.getSession();
      String user_id = (String)session.getAttribute("id");	//id
      tvo.getTouristvo().setUser_id(user_id);
      
      TouristDAO.textInsert(tvo);		//textvo�� �Է�
      TouristDAO.touristWrite(tvo);		//tour�� �Է�
    

      return "tourist/touristWriteOk.jsp";

   }
   

}