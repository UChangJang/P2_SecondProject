package comma.sist.tourist.dao;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


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
      public static List<TouristVO> touristFiveData(Map map){   //map=1,5
         SqlSession session=ssf.openSession();      //객체생성
         List<TouristVO> list=session.selectList("touristFiveData",map);      //1-5번호까지의 tourist에서 모든정보들 가져옴
         
         List<TouristVO> list2=new ArrayList<TouristVO>();               //이곳에 저장하겠다.
         
         for(TouristVO tvo:list){
            String tid=tvo.getUser_id();
            
            int tno=tvo.getText_no();
           
           // System.out.println("here@!"+tvo.getTour_theme());
            UserVO uv=session.selectOne("touristUserData",tid);   //users에서 user_id와 일치하는 5개의 정보들 가져옴
           // System.out.println(uv.getUser_nick());
            TextVO tv=session.selectOne("touristTextData",tno);   //text에서 text_no와 일치하는 5개의 정보들 가져옴
            //System.out.println(tv.getText_loc());
         
           // tvo.setUvo(uv);
           // tvo.setTvo(tv);
            list2.add(tvo);
         }
         session.close();         
         return list2;      
      }
      
      
      //2.tourist게시판 총 페이지 수 구하기
      public static int boardTotalPage(){
         SqlSession session=ssf.openSession();      //객체생성
         int count=session.selectOne("tourRowCount");   //총 갯수 구하기
         session.close();      //닫아줘야 안느림!!!
         return (int)(Math.ceil(count/5.0));
      }
      // 게시판 글쓰
      public static void textInsert(TextVO tvo){
  		
  		SqlSession session = ssf.openSession(true);
  		session.insert("textInsert1",tvo);
  		session.close();
  		
  	} // guideInsert(GuideVO vo)
  		
  	
  	public static void touristWrite(TextVO tvo){
  		
  		SqlSession session = ssf.openSession(true);
  		session.insert("touristInsert",tvo);
  		session.close();
  		
  	} 
      
   
   public static List<WishVO> myWishTorist(String id){
      SqlSession session = ssf.openSession();
      List<WishVO> vo=session.selectList("myWishTorist",id);
      session.close();
      return vo;
   }
   public static List<TouristVO> myTouristWriter(String id){
      SqlSession session=ssf.openSession();
      List<TouristVO> vo = session.selectList("myTouristWriter",id);
      session.close();
      return vo;
   }
   
}