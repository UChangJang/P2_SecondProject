package comma.sist.guide.dao;

import java.io.*;
import java.util.*;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


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
	
	
	public List<GuideVO> guideAllData(){
		
		SqlSession session = ssf.openSession();
		List<GuideVO> list = session.selectList("guideAllData");
		session.close();
		
		return list;
		
	} // guideAllData()
	
	
	
	
	
	
}
