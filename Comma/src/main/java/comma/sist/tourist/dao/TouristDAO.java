package comma.sist.tourist.dao;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import javax.swing.plaf.synth.SynthSeparatorUI;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import comma.sist.common.TextVO;
import comma.sist.tourist.dao.TouristVO;
import comma.sist.user.dao.UserVO;
import comma.sist.wish.dao.WishVO;

public class TouristDAO {

private static SqlSessionFactory   ssf;
   
   static{
      try{
         // xml 파싱
         Reader reader = Resources.getResourceAsReader("Config.xml");
         ssf = new SqlSessionFactoryBuilder().build(reader);
                  
      }catch(Exception ex){
         System.out.println(ex.getMessage());
      }
   }
   
   
    //1. 5개의 전체 데이터 읽기
    public static List<TextVO> touristFiveData(Map map) { // map=1,5
       SqlSession session = ssf.openSession(); // 객체생성    
       List<TouristVO> list = session.selectList("touristFiveData", map); // 1-5번호까지의 tourist에서 모든정보들가져옴
       List<TextVO> list2 = new ArrayList<TextVO>(); // 이곳에 저장하겠다.
 
       for(TouristVO tvo : list) {
          String tid = tvo.getUser_id();   //1.저장된 id가져옴  null...
          int tno = tvo.getText_no();      //2.저장된 text번호 가져옴	    
          
          UserVO uv = session.selectOne("touristUserData", tid); // users에서user_id와 일치하는 5개의 정보들 가져옴
          TextVO tv = session.selectOne("touristTextData", tno); // text에서 text_no와 일치하는 5개의 정보들 가져옴
          //System.out.println("보잉테스트:"+tv.getText_time1()+","+tv.getText_time2());
          //list에 합치기_user
          tv.getUservo().setUser_nick(uv.getUser_nick());
          tv.getUservo().setUser_img(uv.getUser_img());
          tv.getUservo().setUser_birth(uv.getUser_birth());
          tv.getUservo().setUser_sex(uv.getUser_sex());
          //list에 합치기_tour
          tv.getTouristvo().setText_no(tvo.getText_no());
          tv.getTouristvo().setUser_id(tvo.getUser_id());
          tv.getTouristvo().setTour_no(tvo.getTour_no());
          tv.getTouristvo().setTour_theme(tvo.getTour_theme());
          tv.getTouristvo().setTour_detail(tvo.getTour_detail());          
          list2.add(tv);
       }
       session.close();
       
       return list2;
    }
    
    //2. tourist정렬
   public static List<TextVO> tourist_sort(Map map,String type) { // map=start,end,place,date  //type=cost,newest
      SqlSession session = ssf.openSession(); // 객체생성   
      
      List<TouristVO> list = new ArrayList<TouristVO>();
      if(type.equals("cost")){      //1.가격순
         list = session.selectList("touristSortPrice", map); // 1-5번호까지의 tourist에서모든정보들가져옴
      }else if(type.equals("newest")){   	//2.등록일자순
         list = session.selectList("touristSearchData", map); 
      }
      List<TextVO> list2 = new ArrayList<TextVO>(); // 이곳에 저장하겠다.
      
      for(TouristVO tvo : list) {
         String tid = tvo.getUser_id();   //1.저장된 id가져옴  null...
         int tno = tvo.getText_no();      //2.저장된 text번호 가져옴         
         UserVO uv = session.selectOne("touristUserData", tid); // users에서user_id와 일치하는 5개의 정보들 가져옴       
         TextVO tv = session.selectOne("touristTextData", tno); // text에서 text_no와 일치하는 5개의 정보들 가져옴
         //list에 합치기_user
         tv.getUservo().setUser_nick(uv.getUser_nick());
         tv.getUservo().setUser_img(uv.getUser_img());
         tv.getUservo().setUser_birth(uv.getUser_birth());
         tv.getUservo().setUser_sex(uv.getUser_sex());
         //list에 합치기_tour
         tv.getTouristvo().setText_no(tvo.getText_no());
         tv.getTouristvo().setUser_id(tvo.getUser_id());
         tv.getTouristvo().setTour_no(tvo.getTour_no());
         tv.getTouristvo().setTour_theme(tvo.getTour_theme());
         tv.getTouristvo().setTour_detail(tvo.getTour_detail());
         
         list2.add(tv);
      }
      session.close();
      
      return list2;
   }
   
   
   //2. tourist검색(지역,날짜)
   public static List<TextVO> tourist_search(Map map) { //5개의 데이터,JEJU,20160331  
      SqlSession session = ssf.openSession(); // 객체생성       
      List<TouristVO> list=session.selectList("touristSearchData", map); // tour에서 지역&날짜 동일한 5개 리스트 추출
 
      List<TextVO> list2 = new ArrayList<TextVO>(); // 이곳에 저장하겠다.
      for(TouristVO tvo : list) {
         String tid = tvo.getUser_id();   //1.저장된 id가져옴  null...
            
         int tno = tvo.getText_no();      //2.저장된 text번호 가져옴
            
            
         
         UserVO uv = session.selectOne("touristUserData", tid); // users에서user_id와 일치하는 5개의 정보들 가져옴
            
         
         TextVO tv = session.selectOne("touristTextData", tno); // text에서 text_no와 일치하는 5개의 정보들 가져옴
            

         //list에 합치기_user
         tv.getUservo().setUser_nick(uv.getUser_nick());
         tv.getUservo().setUser_img(uv.getUser_img());
         tv.getUservo().setUser_birth(uv.getUser_birth());
         tv.getUservo().setUser_sex(uv.getUser_sex());
         //list에 합치기_tour
         tv.getTouristvo().setText_no(tvo.getText_no());
         tv.getTouristvo().setUser_id(tvo.getUser_id());
         tv.getTouristvo().setTour_no(tvo.getTour_no());
         tv.getTouristvo().setTour_theme(tvo.getTour_theme());
         tv.getTouristvo().setTour_detail(tvo.getTour_detail());
         
         list2.add(tv);
      }
      session.close();
      
      return list2;
   }
   
   
      
      //2.tourist게시판_ 총 페이지 수 구하기
      public static int boardTotalPage(){
         SqlSession session=ssf.openSession();      //객체생성
         int count=session.selectOne("tourRowCount");   //총 갯수 구하기
         session.close();      //닫아줘야 안느림!!!
         return (int)(Math.ceil(count/5.0));
      }
      
      //2.tourist게시판 검색 후_ 총 페이지 수 구하기
      public static int searchTotalPage(Map map){
          SqlSession session=ssf.openSession();      //객체생성
          
          int count=session.selectOne("tourRowCountSearch",map);   //총 갯수 구하기
          session.close();      //닫아줘야 안느림!!!
          return (int)(Math.ceil(count/5.0));
       }
      
      
      //위시리스트
      public static int wishSearch(Map map){
    	     
          SqlSession session = ssf.openSession();
          int count=session.selectOne("wishSearch",map);
          
          session.close();
          return count;
          
        } 
      
      //위시리스트 추가
      public static void wishInsert(WishVO vo){
          SqlSession session = ssf.openSession(true);
          session.insert("wishInsert",vo);
          session.close();
          
        } 
      
      
      //예약조회
      public static int resSearch(Map map){
    	     
          SqlSession session = ssf.openSession();
          int count=session.selectOne("resSearch",map);
          
          session.close();
          return count;
          
        }
      
      //예약 추가
      public static void resInsert(Map map){
          SqlSession session = ssf.openSession(true);
          session.insert("resInsert",map);
          session.close();
          
        } 
      
      
      
     // 게시판 글쓰기
     public static void textInsert(TextVO tvo){
     
        SqlSession session = ssf.openSession(true);
        session.insert("textInsert1",tvo);
        session.close();
        
      } // textInsert(TextVO vo)
        
     
     public static void touristWrite(TextVO tvo){
        
        SqlSession session = ssf.openSession(true);
        session.insert("touristInsert",tvo);
        session.close();
        
     } // touristWrite(TextVO tvo)
      
     
     //지도
     public static int tourMap(String text_loc){	//seoul
	     
         SqlSession session = ssf.openSession();
         int count=session.selectOne("tourMap",text_loc);
         
         session.close();
         return count;
         
       }
     
   
     
    //배현길
   public static List<WishVO> myWishTorist(String id){
      SqlSession session = ssf.openSession();
      List<WishVO> vo=session.selectList("myWishTorist",id);
      session.close();
      return vo;
   }
   
   public static void touristDelete(int no){
		
		SqlSession session = ssf.openSession();
		int text_no = session.selectOne("textnoSearch1",no);
		//System.out.println(text_no);
		session.close();
		
		session = ssf.openSession(true);
		// wish, reservation, review
		session.delete("reservationTourDelete",no);
		session.delete("wishTourDelete",no);
		session.delete("TourDelete", no);
		session.delete("textDelete",text_no);
		session.close();
	}
   
   
   
   
   
   //내가 쓴 관광객 글들 보기
   public static List<TextVO> myTouristWriter(String id){
      SqlSession session=ssf.openSession();
      //System.out.println("dao진입tour:"+id);
      List<TextVO> vo = session.selectList("myTouristWriter",id);
      session.close();
      return vo;
   }
   
   //예약한 인원 수 구하기 
 	public static String myTourWriterPerson(int no){
 		SqlSession session=ssf.openSession();
 		String resPerson = session.selectOne("myresPerson2",no);
 		session.close();
 		return resPerson;
 	}
 	
 	//예약한 인원 정보구하기
 	public static List<TouristResVO> tourResInfo(int no){	//no=17
 		SqlSession session=ssf.openSession();
 		List<TouristResVO> vo = session.selectList("tourResInfo",no);
 		if(vo.isEmpty()){
 			//System.out.println("dao예약안했음");
 			session.close();
 			return null;
 		}else{
 			//System.out.println("예약자:"+vo.size());
	 		for(int i=0; i<vo.size(); i++){
	 			//System.out.println(vo.get(i).getUser_nick()+",ID:"+vo.get(i).getUser_id());
	 		}
	 		session.close();
 		}
 		return vo;
 	}
 	
 	//승인하기
	public static void mytourOkUpdate(Map map){
 		SqlSession session=ssf.openSession(true);
 		
 		session.update("mytourOkUpdate",map);
 		
 		session.close();
 	}
	//나머지 승인 안하기
		public static void mytourNotOkUpdate(Map map){
	 		SqlSession session=ssf.openSession(true);
	 	
	 		session.update("mytourNotOkUpdate",map);
	 	
	 		session.close();
	 	}
   
}
