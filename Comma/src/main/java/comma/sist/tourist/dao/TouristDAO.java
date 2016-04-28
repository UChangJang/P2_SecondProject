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
      public static List<TouristVO> touristFiveData(Map map){   //map=1,5
         SqlSession session=ssf.openSession();      //��ü����
         List<TouristVO> list=session.selectList("touristFiveData",map);      //1-5��ȣ������ tourist���� ��������� ������
         
         List<TouristVO> list2=new ArrayList<TouristVO>();               //�̰��� �����ϰڴ�.
         
         for(TouristVO tvo:list){
            String tid=tvo.getUser_id();
            
            int tno=tvo.getText_no();
           
           // System.out.println("here@!"+tvo.getTour_theme());
            UserVO uv=session.selectOne("touristUserData",tid);   //users���� user_id�� ��ġ�ϴ� 5���� ������ ������
           // System.out.println(uv.getUser_nick());
            TextVO tv=session.selectOne("touristTextData",tno);   //text���� text_no�� ��ġ�ϴ� 5���� ������ ������
            //System.out.println(tv.getText_loc());
         
           // tvo.setUvo(uv);
           // tvo.setTvo(tv);
            list2.add(tvo);
         }
         session.close();         
         return list2;      
      }
      
      
      //2.tourist�Խ��� �� ������ �� ���ϱ�
      public static int boardTotalPage(){
         SqlSession session=ssf.openSession();      //��ü����
         int count=session.selectOne("tourRowCount");   //�� ���� ���ϱ�
         session.close();      //�ݾ���� �ȴ���!!!
         return (int)(Math.ceil(count/5.0));
      }
      // �Խ��� �۾�
      public static void textInsert(TextVO tvo){
  		
  		SqlSession session = ssf.openSession(true);
  		session.insert("textInsert1",tvo);
  		session.close();
  		
  	} // guideInsert(GuideVO vo)
  		
  	
  	public static void touristWrite(TextVO tvo){
  		
  		SqlSession session = ssf.openSession(true);
  		session.insert("touristInsert",tvo);
  		session.close();
  		
  	} 
      
   
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