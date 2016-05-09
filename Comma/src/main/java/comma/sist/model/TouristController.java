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

   // 1.tourist초기 목록보기
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
      
      List<TextVO> list=TouristDAO.touristFiveData(map);   //1과 5 넘겨줌=>5개의 touristVO만 가져오게 됨            
      int totalpage=TouristDAO.boardTotalPage();   //총페이지수=2page
   
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
   
 
   
   //2. ajax사용_이전,다음 페이지 버튼_검색어없이 
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
      
      List<TextVO> list=TouristDAO.touristFiveData(map);   //1과 5 넘겨줌=>5개의 touristVO만 가져오게 됨
      int totalpage=TouristDAO.boardTotalPage();   //총페이지수=5page
   
      //req.setAttribute("today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
      req.setAttribute("curpage", curpage);
      req.setAttribute("totalpage", totalpage);
      req.setAttribute("list", list);                    
      
      return "tourist/touristList.jsp";
   }


   //3. 정렬
   @RequestMapping("tourist_sort.do")
   public String tourist_sort(HttpServletRequest req) throws Exception{
		String place = req.getParameter("place"); // 1.장소=seoul
		String date = req.getParameter("date"); // 2.날짜=03/31/2016
		System.out.println("place:" + place + ",date:" + date);

		String page = req.getParameter("page"); // page=몇페이지인지..처음은 무조건 1page
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

		String type = req.getParameter("type"); // 3.정렬타입="cost"/"newest"
		System.out.println("정렬타입:"+type+","+"start:"+start+","+"end:"+end+","+"place:"+place+","+"date:"+date );

		List<TextVO> list = TouristDAO.tourist_sort(map, type); 
		
      
      int totalpage=TouristDAO.searchTotalPage(map);   //총페이지수=2page  
      //req.setAttribute("today", new SimpleDateFormat("yyyy-MM-dd").format(new Date()));
      req.setAttribute("curpage", curpage);
      req.setAttribute("totalpage", totalpage);
      req.setAttribute("list", list);         
      return "tourist/touristList.jsp";
   }
   
   /* 3.검색*/
   @RequestMapping("tourist_search.do")
   public String tourist_search(HttpServletRequest req){
	  try{
	   req.setCharacterEncoding("UTF-8");
      String place=req.getParameter("place");			//1.장소=seoul
      String date=req.getParameter("date");			//2.날짜=03/31/2016
      System.out.println("place:"+place+",date:"+date);
      
      String page=req.getParameter("page");      //3.검색은 무조건 1page(다음페이지 눌렀을 때도 여기로 와서 해결)
      if(page==null){
         page="1";
      }
      
      int curpage=Integer.parseInt(page);
      
      Map map=new HashMap();					//5개 데이터를 한번에 보여줌
      int rowSize=5;
      int start=(curpage*rowSize)-(rowSize-1);
      
      int end=curpage*rowSize;
      map.put("start", start);
      map.put("end", end);
      map.put("place",place );
      map.put("date", date);
      
      List<TextVO> list=TouristDAO.tourist_search(map);   //5개의 데이터,seoul,20160331   
            
      
      int totalpage=TouristDAO.searchTotalPage(map);   //검색 후 _총 페이지 수
                
      req.setAttribute("curpage", curpage);
      req.setAttribute("totalpage", totalpage);
      req.setAttribute("list", list);
	  }catch(Exception e){
		  System.out.println("tourist:"+e.getMessage());
	  }
      
      return "tourist/touristList.jsp";
   }
   
   
   /* 4.위시리스트 추가 */
   @RequestMapping("wishCheck.do")
   public String wishCheck(HttpServletRequest req){
	  //"tour_no="+no+"&id="+"${sessionScope.id}";
	  String tour_no=req.getParameter("tour_no");		//1.투어번호받음
      String user_id=req.getParameter("id");			//2.사용자id받음
      System.out.println("tour:"+tour_no+",id:"+user_id);
      //wish에 : user_id, tour_no
      
      Map map=new HashMap();		
      map.put("tour_no", tour_no);
      map.put("user_id", user_id);
      
      
      int count=TouristDAO.wishSearch(map);		//존재=1 ,존재x=0
    
      String result="";
      
      if(count==0){				//존재x
    	  WishVO vo=new WishVO();
    	  vo.setUser_id(user_id);
    	  vo.setTour_no(Integer.parseInt(tour_no));
    	  
    	  System.out.println(vo.getUser_id()+",투어번호:"+vo.getTour_no()+",가이드번호:"+vo.getGuide_no());
    	  TouristDAO.wishInsert(vo);
    	 
    	  result="0";
      }else if(count==1){		//존재o
    	  
    	  result="1";
      }
      
      req.setAttribute("result", result);
      return "tourist/wishOk.jsp";
   }
	   
   
   /* 5.예약하기 */
   @RequestMapping("resTourCheck.do")
   public String resTourCheck(HttpServletRequest req){
	  //"tour_no="+no+"&id="+"${sessionScope.id}";
	  String tour_no=req.getParameter("tour_no");		//1.투어번호받음
      String user_id=req.getParameter("id");			//2.사용자id받음
      System.out.println("tour:"+tour_no+",id:"+user_id);
      //wish에 : reservation_no, user_id, tour_no
      
      Map map=new HashMap();		
      map.put("tour_no", tour_no);
      map.put("user_id", user_id);
      
      int count=TouristDAO.resSearch(map);		//존재=1 ,존재x=0
     
      String result="";
      
      if(count==0){				//존재x
    	  System.out.println("투어번호:"+map.get("tour_no")+",가이드번호:"+map.get("user_id"));
    	  TouristDAO.resInsert(map);
    	  
    	  result="0";
      }else if(count==1){		//존재o
    	  
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
   
   /* 6.관광객 글쓰기 */
   @RequestMapping("touristWrite_Ok.do")
   public String tourist_Insert(HttpServletRequest req) throws Exception{
      
	  req.setCharacterEncoding("UTF-8");
	   
      String tour_theme = req.getParameter("tour_theme");
      String text_loc = req.getParameter("text_loc");
      String text_tour_date = req.getParameter("text_tour_date");
      String text_cost = req.getParameter("text_cost");
      String text_total_person = req.getParameter("text_total_person");
      String text_time1 = req.getParameter("text_time1");		//숫자
      String text_time2 = req.getParameter("text_time2");		//am,pm
      String text_time3 = req.getParameter("text_time3");		//숫자
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
      tvo.setText_time1(text_time1);		//시간
      tvo.setText_time2(text_time2);		//시간
      tvo.setText_time3(text_time3);		//시간
      tvo.setText_time4(text_time4);		//시간
      tvo.setText_move(text_move);     
      tvo.setText_time(text_time);			//총 시간
      tvo.getTouristvo().setTour_detail(tour_detail);   
      
      HttpSession session = req.getSession();
      String user_id = (String)session.getAttribute("id");	//id
      tvo.getTouristvo().setUser_id(user_id);
      
      TouristDAO.textInsert(tvo);		//textvo에 입력
      TouristDAO.touristWrite(tvo);		//tour에 입력
    

      return "tourist/touristWriteOk.jsp";

   }
   

}