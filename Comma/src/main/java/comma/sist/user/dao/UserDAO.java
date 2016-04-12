package comma.sist.user.dao;

import java.io.Reader;
import java.util.List;
import java.util.Map;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;


public class UserDAO {

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
	
	
	public static List<UserVO> userAllData(){
		SqlSession session = ssf.openSession();
		List<UserVO> list = session.selectList("userAllData");
		session.close(); // ���ؼ�Ǯ�� ��ȯ�� �ؾ� �ӵ��� ������.
		return list;
	} // userAllData(Map map)
	
	
}
