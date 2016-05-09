package comma.sist.tourist.dao;

import java.io.Reader;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;

import javax.swing.plaf.synth.SynthSeparatorUI;

import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;
import comma.sist.common.TextVO;
import comma.sist.tourist.dao.TouristVO;
import comma.sist.user.dao.UserVO;
import comma.sist.wish.dao.WishVO;

public class TouristDAO {

private static SqlSessionFactory   ssf;
   
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
       List<TouristVO> list = session.selectList("touristFiveData", map); // 1-5��ȣ������ tourist���� ��������鰡����
       List<TextVO> list2 = new ArrayList<TextVO>(); // �̰��� �����ϰڴ�.
 
       for(TouristVO tvo : list) {
          String tid = tvo.getUser_id();   //1.����� id������  null...
          int tno = tvo.getText_no();      //2.����� text��ȣ ������	    
          
          UserVO uv = session.selectOne("touristUserData", tid); // users����user_id�� ��ġ�ϴ� 5���� ������ ������
          TextVO tv = session.selectOne("touristTextData", tno); // text���� text_no�� ��ġ�ϴ� 5���� ������ ������
          //System.out.println("�����׽�Ʈ:"+tv.getText_time1()+","+tv.getText_time2());
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
    
    //2. tourist����
   public static List<TextVO> tourist_sort(Map map,String type) { // map=start,end,place,date  //type=cost,newest
      SqlSession session = ssf.openSession(); // ��ü����   
      
      List<TouristVO> list = new ArrayList<TouristVO>();
      if(type.equals("cost")){      //1.���ݼ�
         list = session.selectList("touristSortPrice", map); // 1-5��ȣ������ tourist������������鰡����
      }else if(type.equals("newest")){   	//2.������ڼ�
         list = session.selectList("touristSearchData", map); 
      }
      List<TextVO> list2 = new ArrayList<TextVO>(); // �̰��� �����ϰڴ�.
      
      for(TouristVO tvo : list) {
         String tid = tvo.getUser_id();   //1.����� id������  null...
         int tno = tvo.getText_no();      //2.����� text��ȣ ������         
         UserVO uv = session.selectOne("touristUserData", tid); // users����user_id�� ��ġ�ϴ� 5���� ������ ������       
         TextVO tv = session.selectOne("touristTextData", tno); // text���� text_no�� ��ġ�ϴ� 5���� ������ ������
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
   
   
   //2. tourist�˻�(����,��¥)
   public static List<TextVO> tourist_search(Map map) { //5���� ������,JEJU,20160331  
      SqlSession session = ssf.openSession(); // ��ü����       
      List<TouristVO> list=session.selectList("touristSearchData", map); // tour���� ����&��¥ ������ 5�� ����Ʈ ����
 
      List<TextVO> list2 = new ArrayList<TextVO>(); // �̰��� �����ϰڴ�.
      for(TouristVO tvo : list) {
         String tid = tvo.getUser_id();   //1.����� id������  null...
            
         int tno = tvo.getText_no();      //2.����� text��ȣ ������
            
            
         
         UserVO uv = session.selectOne("touristUserData", tid); // users����user_id�� ��ġ�ϴ� 5���� ������ ������
            
         
         TextVO tv = session.selectOne("touristTextData", tno); // text���� text_no�� ��ġ�ϴ� 5���� ������ ������
            

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
   
   
      
      //2.tourist�Խ���_ �� ������ �� ���ϱ�
      public static int boardTotalPage(){
         SqlSession session=ssf.openSession();      //��ü����
         int count=session.selectOne("tourRowCount");   //�� ���� ���ϱ�
         session.close();      //�ݾ���� �ȴ���!!!
         return (int)(Math.ceil(count/5.0));
      }
      
      //2.tourist�Խ��� �˻� ��_ �� ������ �� ���ϱ�
      public static int searchTotalPage(Map map){
          SqlSession session=ssf.openSession();      //��ü����
          
          int count=session.selectOne("tourRowCountSearch",map);   //�� ���� ���ϱ�
          session.close();      //�ݾ���� �ȴ���!!!
          return (int)(Math.ceil(count/5.0));
       }
      
      
      //���ø���Ʈ
      public static int wishSearch(Map map){
    	     
          SqlSession session = ssf.openSession();
          int count=session.selectOne("wishSearch",map);
          
          session.close();
          return count;
          
        } 
      
      //���ø���Ʈ �߰�
      public static void wishInsert(WishVO vo){
          SqlSession session = ssf.openSession(true);
          session.insert("wishInsert",vo);
          session.close();
          
        } 
      
      
      //������ȸ
      public static int resSearch(Map map){
    	     
          SqlSession session = ssf.openSession();
          int count=session.selectOne("resSearch",map);
          
          session.close();
          return count;
          
        }
      
      //���� �߰�
      public static void resInsert(Map map){
          SqlSession session = ssf.openSession(true);
          session.insert("resInsert",map);
          session.close();
          
        } 
      
      
      
     // �Խ��� �۾���
     public static void textInsert(TextVO tvo){
     
        SqlSession session = ssf.openSession(true);
        session.insert("textInsert1",tvo);
        session.close();
        
      } // textInsert(TextVO vo)
        
     
     public static void touristWrite(TextVO tvo){
        
        SqlSession session = ssf.openSession(true);
        session.insert("touristInsert",tvo);
        session.close();
        
     } // touristWrite(TextVO tvo)
      
     
     //����
     public static int tourMap(String text_loc){	//seoul
	     
         SqlSession session = ssf.openSession();
         int count=session.selectOne("tourMap",text_loc);
         
         session.close();
         return count;
         
       }
     
   
     
    //������
   public static List<WishVO> myWishTorist(String id){
      SqlSession session = ssf.openSession();
      List<WishVO> vo=session.selectList("myWishTorist",id);
      session.close();
      return vo;
   }
   
   public static void touristDelete(int no){
		
		SqlSession session = ssf.openSession();
		int text_no = session.selectOne("textnoSearch1",no);
		//System.out.println(text_no);
		session.close();
		
		session = ssf.openSession(true);
		// wish, reservation, review
		session.delete("reservationTourDelete",no);
		session.delete("wishTourDelete",no);
		session.delete("TourDelete", no);
		session.delete("textDelete",text_no);
		session.close();
	}
   
   
   
   
   
   //���� �� ������ �۵� ����
   public static List<TextVO> myTouristWriter(String id){
      SqlSession session=ssf.openSession();
      //System.out.println("dao����tour:"+id);
      List<TextVO> vo = session.selectList("myTouristWriter",id);
      session.close();
      return vo;
   }
   
   //������ �ο� �� ���ϱ� 
 	public static String myTourWriterPerson(int no){
 		SqlSession session=ssf.openSession();
 		String resPerson = session.selectOne("myresPerson2",no);
 		session.close();
 		return resPerson;
 	}
 	
 	//������ �ο� �������ϱ�
 	public static List<TouristResVO> tourResInfo(int no){	//no=17
 		SqlSession session=ssf.openSession();
 		List<TouristResVO> vo = session.selectList("tourResInfo",no);
 		if(vo.isEmpty()){
 			//System.out.println("dao���������");
 			session.close();
 			return null;
 		}else{
 			//System.out.println("������:"+vo.size());
	 		for(int i=0; i<vo.size(); i++){
	 			//System.out.println(vo.get(i).getUser_nick()+",ID:"+vo.get(i).getUser_id());
	 		}
	 		session.close();
 		}
 		return vo;
 	}
 	
 	//�����ϱ�
	public static void mytourOkUpdate(Map map){
 		SqlSession session=ssf.openSession(true);
 		
 		session.update("mytourOkUpdate",map);
 		
 		session.close();
 	}
	//������ ���� ���ϱ�
		public static void mytourNotOkUpdate(Map map){
	 		SqlSession session=ssf.openSession(true);
	 	
	 		session.update("mytourNotOkUpdate",map);
	 	
	 		session.close();
	 	}
   
}
