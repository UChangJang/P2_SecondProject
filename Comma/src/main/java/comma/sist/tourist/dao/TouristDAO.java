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
			// xml �Ľ�
			Reader reader = Resources.getResourceAsReader("Config.xml");
			ssf = new SqlSessionFactoryBuilder().build(reader);
						
		}catch(Exception ex){
			System.out.println(ex.getMessage());
		}
	}
	
	// ��ü ������ �б�
	public static List<TouristVO> touristAllData() {
		SqlSession session = ssf.openSession(); // ��ü����
		List<TouristVO> list = session.selectList("touristAllData");
		session.close(); 
		return list; 
	}// touristAllData()
	
	
}
