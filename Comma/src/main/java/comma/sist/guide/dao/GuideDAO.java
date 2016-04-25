package comma.sist.guide.dao;

import java.io.*;
import java.util.*;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

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
	
	
	
	public static void textInsert(GuideVO vo){
		TextVO tvo = new TextVO();
		tvo.setText_loc(vo.getTextvo().getText_loc());
		tvo.setText_cost(vo.getTextvo().getText_cost());
		tvo.setText_move(vo.getTextvo().getText_move());
		tvo.setText_total_person(vo.getTextvo().getText_total_person());
		tvo.setText_time1(vo.getTextvo().getText_time1());
		tvo.setText_time2(vo.getTextvo().getText_time2());
		tvo.setText_tour_date(vo.getTextvo().getText_tour_date());		
		
		System.out.println(tvo.getText_move());
		
		SqlSession session = ssf.openSession(true);
		session.insert("textInsert",tvo);
		session.close();
		
	} // guideInsert(GuideVO vo)
		
	
	public static void guideInsert(GuideVO vo){
		
		SqlSession session = ssf.openSession(true);
		session.insert("guideInsert",vo);
		session.close();
		
	} // guideInsert2(GuideVO vo)
	
	
	
	
	
	
	
	
	public static List<WishVO> myAllGuide(String id){
		SqlSession session = ssf.openSession();
		List<WishVO> vo=session.selectList("myAllGudie",id);	
		session.close();
		return vo;
	}
	
}
