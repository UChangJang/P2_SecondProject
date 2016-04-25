package comma.sist.tourist.dao;

import java.io.Reader;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import comma.sist.guide.dao.GuideVO;

public class TouristDAO {
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
	
	// 전체 데이터 읽기
	public static List<TouristVO> touristAllData() {
		SqlSession session = ssf.openSession(); // 객체생성
		List<TouristVO> list = session.selectList("touristAllData");
		session.close(); 
		return list; 
	}// touristAllData()
	
	
}
