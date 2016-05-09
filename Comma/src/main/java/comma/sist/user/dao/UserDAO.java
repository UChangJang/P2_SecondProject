package comma.sist.user.dao;

import java.io.*;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;




public class UserDAO {

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
	
	
	public static List<UserVO> userAllData(){
		SqlSession session = ssf.openSession();
		List<UserVO> list = session.selectList("userAllData");
		session.close(); // 컨넥션풀에 반환을 해야 속도가 빠르다.
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
	public static void userJoin(UserVO vo){
		SqlSession session=ssf.openSession(true);	
		session.insert("userJoin",vo);
		
	}
	public static UserVO userProfile(String id){
		SqlSession session=ssf.openSession();
		
		UserVO vo =session.selectOne("userProfile",id);
		return vo;
		
	}
	public static List<ZipcodeVO> postfindAllData(String dong){
		SqlSession session=ssf.openSession();
		List<ZipcodeVO> list=session.selectList("postfindAllData",dong);
		session.close();
		return list;
	}
	public static int postfindCount(String dong){
		SqlSession session=ssf.openSession();	
		int count=session.selectOne("postfindCount",dong);
		session.close();
		return count;
				
	}
	public static int idCheckCount(String id){
		SqlSession session=ssf.openSession();
		int count=session.selectOne("idCheckCount",id);
		session.close();
		return count;
	}
	public static String idFind(String name){
		SqlSession session=ssf.openSession();
		String id=session.selectOne("idFind",name);
		session.close();
		return id;
	}
	public static String pwdFind(String id){
		SqlSession session=ssf.openSession();
		String pwd=session.selectOne("pwdFind",id);
		session.close();
		return pwd;
	}
	public static void infoCorrection(UserVO vo){
		SqlSession session=ssf.openSession(true);
		session.update("infoCorrection",vo);	
		session.close();
	}
	public static String userProfileImage(String id){
		SqlSession session=ssf.openSession();
		String img=session.selectOne("userProfileImage",id);
		session.close();
		return img;
				
	}

	
}
