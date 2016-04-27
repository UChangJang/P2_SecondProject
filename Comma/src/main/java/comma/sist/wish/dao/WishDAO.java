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
			// xml ÆÄ½Ì
			Reader reader = Resources.getResourceAsReader("Config.xml");
			ssf = new SqlSessionFactoryBuilder().build(reader);
						
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
	}
	
	public static List<TextVO> myWishGuide(String id){
		SqlSession session=ssf.openSession();
		System.out.println(id);
		List<TextVO> vo = session.selectList("myWishGuide",id);
		
		return vo;
	}
	
	public static List<TextVO> myWishTour(String id){
		SqlSession session=ssf.openSession();
		System.out.println(id);
		List<TextVO> vo = session.selectList("myWishTour",id);		
		return vo;
	}
}
