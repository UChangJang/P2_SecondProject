package comma.sist.hotspot;

import java.io.*;
import java.util.*;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

public class HotspotDAO {
	private static SqlSessionFactory ssf;
	static{
		try{
			Reader reader=Resources.getResourceAsReader("Config.xml");
			ssf=new SqlSessionFactoryBuilder().build(reader);
		}catch(Exception e){
			System.out.println(e.getMessage());
		}
	}
	
	// ��ȣ ���� ����
	public static List<SearchVO> searchLocFind(){
		SqlSession session=ssf.openSession();
		List<SearchVO> slist=session.selectList("searchLocFind");
		session.close();
		return slist;
	}
	
	// ��ȣ������ �ش��ϴ� ���̵� �Խñ� ��������
	public static List<HotspotVO> allGiudeBoard(String search_loc){		
		System.out.println(search_loc);
		SqlSession session=ssf.openSession();
		List<HotspotVO> list=session.selectList("allGuideBoard", search_loc);
		
		// changeDate
		//��¥ ��� ��Ʈ�� 
		session.close();
		return list;
	}
	
}
