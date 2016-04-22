package comma.sist.message.dao;

import java.io.Reader;
import java.util.List;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import comma.sist.user.dao.UserVO;

public class MessageDAO {
	
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

	public static List<MessageVO> receiveMessageAllData(String id){
		SqlSession session=ssf.openSession();
		System.out.println(id);
		List<MessageVO> vo=session.selectList("receiveMessageAllData",id);
		session.close();
		return vo;
	}
	public static List<MessageVO> sendMessageAllData(String id){
		SqlSession session = ssf.openSession();
		List<MessageVO> vo=session.selectList("sendMessageAllData",id);
		session.close();
		return vo;
	}
	
	
}
