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
		List<TouristVO> list = session.selectList("touristFiveData", map); // 1-5��ȣ������ tourist������������鰡����
		
		List<TextVO> list2 = new ArrayList<TextVO>(); // �̰��� �����ϰڴ�.
		
		for(TouristVO tvo : list) {
			String tid = tvo.getUser_id();	//1.����� id������  null...
				System.out.println("id:" +tid);
			int tno = tvo.getText_no();		//2.����� text��ȣ ������
				System.out.println("����ü������ȣ:" +tno);
				System.out.println("�׸�:" + tvo.getTour_theme());	//3.����� �׸�������
			
			UserVO uv = session.selectOne("touristUserData", tid); // users����user_id�� ��ġ�ϴ� 5���� ������ ������
				System.out.println("�г���:" +uv.getUser_nick());		//����� �г��� ��������
			
			TextVO tv = session.selectOne("touristTextData", tno); // text���� text_no�� ��ġ�ϴ� 5���� ������ ������
				System.out.println("����:" +tv.getText_loc());					//����� ���� ��������

			//list�� ��ġ��_user
			tv.getUservo().setUser_nick(uv.getUser_nick());
			tv.getUservo().setUser_img(uv.getUser_img());
			tv.getUservo().setUser_birth(uv.getUser_birth());
			tv.getUservo().setUser_sex(uv.getUser_sex());
			//list�� ��ġ��_tour
			tv.getTouristvo().setText_no(tvo.getText_no());
			tv.getTouristvo().setUser_id(tvo.getUser_id());
			tv.getTouristvo().setTour_no(tvo.getTour_no());
			tv.getTouristvo().setTour_theme(tvo.getTour_theme());
			tv.getTouristvo().setTour_detail(tvo.getTour_detail());
			
			list2.add(tv);
		}
		session.close();
		
		return list2;
	}
	
	/* tourist���� */
	public static List<TextVO> tourist_sort(Map map,int type) { // map=start(1) end(5)	//type=1,2,3
		SqlSession session = ssf.openSession(); // ��ü����	
		
		List<TouristVO> list = new ArrayList<TouristVO>();
				System.out.println("dao1");
		if(type==1){		//1.���ݼ�
			list = session.selectList("touristSortPrice", map); // 1-5��ȣ������ tourist������������鰡����
		}else if(type==2){	//2.�ֽż�
			list = session.selectList("touristSortNewest", map); 
		}else if(type==3){
			
		}
				System.out.println("dao2");
		List<TextVO> list2 = new ArrayList<TextVO>(); // �̰��� �����ϰڴ�.
		
		for(TouristVO tvo : list) {
			String tid = tvo.getUser_id();	//1.����� id������  null...
				System.out.println("id:" +tid);
			int tno = tvo.getText_no();		//2.����� text��ȣ ������
				System.out.println("����ü������ȣ:" +tno);
				System.out.println("�׸�:" + tvo.getTour_theme());	//3.����� �׸�������
			
			UserVO uv = session.selectOne("touristUserData", tid); // users����user_id�� ��ġ�ϴ� 5���� ������ ������
				System.out.println("�г���:" +uv.getUser_nick());		//����� �г��� ��������
			
			TextVO tv = session.selectOne("touristTextData", tno); // text���� text_no�� ��ġ�ϴ� 5���� ������ ������
				System.out.println("����:" +tv.getText_loc());					//����� ���� ��������

			//list�� ��ġ��_user
			tv.getUservo().setUser_nick(uv.getUser_nick());
			tv.getUservo().setUser_img(uv.getUser_img());
			tv.getUservo().setUser_birth(uv.getUser_birth());
			tv.getUservo().setUser_sex(uv.getUser_sex());
			//list�� ��ġ��_tour
			tv.getTouristvo().setText_no(tvo.getText_no());
			tv.getTouristvo().setUser_id(tvo.getUser_id());
			tv.getTouristvo().setTour_no(tvo.getTour_no());
			tv.getTouristvo().setTour_theme(tvo.getTour_theme());
			tv.getTouristvo().setTour_detail(tvo.getTour_detail());
			
			list2.add(tv);
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
	


	  //2.tourist�Խ��� �� ������ �� ���ϱ�
	  public static int boardTotalPage(){
	     SqlSession session=ssf.openSession();      //��ü����
	     int count=session.selectOne("tourRowCount");   //�� ���� ���ϱ�
	     session.close();      //�ݾ���� �ȴ���!!!
	     return (int)(Math.ceil(count/5.0));
	  }
	  
	/*  // �Խ��� �۾�
	  public static void textInsert(TextVO tvo){
   		
  		SqlSession session = ssf.openSession(true);
  		session.insert("textInsert1",tvo);
  		session.close();
  		
  	} // guideInsert(GuideVO vo)
  		
  	
  	public static void touristInsert(TextVO tvo){
  		
  		SqlSession session = ssf.openSession(true);
  		session.insert("touristInsert",tvo);
  		session.close();
  		
  	} */
      
   
   public static List<WishVO> myWishTorist(String id){
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
   }
   
}

