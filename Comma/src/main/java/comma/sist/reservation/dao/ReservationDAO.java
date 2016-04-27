package comma.sist.reservation.dao;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import comma.sist.common.TextVO;

public class ReservationDAO {
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
	public static List<TextVO> myGuideReservation(String id){
		SqlSession session = ssf.openSession();
		List<TextVO> vo =session.selectList("myGuideReservation",id);
		session.close();
		return vo;
	}
	public static List<TextVO> myTourReservation(String id){
		SqlSession session = ssf.openSession();
		List<TextVO> vo =session.selectList("myTourReservation",id);
		session.close();
		return vo;
	}
	
}
