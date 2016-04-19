package comma.sist.user.dao;

import java.io.Reader;
import java.util.*;

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
	
	public static String userLogin(String id, String pwd){
		
		String res = "";
		SqlSession session = ssf.openSession();
		int countID = session.selectOne("userCountID",id);
		
		if(countID==0) res = "NOID";
		else{
			UserVO vo = session.selectOne("userInfo",id);
			
			if(pwd.equals(vo.getUser_pwd())){
				res = vo.getUser_name();
			}else{
				res = "NOPWD";
			}
			
		}
		session.close();
		
		return res;
	}
	

	
}
