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
	
	// 선호 지역 순위
	public static List<SearchVO> searchLocFind(){
		SqlSession session=ssf.openSession();
		List<SearchVO> slist=session.selectList("searchLocFind");
		session.close();
		return slist;
	}
	
	// 선호지역에 해당하는 가이드 게시글 가져오기
	public static List<HotspotVO> allGiudeBoard(String search_loc){		
		System.out.println(search_loc);
		SqlSession session=ssf.openSession();
		List<HotspotVO> list=session.selectList("allGuideBoard", search_loc);
		
		// changeDate
		//날짜 비용 히트수 
		session.close();
		return list;
	}
	
}
