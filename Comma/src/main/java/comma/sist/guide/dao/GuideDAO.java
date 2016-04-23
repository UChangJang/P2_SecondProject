package comma.sist.guide.dao;

import java.io.*;
import java.util.*;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import comma.sist.wish.dao.WishVO;


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
	
	
	public static List<GuideVO> guideAllData(){
		
		SqlSession session = ssf.openSession();
		List<GuideVO> list = session.selectList("guideAllData");
		session.close();
		
		return list;
		
	} // guideAllData()
	
	public static GuideVO guideInfoData(int no){
		
		SqlSession session = ssf.openSession();
		GuideVO vo = session.selectOne("guideInfo",no);
		session.close();
		
		return vo;
		
	} // guideAllData()
	
	public static void guideInsert(GuideVO vo){
		
		SqlSession session = ssf.openSession(true);
		session.insert("guideInsert",vo);
		session.close();
		
	} // guideInsert(GuideVO vo)
	
	public static List<WishVO> myAllGuide(String id){
		SqlSession session = ssf.openSession();
		List<WishVO> vo=session.selectList("myAllGudie",id);	
		session.close();
		return vo;
	}
	
}
