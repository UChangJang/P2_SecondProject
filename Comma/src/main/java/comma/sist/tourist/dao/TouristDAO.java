package comma.sist.tourist.dao;

import java.io.Reader;
import java.util.List;


import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


import comma.sist.controller.RequestMapping;
import comma.sist.guide.dao.GuideVO;
import comma.sist.wish.dao.WishVO;


public class TouristDAO {
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
	
	@RequestMapping("tourist.do")
	public String tour_list(HttpServletRequest req){
		HttpSession session=req.getSession();
		
		
		return "tourist/tourist.jsp";
	}
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
