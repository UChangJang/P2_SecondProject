package comma.sist.wish.dao;

import java.io.Reader;
import java.util.List;

import javax.servlet.http.HttpServletRequest;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import comma.sist.common.TextVO;

public class WishDAO {
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
	
	public static List<TextVO> myWishGuide(String id){
		SqlSession session=ssf.openSession();
		
		List<TextVO> vo = session.selectList("myWishGuide",id);
		
		return vo;
	}
	
	public static List<TextVO> myWishTour(String id){
		SqlSession session=ssf.openSession();
		System.out.println(id);
		List<TextVO> vo = session.selectList("myWishTour",id);		
		return vo;
	}
	
	//미정 삭제 test요
	public static void myWishGuideDelete(int wish_no)
    {
    	SqlSession session=ssf.openSession(true);
    	session.delete("myWishGuideDelete",wish_no);
    	session.close();
    }

	public static void myWishTourDelete(int wish_no)
    {
    	SqlSession session=ssf.openSession(true);
    	session.delete("myWishTourDelete",wish_no);
    	session.close();
    }
	

	public static void guideWishOk(WishVO vo){
	      SqlSession session=ssf.openSession(true);
	      session.insert("guideWishOk",vo);
	      session.close();
	}
}
