package comma.sist.guide.dao;

import java.io.*;
import java.util.*;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import comma.sist.reservation.dao.ReservationVO;
import comma.sist.wish.dao.WishVO;
import comma.sist.common.*;

public class GuideDAO {

private static SqlSessionFactory	ssf;
	
	static{
		try{
			// xml ÆÄ½Ì
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
		
		return list;
		
	} // guideAllData()
	
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
	
	
	
	public static List<TextVO> myGuideWriter(String id){
		SqlSession session=ssf.openSession();
		List<TextVO> vo = session.selectList("myGuideWriter",id);
		session.close();
		return vo;
	}
	public static List<TextVO> bestGuide(){
		SqlSession session=ssf.openSession();
		List<TextVO> vo=session.selectList("bestGuide");
		session.close();
		return vo;
	}

}
