package comma.sist.guide.dao;

import java.io.*;
import java.util.*;
import org.apache.ibatis.io.Resources;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.apache.ibatis.session.SqlSessionFactoryBuilder;

import comma.sist.common.*;
import comma.sist.tourist.dao.TouristVO;

import comma.sist.user.dao.UserVO;

public class GuideDAO {

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
	
	
	public static List<TextVO> guideAllData(Map map){
		
		SqlSession session = ssf.openSession();
		List<TextVO> list = session.selectList("guideAllData",map);
		session.close();	
		
		costModify(list);
		
		return list;
		
	} // guideAllData()
	
	// ���ݿ� 3�ڸ��� ���� ,���̱�
	public static void costModify(List<TextVO> list){
		
		for(TextVO vo:list){
			String cost = vo.getText_cost();
			String s="";
			if(cost.length()%3==0){
				for(int i=1; i<=cost.length(); i+=3){
					s += cost.substring(i-1,i+2)+",";
				}
				s = s.substring(0,s.length()-1);
				vo.setText_cost(s);
			}
			else if(cost.length()%3==1){
				s = cost.substring(0,1)+",";
				for(int i=1; i<=cost.length(); i+=3){ // 1,4 4,7
					if(i<cost.length())
						s += cost.substring(i,i+3)+",";
				}
				s = s.substring(0,s.length()-1);
				vo.setText_cost(s);
			}
			else if(cost.length()%3==2){
				s = cost.substring(0,2)+",";
				for(int i=2; i<=cost.length(); i+=3){ // 2,5 5,8
					if(i<cost.length())
						s += cost.substring(i,i+3)+",";
				}
				s = s.substring(0,s.length()-1);
				vo.setText_cost(s);
			}
		}
	} // costModify
	
	public static void imgArrangement(List<TextVO> list){
		
		 // �������� ������ ���
	     List<String> imgList = new ArrayList<String>();
	     for(TextVO vo:list){
			
	    	 if(vo.getGuidevo().getGuide_img()!=null){
	    		 StringTokenizer st = new StringTokenizer(vo.getGuidevo().getGuide_img(), "|");
	    		 String ss = st.nextToken();
	    		 int k=0;
	    		 while(st.hasMoreTokens()){
	    			 if(k==0) {
	    				 imgList.add(ss);
	    				 k++;
	    			 }
	    			 else{
	    				 imgList.add(st.nextToken());
	    			 }
	    		 }
	    		 if(imgList.size()>1){
	    			 vo.getGuidevo().setGuide_img(ss);
	    		 }
	    	 }
	     }
		
	} // ������ ������ ���
	
	public static void avgStar(List<TextVO> list){
		
		// ���� ���
		int reviewCount = 0;
		for(TextVO vo:list){
			List<Integer> gnList = GuideDAO.guideAllNumberWrited(vo.getUservo().getUser_id());
			double sum = 0;
			if(gnList!=null){
				for(int number:gnList){
					 String s = GuideDAO.guideStarSum(number);
					 if(s!=null){
						 sum += Double.parseDouble(s);
						 reviewCount++;
					 }
				}
				int avg = (int)Math.round(sum/reviewCount);
				vo.setNum(avg);
			}
			reviewCount = 0;
		}
		
	} // ���� ��� ���ϱ�
	
	
	public static String guideStarSum(int num){
		SqlSession session = ssf.openSession();
		String avg = session.selectOne("guideStarSum",num);
		session.close();
		return avg;
	} // ���̵� ��պ���
	
	
	public static int guideTotalPage(){
		
		SqlSession session = ssf.openSession();
		int total  = session.selectOne("guideTotalPage");
		session.close();
		
		return total;
		
	}
	
	public static TextVO guideInfoData(int no){
		
		SqlSession session = ssf.openSession();
		TextVO vo = session.selectOne("guideInfo",no);
		session.close();
		
		return vo;
		
	} // guideAllData()
	
	
	
	public static void textInsert(TextVO vo){
		
		SqlSession session = ssf.openSession(true);
		session.insert("textInsert",vo);
		session.close();
		
	} // textInsert(GuideVO vo)
		
	
	public static void guideInsert(TextVO vo){
		
		SqlSession session = ssf.openSession(true);
		session.insert("guideInsert",vo);
		session.close();
		
	} // guideInsert(GuideVO vo)
	
	public static void guideHitIncrease(int no){
		
		SqlSession session = ssf.openSession(true);
		session.update("guideHitIncrease",no);
		session.close();
	} // guideHitIncrease(int no)
	
	public static int guideHitInfo(int no){
		
		SqlSession session = ssf.openSession(true);
		int text_hit = session.selectOne("guideHitInfo",no);
		session.close();
		return text_hit;
	} //  guideHitInfo(int no)
	

	public static void guideDelete(int no){
		
		SqlSession session = ssf.openSession();
		int text_no = session.selectOne("textnoSearch",no);
		System.out.println(text_no);
		session.close();
		
		session = ssf.openSession(true);
		// wish, reservation, review
		session.delete("reviewGuideDelete",no);
		session.delete("reservationGuideDelete",no);
		session.delete("wishGuideDelete",no);
		session.delete("guideDelete", no);
		session.delete("textDelete",text_no);
		session.close();
	}
	
	public static int guideImgisExist(String img){
		
		SqlSession session = ssf.openSession();
		int count = session.selectOne("guideImgisExist",img);
		session.close();
		return count;
	}
	

	// ���̵� ����� ���� �󼼺���
	public static UserVO guideInfoShow(int guide_no){
		
		SqlSession session = ssf.openSession();
		UserVO vo = session.selectOne("guideInfoShow",guide_no);
		session.close();
		
		return vo;
	}
	
	public static List<Integer> guideAllNumberWrited(String id){
		
		SqlSession session = ssf.openSession();
		List<Integer> list = session.selectList("guideAllNumberWrited",id);
		session.close();
		return list;
	}
	
	public static TextVO guideAllArticle(int guide_no){
		
		SqlSession session = ssf.openSession();
		TextVO vo = session.selectOne("guideAllArticle",guide_no);
		session.close();
		
		String cost = vo.getText_cost();
		String s="";
		if(cost.length()%3==0){
			for(int i=1; i<=cost.length(); i+=3){
				s += cost.substring(i-1,i+2)+",";
			}
			s = s.substring(0,s.length()-1);
			vo.setText_cost(s);
		}
		else if(cost.length()%3==1){
			s = cost.substring(0,1)+",";
			for(int i=1; i<=cost.length(); i+=3){ // 1,4 4,7
				if(i<cost.length())
					s += cost.substring(i,i+3)+",";
			}
			s = s.substring(0,s.length()-1);
			vo.setText_cost(s);
		}
		else if(cost.length()%3==2){
			s = cost.substring(0,2)+",";
			for(int i=2; i<=cost.length(); i+=3){ // 2,5 5,8
				if(i<cost.length())
					s += cost.substring(i,i+3)+",";
			}
			s = s.substring(0,s.length()-1);
			vo.setText_cost(s);
		}
		
		return vo;
	}
	
	public static List<TextVO> guideReview(int guide_no){
		
		SqlSession session = ssf.openSession();
		/*TextVO vo = session.selectOne("guideReview",guide_no);*/
		List<TextVO> list = session.selectList("guideReview",guide_no);
		session.close();
		return list;
	}
	

	public static List<TextVO> myGuideWriter(String id){
		SqlSession session=ssf.openSession();
		List<TextVO> vo = session.selectList("myGuideWriter",id);		
		session.close();
		return vo;
	}
	
	//������ �ο� �� ���ϱ� 
	public static String myGuideWriterPerson(int no){
		SqlSession session=ssf.openSession();
		String resPerson = session.selectOne("myresPerson",no);
		session.close();
		return resPerson;
	}
	
	public static void searchHitIncrease(String loc){
		SqlSession session = ssf.openSession(true);
		session.update("searchHitIncrease",loc);
		session.close();
	}
	
	
	public static List<TextVO> bestGuide(){
		SqlSession session=ssf.openSession();
		List<TextVO> vo=session.selectList("bestGuide");
		session.close();
		return vo;
	}
	
	//���̵�˻�
	public static List<TextVO> guideSearchPlace(Map map){
		SqlSession session=ssf.openSession();
		List<TextVO> list = session.selectList("guideSearchPlace",map);
		session.close();
		costModify(list);
		return list;
	}
	//�˻��� �������� ���ϱ�
	public static int guideSearchTotalPage(String place){		
		SqlSession session = ssf.openSession();
		int total  = session.selectOne("guideSearchTotalPage",place);
		session.close();		
		return total;		
	}
	
	//detail�˻�
	public static List<TextVO> guideSearchDe(Map map){
		SqlSession session=ssf.openSession();
		List<TextVO> list = session.selectList("guideSearchDe",map);
		session.close();
		costModify(list);
		return list;
	}
	//detail�˻��� �������� ���ϱ�
	public static int guideSearchDeTotalPage(Map map){		
		SqlSession session = ssf.openSession();
		int total  = session.selectOne("guideSearchDeTotalPage",map);
		session.close();
		
		return total;		
	}
		

		
	// guide����_place---------------------------------
	public static List<TextVO> guide_sort_place(Map map, String type) { 	//map=start,end,place //type=cost,newest
		SqlSession session = ssf.openSession(); // ��ü����

		List<TextVO> list = new ArrayList<TextVO>();
		if (type.equals("cost")) { 			// 1.���ݼ�
			list = session.selectList("guideSortPrice", map); // 1-5��ȣ������
																// tourist������������鰡����
		} else if (type.equals("newest")) { // 2.������ڼ�
			list = session.selectList("guideSortNewest", map);
			
		}else if(type.equals("ranking")){	//3.��ŷ��
			
		}
		session.close();
		costModify(list);
		return list;
	}
	
	// guide����_place,method,---------------------------------
		public static List<TextVO> guide_sort_detail(Map map, String type) { 	//map=start,end,place,method,people,date //type=cost,newest
			SqlSession session = ssf.openSession(); // ��ü����

			List<TextVO> list = new ArrayList<TextVO>();
			if (type.equals("cost")) { 			// 1.���ݼ�
				list = session.selectList("guideSortPriceDe", map); // 1-5��ȣ������
																	// tourist������������鰡����
			} else if (type.equals("newest")) { // 2.������ڼ�
				list = session.selectList("guideSortNewestDe", map);
				
			}else if(type.equals("ranking")){	//3.��ŷ��
				
			}
			session.close();
			costModify(list);
			return list;
		}
	
}
