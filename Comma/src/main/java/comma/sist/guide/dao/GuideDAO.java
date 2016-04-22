package comma.sist.guide.dao;

import java.io.*;
import java.util.*;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import comma.sist.common.TextVO;


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
		
		TextVO tvo = new TextVO();
		tvo.setText_loc(vo.getTextVO().getText_loc());
		tvo.setText_cost(vo.getTextVO().getText_cost());
		  tvo.setText_move(vo.getTextVO().getText_move());
	      tvo.setText_total_person(vo.getTextVO().getText_total_person());
	      tvo.setText_time1(vo.getTextVO().getText_time1());
	      tvo.setText_time2(vo.getTextVO().getText_time2());
	      tvo.setText_tour_date(vo.getTextVO().getText_tour_date());
	      
	      SqlSession session = ssf.openSession(true);
	      session.insert("textInsert",tvo);
	      session.close();
	      
	   } // guideInsert(GuideVO vo)
	   
	public static int textCheckNo(){
      
		SqlSession session = ssf.openSession();
		int text_no = session.selectOne("textCheckNo");
		session.close();
		System.out.println(text_no);
		return text_no;
	} // textCheckNo()
   
   
   
	public static void guideInsert2(GuideVO vo){
      
		SqlSession session = ssf.openSession(true);
		session.insert("guideInsert",vo);
		session.close();
      
	} // guideInsert2(GuideVO vo)
	
}
