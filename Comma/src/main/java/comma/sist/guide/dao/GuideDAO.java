package comma.sist.guide.dao;

import java.io.*;
import java.util.*;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import comma.sist.common.*;
import comma.sist.tourist.dao.TouristVO;

import comma.sist.user.dao.UserVO;

public class GuideDAO {

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
	
	
	public static List<TextVO> guideAllData(Map map){
		
		SqlSession session = ssf.openSession();
		List<TextVO> list = session.selectList("guideAllData",map);
		session.close();	
		
		costModify(list);
		
		return list;
		
	} // guideAllData()
	
	// 가격에 3자리씩 끊어 ,붙이기
	public static void costModify(List<TextVO> list){
		
		for(TextVO vo:list){
			String cost = vo.getText_cost();
			String s="";
			if(cost.length()%3==0){
				for(int i=1; i<=cost.length(); i+=3){
					s += cost.substring(i-1,i+2)+",";
				}
				s = s.substring(0,s.length()-1);
				vo.setText_cost(s);
			}
			else if(cost.length()%3==1){
				s = cost.substring(0,1)+",";
				for(int i=1; i<=cost.length(); i+=3){ // 1,4 4,7
					if(i<cost.length())
						s += cost.substring(i,i+3)+",";
				}
				s = s.substring(0,s.length()-1);
				vo.setText_cost(s);
			}
			else if(cost.length()%3==2){
				s = cost.substring(0,2)+",";
				for(int i=2; i<=cost.length(); i+=3){ // 2,5 5,8
					if(i<cost.length())
						s += cost.substring(i,i+3)+",";
				}
				s = s.substring(0,s.length()-1);
				vo.setText_cost(s);
			}
		}
	} // costModify
	
	public static int guideTotalPage(){
		
		SqlSession session = ssf.openSession();
		int total  = session.selectOne("guideTotalPage");
		session.close();
		
		return total;
		
	}
	
	public static TextVO guideInfoData(int no){
		
		SqlSession session = ssf.openSession();
		TextVO vo = session.selectOne("guideInfo",no);
		session.close();
		
		return vo;
		
	} // guideAllData()
	
	
	
	public static void textInsert(TextVO vo){
		
		SqlSession session = ssf.openSession(true);
		session.insert("textInsert",vo);
		session.close();
		
	} // textInsert(GuideVO vo)
		
	
	public static void guideInsert(TextVO vo){
		
		SqlSession session = ssf.openSession(true);
		session.insert("guideInsert",vo);
		session.close();
		
	} // guideInsert(GuideVO vo)
	
	public static void guideHitIncrease(int no){
		
		SqlSession session = ssf.openSession(true);
		session.update("guideHitIncrease",no);
		session.close();
	} // guideHitIncrease(int no)
	
	public static int guideHitInfo(int no){
		
		SqlSession session = ssf.openSession(true);
		int text_hit = session.selectOne("guideHitInfo",no);
		session.close();
		return text_hit;
	} //  guideHitInfo(int no)
	

	public static void guideDelete(int no){
		
		SqlSession session = ssf.openSession();
		int text_no = session.selectOne("textnoSearch",no);
		System.out.println(text_no);
		session.close();
		
		session = ssf.openSession(true);
		// wish, reservation, review
		session.delete("reviewGuideDelete",no);
		session.delete("reservationGuideDelete",no);
		session.delete("wishGuideDelete",no);
		session.delete("guideDelete", no);
		session.delete("textDelete",text_no);
		session.close();
	}
	
	public static int guideImgisExist(String img){
		
		SqlSession session = ssf.openSession();
		int count = session.selectOne("guideImgisExist",img);
		session.close();
		return count;
	}
	

	// 가이드 사람에 대한 상세보기
	public static UserVO guideInfoShow(int guide_no){
		
		SqlSession session = ssf.openSession();
		UserVO vo = session.selectOne("guideInfoShow",guide_no);
		session.close();
		
		return vo;
	}
	
	public static List<Integer> guideAllNumberWrited(String id){
		
		SqlSession session = ssf.openSession();
		List<Integer> list = session.selectList("guideAllNumberWrited",id);
		session.close();
		return list;
	}
	
	public static TextVO guideAllArticle(int guide_no){
		
		SqlSession session = ssf.openSession();
		TextVO vo = session.selectOne("guideAllArticle",guide_no);
		session.close();
		
		String cost = vo.getText_cost();
		String s="";
		if(cost.length()%3==0){
			for(int i=1; i<=cost.length(); i+=3){
				s += cost.substring(i-1,i+2)+",";
			}
			s = s.substring(0,s.length()-1);
			vo.setText_cost(s);
		}
		else if(cost.length()%3==1){
			s = cost.substring(0,1)+",";
			for(int i=1; i<=cost.length(); i+=3){ // 1,4 4,7
				if(i<cost.length())
					s += cost.substring(i,i+3)+",";
			}
			s = s.substring(0,s.length()-1);
			vo.setText_cost(s);
		}
		else if(cost.length()%3==2){
			s = cost.substring(0,2)+",";
			for(int i=2; i<=cost.length(); i+=3){ // 2,5 5,8
				if(i<cost.length())
					s += cost.substring(i,i+3)+",";
			}
			s = s.substring(0,s.length()-1);
			vo.setText_cost(s);
		}
		
		return vo;
	}
	
	public static List<TextVO> guideReview(int guide_no){
		
		SqlSession session = ssf.openSession();
		/*TextVO vo = session.selectOne("guideReview",guide_no);*/
		List<TextVO> list = session.selectList("guideReview",guide_no);
		session.close();
		return list;
	}
	

	public static List<TextVO> myGuideWriter(String id){
		SqlSession session=ssf.openSession();
		List<TextVO> vo = session.selectList("myGuideWriter",id);		
		session.close();
		return vo;
	}
	
	//예약한 인원 수 구하기 
	public static String myGuideWriterPerson(int no){
		SqlSession session=ssf.openSession();
		String resPerson = session.selectOne("myresPerson",no);
		session.close();
		return resPerson;
	}
	
	
	public static List<TextVO> bestGuide(){
		SqlSession session=ssf.openSession();
		List<TextVO> vo=session.selectList("bestGuide");
		session.close();
		return vo;
	}
	
	//가이드검색
	public static List<TextVO> guideSearchPlace(Map map){
		SqlSession session=ssf.openSession();
		List<TextVO> list = session.selectList("guideSearchPlace",map);
		session.close();
		return list;
	}
	//검색후 총페이지 구하기
	public static int guideSearchTotalPage(String place){		
		SqlSession session = ssf.openSession();
		int total  = session.selectOne("guideSearchTotalPage",place);
		session.close();		
		return total;		
	}
	
	//detail검색
	public static List<TextVO> guideSearchDe(Map map){
		SqlSession session=ssf.openSession();
		List<TextVO> list = session.selectList("guideSearchDe",map);
		session.close();
		return list;
	}
	//detail검색후 총페이지 구하기
		public static int guideSearchDeTotalPage(Map map){		
			SqlSession session = ssf.openSession();
			int total  = session.selectOne("guideSearchDeTotalPage",map);
			session.close();		
			return total;		
		}
		

		
	// guide정렬_place---------------------------------
	public static List<TextVO> guide_sort_place(Map map, String type) { 	//map=start,end,place //type=cost,newest
		SqlSession session = ssf.openSession(); // 객체생성

		List<TextVO> list = new ArrayList<TextVO>();
		if (type.equals("cost")) { 			// 1.가격순
			list = session.selectList("guideSortPrice", map); // 1-5번호까지의
																// tourist에서모든정보들가져옴
		} else if (type.equals("newest")) { // 2.등록일자순
			list = session.selectList("guideSortNewest", map);
			
		}else if(type.equals("ranking")){	//3.랭킹순
			
		}
		session.close();
		return list;
	}
	
	// guide정렬_place,method,---------------------------------
		public static List<TextVO> guide_sort_detail(Map map, String type) { 	//map=start,end,place,method,people,date //type=cost,newest
			SqlSession session = ssf.openSession(); // 객체생성

			List<TextVO> list = new ArrayList<TextVO>();
			if (type.equals("cost")) { 			// 1.가격순
				list = session.selectList("guideSortPriceDe", map); // 1-5번호까지의
																	// tourist에서모든정보들가져옴
			} else if (type.equals("newest")) { // 2.등록일자순
				list = session.selectList("guideSortNewestDe", map);
				
			}else if(type.equals("ranking")){	//3.랭킹순
				
			}
			session.close();
			return list;
		}
	
}
