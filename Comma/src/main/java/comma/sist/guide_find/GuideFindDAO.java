package comma.sist.guide_find;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import comma.sist.hotspot.SearchVO;

public class GuideFindDAO {
	private static SqlSessionFactory ssf;
	static{
		try{
			Reader reader=Resources.getResourceAsReader("Config.xml");
			ssf=new SqlSessionFactoryBuilder().build(reader);
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
	}
	
	public static List<GuideFindVO> guideFind(){
		SqlSession session=ssf.openSession();
		List<GuideFindVO> list=session.selectList("guideFind");
		session.close();
		return list;
	}

}
