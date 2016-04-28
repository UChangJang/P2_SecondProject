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
import comma.sist.controller.RequestMapping;
import comma.sist.user.dao.UserVO;
import comma.sist.wish.dao.WishVO;



public class TouristDAO {

private static SqlSessionFactory	ssf;
	
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
		List<TouristVO> list = session.selectList("touristFiveData", map); // 1-5번호까지의 tourist에서모든정보들가져옴
		
		List<TextVO> list2 = new ArrayList<TextVO>(); // 이곳에 저장하겠다.
		
		for(TouristVO tvo : list) {
			String tid = tvo.getUser_id();	//1.저장된 id가져옴  null...
				System.out.println("id:" +tid);
			int tno = tvo.getText_no();		//2.저장된 text번호 가져옴
				System.out.println("글전체에서번호:" +tno);
				System.out.println("테마:" + tvo.getTour_theme());	//3.저장된 테마가져옴
			
			UserVO uv = session.selectOne("touristUserData", tid); // users에서user_id와 일치하는 5개의 정보들 가져옴
				System.out.println("닉네임:" +uv.getUser_nick());		//저장된 닉네임 가져오기
			
			TextVO tv = session.selectOne("touristTextData", tno); // text에서 text_no와 일치하는 5개의 정보들 가져옴
				System.out.println("지역:" +tv.getText_loc());					//저장된 지역 가져오기

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
	
	/* tourist정렬 */
	public static List<TextVO> tourist_sort(Map map,int type) { // map=start(1) end(5)	//type=1,2,3
		SqlSession session = ssf.openSession(); // 객체생성	
		
		List<TouristVO> list = new ArrayList<TouristVO>();
				System.out.println("dao1");
		if(type==1){		//1.가격순
			list = session.selectList("touristSortPrice", map); // 1-5번호까지의 tourist에서모든정보들가져옴
		}else if(type==2){	//2.최신순
			list = session.selectList("touristSortNewest", map); 
		}else if(type==3){
			
		}
				System.out.println("dao2");
		List<TextVO> list2 = new ArrayList<TextVO>(); // 이곳에 저장하겠다.
		
		for(TouristVO tvo : list) {
			String tid = tvo.getUser_id();	//1.저장된 id가져옴  null...
				System.out.println("id:" +tid);
			int tno = tvo.getText_no();		//2.저장된 text번호 가져옴
				System.out.println("글전체에서번호:" +tno);
				System.out.println("테마:" + tvo.getTour_theme());	//3.저장된 테마가져옴
			
			UserVO uv = session.selectOne("touristUserData", tid); // users에서user_id와 일치하는 5개의 정보들 가져옴
				System.out.println("닉네임:" +uv.getUser_nick());		//저장된 닉네임 가져오기
			
			TextVO tv = session.selectOne("touristTextData", tno); // text에서 text_no와 일치하는 5개의 정보들 가져옴
				System.out.println("지역:" +tv.getText_loc());					//저장된 지역 가져오기

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
	
	
	
	
	
	/*public static List<WishVO> myWishTorist(String id){
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
	}*/
	


	  //2.tourist게시판 총 페이지 수 구하기
	  public static int boardTotalPage(){
	     SqlSession session=ssf.openSession();      //객체생성
	     int count=session.selectOne("tourRowCount");   //총 갯수 구하기
	     session.close();      //닫아줘야 안느림!!!
	     return (int)(Math.ceil(count/5.0));
	  }
	  
	/*  // 게시판 글쓰
	  public static void textInsert(TextVO tvo){
   		
  		SqlSession session = ssf.openSession(true);
  		session.insert("textInsert1",tvo);
  		session.close();
  		
  	} // guideInsert(GuideVO vo)
  		
  	
  	public static void touristInsert(TextVO tvo){
  		
  		SqlSession session = ssf.openSession(true);
  		session.insert("touristInsert",tvo);
  		session.close();
  		
  	} */
      
   
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

