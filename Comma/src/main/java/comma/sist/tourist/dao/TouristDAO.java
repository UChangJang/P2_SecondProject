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
		System.out.println("touristFiveData0");
		List<TextVO> list = session.selectList("touristFiveData", map); // 1-5번호까지의 tourist에서모든정보들가져옴
		System.out.println("touristFiveData1");
		
		List<TextVO> list2 = new ArrayList<TextVO>(); // 이곳에 저장하겠다.
		System.out.println("touristFiveData2");
		
		for (TextVO tvo : list) {
			String tid = tvo.getTouristvo().getUser_id();	//1.저장된 id가져옴  null...
				System.out.println(tid);
			int tno = tvo.getText_no();		//2.저장된 text번호 가져옴
				System.out.println(tno);
			
				System.out.println("here@!" + tvo.getTouristvo().getTour_theme());	//3.저장된 테마가져옴
			
			UserVO uv = session.selectOne("touristUserData", tid); // users에서user_id와 일치하는 5개의 정보들 가져옴
				System.out.println(uv.getUser_nick());		//저장된 닉네임 가져오기
			
			TextVO tv = session.selectOne("touristTextData", tno); // text에서 text_no와 일치하는 5개의 정보들 가져옴
				System.out.println(tv.getText_loc());					//저장된 지역 가져오기

			//list에 합치기!!
			tvo.setUservo(uv);
			
			tvo.setText_loc(tv.getText_loc());
			tvo.setText_cost(tv.getText_cost());
			tvo.setText_total_person(tv.getText_total_person());
			tvo.setText_time1(tv.getText_time1());
			tvo.setText_time2(tv.getText_time2());
			tvo.setText_tour_date(tv.getText_tour_date());
			list2.add(tvo);
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
	
}
