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
			// xml 파싱
			Reader reader = Resources.getResourceAsReader("Config.xml");
			ssf = new SqlSessionFactoryBuilder().build(reader);
						
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
	}
	public static List<TextVO> myGuideReservation(String user_id){
		SqlSession session = ssf.openSession();
		List<TextVO> vo =session.selectList("myGuideReservation",user_id);
		session.close();
		return vo;
	}
	public static List<TextVO> myTourReservation(String user_id){
		SqlSession session = ssf.openSession();
		List<TextVO> vo =session.selectList("myTourReservation",user_id);
		session.close();
		return vo;
	}
	
	
	public static void reserveGuide(ReservationVO vo){
		
		SqlSession session = ssf.openSession(true);
		session.insert("reserveGuide",vo);
		session.close();
	}
	
	public static String reserveGuideCheck(int guide_no){
		SqlSession session = ssf.openSession();
		System.out.println("dao진입");
		String sum=session.selectOne("reserveGuideCheck",guide_no);
		System.out.println(sum);
		session.close();
		return sum;
	}

	public static int reserveGuidePossible(int guide_no){
		SqlSession session = ssf.openSession();
		System.out.println("dao진입22");
		int total=session.selectOne("reserveGuidePossible",guide_no);
		System.out.println(total);
		session.close();
		return total;
	}
	
	//나의 예약여부 확인
	public static int reserveGuideExist(ReservationVO vo){
		SqlSession session = ssf.openSession();
		int count=session.selectOne("reserveGuideExist",vo);
		session.close();
		return count;
	}
}
