package comma.sist.tourist.dao;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;


import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import comma.sist.common.TextVO;
import comma.sist.controller.RequestMapping;
import comma.sist.user.dao.UserVO;
import comma.sist.wish.dao.WishVO;


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
	
	//1. 5���� ��ü ������ �б�
	public static List<TextVO> touristFiveData(Map map) { // map=1,5
		SqlSession session = ssf.openSession(); // ��ü����
		System.out.println("touristFiveData0");
		List<TextVO> list = session.selectList("touristFiveData", map); // 1-5��ȣ������ tourist������������鰡����
		System.out.println("touristFiveData1");
		
		List<TextVO> list2 = new ArrayList<TextVO>(); // �̰��� �����ϰڴ�.
		System.out.println("touristFiveData2");
		
		for (TextVO tvo : list) {
			String tid = tvo.getTouristvo().getUser_id();	//1.����� id������  null...
				System.out.println(tid);
			int tno = tvo.getText_no();		//2.����� text��ȣ ������
				System.out.println(tno);
			
				System.out.println("here@!" + tvo.getTouristvo().getTour_theme());	//3.����� �׸�������
			
			UserVO uv = session.selectOne("touristUserData", tid); // users����user_id�� ��ġ�ϴ� 5���� ������ ������
				System.out.println(uv.getUser_nick());		//����� �г��� ��������
			
			TextVO tv = session.selectOne("touristTextData", tno); // text���� text_no�� ��ġ�ϴ� 5���� ������ ������
				System.out.println(tv.getText_loc());					//����� ���� ��������

			//list�� ��ġ��!!
			tvo.setUservo(uv);
			
			tvo.setText_loc(tv.getText_loc());
			tvo.setText_cost(tv.getText_cost());
			tvo.setText_total_person(tv.getText_total_person());
			tvo.setText_time1(tv.getText_time1());
			tvo.setText_time2(tv.getText_time2());
			tvo.setText_tour_date(tv.getText_tour_date());
			list2.add(tvo);
		}
		session.close();
		
		return list2;
	}
	
	/*public static List<WishVO> myWishTorist(String id){
		SqlSession session = ssf.openSession();
		List<WishVO> vo=session.selectList("myWishTorist",id);
		session.close();
		return vo;
	}
	public static List<TouristVO> myTouristWriter(String id){
		SqlSession session=ssf.openSession();
		List<TouristVO> vo = session.selectList("myTouristWriter",id);
		session.close();
		return vo;
	}*/
	
}
