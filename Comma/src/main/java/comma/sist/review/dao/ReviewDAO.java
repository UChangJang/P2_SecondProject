package comma.sist.review.dao;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import comma.sist.common.TextVO;
import comma.sist.guide.dao.GuideVO;

public class ReviewDAO {
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
	
	public static List<TextVO> myAllReview(int guide_no){
		SqlSession session=ssf.openSession();
		List<TextVO> list = session.selectList("myAllReview",guide_no);
		session.close();
		return list;
	}
	public static List<GuideVO> myAbleReview(String id){
		SqlSession session=ssf.openSession();
		List<GuideVO> vo= session.selectList("myAbleReview",id);
		session.close();
		return vo;
	}
	public static void reviewWrite(ReviewVO vo){
		SqlSession session=ssf.openSession(true);
		session.insert("reviewWrite",vo);
		session.close();
	}
	
}
