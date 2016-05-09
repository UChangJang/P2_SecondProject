package comma.sist.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import com.oreilly.servlet.MultipartRequest;
import com.oreilly.servlet.multipart.DefaultFileRenamePolicy;
import comma.sist.controller.Controller;
import comma.sist.controller.RequestMapping;
import comma.sist.guide.dao.*;

import comma.sist.reservation.dao.ReservationDAO;
import comma.sist.reservation.dao.ReservationVO;
import comma.sist.tourist.dao.TouristDAO;
import comma.sist.user.dao.UserVO;
import comma.sist.wish.dao.WishDAO;
import comma.sist.wish.dao.WishVO;
import comma.sist.common.*;
import java.util.*;
import java.io.*;

@Controller("gc")
public class GuideController {

	
	@RequestMapping("guide.do")
	public String guide(HttpServletRequest request){
				
		// ���̵� ��������
		int totalpage = GuideDAO.guideTotalPage();
		
		// ���� ������
		String page = request.getParameter("page");
		if(page==null) page = "1";
		int curpage = Integer.parseInt(page);
		
		Map map = new HashMap();
		int rowSize = 9;
		int start = (rowSize*curpage) - (rowSize-1);
		int end = rowSize*curpage;
		map.put("start", start);
		map.put("end", end);

		List<TextVO> list = GuideDAO.guideAllData(map);
		GuideDAO.avgStar(list); // ���� ���
		GuideDAO.imgArrangement(list); // ������ ���� ó��
		
		int i=0;
		for(TextVO vo:list){
			int guide_no=vo.getGuidevo().getGuide_no();
			String sumTemp=ReservationDAO.reserveGuideCheck(guide_no);	//���డ������
			if(sumTemp==null) sumTemp="0";
			int sum=Integer.parseInt(sumTemp);							//sum=������ �ο���
			int total=ReservationDAO.reserveGuidePossible(guide_no);	//total=���డ���� �ο���
			System.out.println(i+"�������ռ�:"+total+",�����ο���:"+sum+",���డ�ɼ�:"+(total-sum));
			if(total==sum){						//����Ұ�
				list.get(i).setResNum(1);
			}else if(total-sum<=3){					//�����ӹ�
				list.get(i).setResNum(0);
			}else{
				list.get(i).setResNum(2);
			}
			i++;
		}
		
		request.setAttribute("curpage", page);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("list", list);
		request.setAttribute("jsp", "guide/guide.jsp");
		request.setAttribute("innerjsp", "guideList.jsp");
		return "main.jsp";
	}
	
	
	@RequestMapping("guide_p.do")
	public String guide_p(HttpServletRequest request){
				
		// ���̵� ��������
		int totalpage = GuideDAO.guideTotalPage();
		
		// ���� ������
		String page = request.getParameter("page");
		if(page==null) page = "1";
		int curpage = Integer.parseInt(page);
		
		Map map = new HashMap();
		int rowSize = 9;
		int start = (rowSize*curpage) - (rowSize-1);
		int end = rowSize*curpage;
		map.put("start", start);
		map.put("end", end);		
		
		List<TextVO> list = GuideDAO.guideAllData(map);
		GuideDAO.avgStar(list); // ���� ���
		GuideDAO.imgArrangement(list); // ������ ���� ó��
		
		int i=0;
		for(TextVO vo:list){
			int guide_no=vo.getGuidevo().getGuide_no();
			String sumTemp=ReservationDAO.reserveGuideCheck(guide_no);	//���డ������
			if(sumTemp==null) sumTemp="0";
			int sum=Integer.parseInt(sumTemp);							//sum=������ �ο���
			int total=ReservationDAO.reserveGuidePossible(guide_no);	//total=���డ���� �ο���
			System.out.println(i+"�������ռ�:"+total+",�����ο���:"+sum+",���డ�ɼ�:"+(total-sum));
			if(total==sum){						//����Ұ�
				list.get(i).setResNum(1);
			}else if(total-sum<=3){					//�����ӹ�
				list.get(i).setResNum(0);
			}else{
				list.get(i).setResNum(2);
			}
			i++;
		}
		request.setAttribute("curpage", page);
		request.setAttribute("totalpage", totalpage);
		request.setAttribute("list", list);
		
		return "guide/guideList.jsp";
	}
	
	
	
	@RequestMapping("guideWrite.do")
	public String guideWrite(HttpServletRequest request){
		request.setAttribute("jsp", "guide/guideWrite.jsp");		
		return "main.jsp";
	}
		
	@RequestMapping("guideWrite_ok.do")
	public String guide_Insert(HttpServletRequest request) throws Exception{
		
		request.setCharacterEncoding("EUC-KR");	
		
		// \\211.238.142.74\Users\74\Git\P2_SecondProject\Comma\src\main\webapp\image
		// http://211.238.142.74:8080/controller/image/seoul3.jpg  �̹��� ���� �о�ö�
		// C:\springDev\springStudy\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\Comma\image
		//String path = "\\\\211.238.142.74\\springDev\\springStudy\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\Comma\\image";
		String path = "\\\\211.238.142.74\\Users\\74\\Git\\P2_SecondProject\\Comma\\src\\main\\webapp\\image";
		String enctype = "EUC-KR";
		int	size = 1024*1024*100; 
		
		MultipartRequest mr 
				= new MultipartRequest(request,path,size,enctype,
						new DefaultFileRenamePolicy());
		
		
		String guide_subject = mr.getParameter("guide_subject");
		String guide_loc_intro = mr.getParameter("guide_loc_intro");
		String guide_img = mr.getOriginalFileName("guide_img");
		String guide_detail = mr.getParameter("guide_detail");
		String text_loc = mr.getParameter("text_loc");
		String text_total_person = mr.getParameter("text_total_person");
		String text_cost = mr.getParameter("text_cost");
		String guide_cost_detail = mr.getParameter("guide_cost_detail");
		String text_move = mr.getParameter("text_move");
		String text_time1 = mr.getParameter("text_time1"); // ���� �ð�
		String text_time2 = mr.getParameter("text_time2"); // am/pm
		String text_time3 = mr.getParameter("text_time3"); // �� �ð�
		String text_time4 = mr.getParameter("text_time4"); // am/pm
		String guide_meet = mr.getParameter("guide_meet");	
		String text_tour_date = mr.getParameter("text_tour_date");
		
		String guide_img2 = mr.getOriginalFileName("guide_img2");
		String guide_detail2 = mr.getParameter("guide_detail2");
		String guide_img3 = mr.getOriginalFileName("guide_img3");
		String guide_detail3 = mr.getParameter("guide_detail3");
		
		String guide_map = mr.getParameter("guide_map");
		System.out.println(guide_map);
		
		guide_detail = guide_detail+"\n-\n"+guide_detail2+"\n-\n"+guide_detail3;
		
		if(guide_img2!=null && guide_img3==null){
			guide_img = guide_img + "|" + guide_img2;		
		}else if(guide_img2!=null && guide_img3!=null){
			guide_img = guide_img + "|" + guide_img2 + "|" + guide_img3;	
		}
		
		
		int t_start = Integer.parseInt(text_time1);
		int t_end = Integer.parseInt(text_time3);
		int text_time = 0;
		
		if((text_time2.equals("am") && text_time4.equals("am")) || (text_time2.equals("pm") && text_time4.equals("pm"))){
			text_time = (int)(Math.abs(t_end-t_start));
		}else if((text_time2.equals("am") && text_time4.equals("pm"))){
			t_end += 12;
			text_time = t_end - t_start;
		}else if((text_time2.equals("pm") && text_time4.equals("am"))){
			t_start -= 12;
			text_time = t_end - t_start;
		}
		
		TextVO vo = new TextVO();
		vo.getGuidevo().setGuide_subject(guide_subject);
		vo.getGuidevo().setGuide_loc_intro(guide_loc_intro);
		vo.getGuidevo().setGuide_detail(guide_detail);
		vo.getGuidevo().setGuide_cost_detail(guide_cost_detail);
		vo.getGuidevo().setGuide_meet(guide_meet);
		vo.setText_loc(text_loc);
		vo.setText_total_person(Integer.parseInt(text_total_person));
		vo.setText_cost(text_cost);
		vo.setText_move(text_move);
		vo.setText_time1(text_time1);
		vo.setText_time2(text_time2);
		vo.setText_time3(text_time3);
		vo.setText_time4(text_time4);
		vo.setText_tour_date(text_tour_date);
		vo.setText_time(text_time);
		
		HttpSession session = request.getSession();
		String user_id = (String)session.getAttribute("id");
		vo.getGuidevo().setUser_id(user_id);
		
		//vo.getGuidevo().setGuide_map("�ӽÿ�"); // �ٲ�ߵ�
		vo.getGuidevo().setGuide_map(guide_map);
		
		if(guide_img==null){
			vo.getGuidevo().setGuide_img("");
		}else{

			File f = new File(path+"\\"+guide_img);
			vo.getGuidevo().setGuide_img(guide_img);
		}

		GuideDAO.textInsert(vo);
		GuideDAO.guideInsert(vo);
		
		return "guide/guideWriteOk.jsp";
	}
	
	
	@RequestMapping("guideBoard.do")
	public String guideBoard(HttpServletRequest request){
		
		String no = request.getParameter("no");	// ���̵� �� ��ȣ (guide_no)
		TextVO vo = GuideDAO.guideInfoData(Integer.parseInt(no));
		
		GuideDAO.guideHitIncrease(vo.getText_no()); // ��ȸ�� ����
		int text_hit = GuideDAO.guideHitInfo(vo.getText_no());
		vo.setText_hit(text_hit);
		
		
		// Img �и�
		List<String> imgList = new ArrayList<String>();
		if(vo.getGuidevo().getGuide_img()!=null){
			StringTokenizer st = new StringTokenizer(vo.getGuidevo().getGuide_img(), "|");
			while(st.hasMoreTokens()){
				imgList.add(st.nextToken());
				
			}
		}
		
		// ���� �α��ε� ID �� ���� ID�� ���Ѵ�.
		HttpSession session = request.getSession();
		boolean confirmId = false;
		
		if(vo.getUservo().getUser_id().equals((String)session.getAttribute("id"))){
			confirmId = true;
		}
		
		// ���� �� á���� Ȯ��
		String soldout = ReservationDAO.reserveGuideCheck(Integer.parseInt(no));
		if(soldout==null) soldout="0";
		boolean soldCheck = false;
		if(vo.getText_total_person() == Integer.parseInt(soldout)){
			soldCheck = true;
		}
		
		request.setAttribute("soldCheck", soldCheck);
		request.setAttribute("imgList", imgList);
		request.setAttribute("confirmId", confirmId);
		request.setAttribute("vo", vo);
		request.setAttribute("jsp", "guide/guideBoard.jsp");		

		return "main.jsp";
	}
	
	@RequestMapping("guideUpdate.do")
	public String guideUpdate(HttpServletRequest request){
		
		String no = request.getParameter("no");		
		TextVO vo = GuideDAO.guideInfoData(Integer.parseInt(no));
	
		request.setAttribute("vo", vo);
		request.setAttribute("jsp", "guide/guideUpdate.jsp");		

		return "main.jsp";
	}

	
	@RequestMapping("guideDelete.do")
	public String guideDelete(HttpServletRequest request){
		
		String no = request.getParameter("no");		
		System.out.println("���̵�"+no);
		GuideDAO.guideDelete(Integer.parseInt(no));	

		return "guide/guideDelete.jsp";
	}
	
	@RequestMapping("guideInfo.do")
	public String guideInfo(HttpServletRequest request){
		
		String id = request.getParameter("id");
		String guide_no = request.getParameter("guide_no");
		
		UserVO uvo = GuideDAO.guideInfoShow(Integer.parseInt(guide_no));
		
		// 1. ���̵� ID�� ���� ��� ���̵� �� ��ȣ ���
		List<Integer> gnList = GuideDAO.guideAllNumberWrited(id);
		List<TextVO> list = new ArrayList<TextVO>();
		List<TextVO> reviewList = new ArrayList<TextVO>();
		for(int gn:gnList){
			// 2. ���̵尡 ���� ������ ��´�.
			TextVO vo = GuideDAO.guideAllArticle(gn);
			
			// 3. ���� ������ �ִ� ���
			StringTokenizer st = new StringTokenizer(vo.getGuidevo().getGuide_img(), "|");
			String imgName = st.nextToken();
			vo.getGuidevo().setGuide_img(imgName);
			
			// 4. ����Ʈ�� �߰�
			list.add(vo);
			
			// 5. ����
			List<TextVO> review = GuideDAO.guideReview(gn);
			for(TextVO rvo:review){
				reviewList.add(rvo);
			}			
		}
			
		request.setAttribute("uvo", uvo);
		request.setAttribute("list", list);
		request.setAttribute("reviewList", reviewList);
		request.setAttribute("jsp", "guide/guideInfo.jsp");
		
		return "main.jsp";
	}
		
	

	//�����ϱ�
	@RequestMapping("reserveGuide.do")
	public String reserveGuide(HttpServletRequest req) throws Exception{
		
		req.setCharacterEncoding("EUC-KR");
		HttpSession session = req.getSession();
		
		String guide_no = req.getParameter("guide_no");
		String user_id = (String)session.getAttribute("id");
		String reservation_person = req.getParameter("reservation_person");
		
		ReservationVO vo = new ReservationVO();
		vo.setGuide_no(Integer.parseInt(guide_no));
		vo.setUser_id(user_id);
		vo.setReservation_person(Integer.parseInt(reservation_person));		
		
		String sumTemp=ReservationDAO.reserveGuideCheck(Integer.parseInt(guide_no));	//���డ������
		if(sumTemp==null) sumTemp="0";
		
		int sum=Integer.parseInt(sumTemp);
		int total=ReservationDAO.reserveGuidePossible(Integer.parseInt(guide_no));
		int res=Integer.parseInt(reservation_person);
		
		int count=ReservationDAO.reserveGuideExist(vo);
		
		if(total>=sum+res && count==0){					//����!
			ReservationDAO.reserveGuide(vo);		
			req.setAttribute("jsp", "mypage/mypage.jsp");
		}else{								//����Ұ�!
			req.setAttribute("msg", "You can not reserve.<br/> The number of people who can reserve is already full.<br/> "
					+ "Or You already made an appointment.<br/>Find other guide...");
			req.setAttribute("jsp", "error.jsp");
		}

		return "main.jsp";
	}
	
	
	@RequestMapping("wishGuide.do")
	public String wish_ok(HttpServletRequest request){
    
	      String guide_no = request.getParameter("guide_no");
	      
	      WishVO vo = new WishVO();
	      vo.setGuide_no(Integer.parseInt(guide_no));
	      
	      HttpSession session = request.getSession();
	      String user_id = (String)session.getAttribute("id");
	      vo.setUser_id(user_id);
     
	      WishDAO.guideWishOk(vo);
	      request.setAttribute("guide_no", guide_no);
	      
	      return "guide/guideWishOk.jsp";
	}
	
	//���̵� �˻�
	@RequestMapping("guide_search.do")
	public String guide_search(HttpServletRequest request){
		
	      String place = request.getParameter("place");
	      	
	      //�� ������
	      int totalpage = GuideDAO.guideSearchTotalPage(place);
	      if(totalpage==0) totalpage=1;
	      // ���� ������
			String page = request.getParameter("page");
			if(page==null) page = "1";
			int curpage = Integer.parseInt(page);
			
			Map map = new HashMap();
			int rowSize = 9;
			int start = (rowSize*curpage) - (rowSize-1);
			int end = rowSize*curpage;
			map.put("start", start);
			map.put("end", end);
			map.put("place", place);
			
	      List<TextVO> list= GuideDAO.guideSearchPlace(map);
	      GuideDAO.imgArrangement(list);
	      GuideDAO.avgStar(list); // ���� ���
	      
	      // ���̵� �˻� ��Ʈ�� ����
	      GuideDAO.searchHitIncrease(place);
			int i=0;
			for(TextVO vo:list){
				int guide_no=vo.getGuidevo().getGuide_no();
				String sumTemp=ReservationDAO.reserveGuideCheck(guide_no);	//���డ������
				if(sumTemp==null) sumTemp="0";
				int sum=Integer.parseInt(sumTemp);							//sum=������ �ο���
				int total=ReservationDAO.reserveGuidePossible(guide_no);	//total=���డ���� �ο���
				System.out.println(i+"�������ռ�:"+total+",�����ο���:"+sum+",���డ�ɼ�:"+(total-sum));
				if(total==sum){						//����Ұ�
					list.get(i).setResNum(1);
				}else if(total-sum<=3){					//�����ӹ�
					list.get(i).setResNum(0);
				}else{
					list.get(i).setResNum(2);
				}
				i++;
			}
			
	      request.setAttribute("list", list);
	      request.setAttribute("curpage", curpage);
	      request.setAttribute("totalpage", totalpage);
	      return "guide/guideList.jsp";
	}

	//���̵� detail �˻�
	@RequestMapping("guide_search_detail.do")
	public String guide_search_detail(HttpServletRequest request){

		String place = request.getParameter("place");
		String method = request.getParameter("method");
		String people = request.getParameter("people");
		String date = request.getParameter("date");

		Map map = new HashMap();
		map.put("place", place);
		map.put("method", method);
		map.put("people", Integer.parseInt(people));
		map.put("date", date);

		// �� ������
		int totalpage = GuideDAO.guideSearchDeTotalPage(map);
		System.out.println("����������:" + totalpage);
		if (totalpage == 0)
			totalpage = 1;

		// ���� ������
		String page = request.getParameter("page");
		if (page == null)
			page = "1";
		int curpage = Integer.parseInt(page);

		int rowSize = 9;
		int start = (rowSize * curpage) - (rowSize - 1);
		int end = rowSize * curpage;
		map.put("start", start);
		map.put("end", end);

	      List<TextVO> list= GuideDAO.guideSearchDe(map);
	      GuideDAO.imgArrangement(list); // ������ ���� ó��
	      GuideDAO.avgStar(list); // ���� ���
	      
	      // ���̵� �˻� ��Ʈ�� ����
	      GuideDAO.searchHitIncrease(place);
			int i=0;
			for(TextVO vo:list){
				int guide_no=vo.getGuidevo().getGuide_no();
				String sumTemp=ReservationDAO.reserveGuideCheck(guide_no);	//���డ������
				if(sumTemp==null) sumTemp="0";
				int sum=Integer.parseInt(sumTemp);							//sum=������ �ο���
				int total=ReservationDAO.reserveGuidePossible(guide_no);	//total=���డ���� �ο���
				System.out.println(i+"�������ռ�:"+total+",�����ο���:"+sum+",���డ�ɼ�:"+(total-sum));
				if(total==sum){						//����Ұ�
					list.get(i).setResNum(1);
				}else if(total-sum<=3){					//�����ӹ�
					list.get(i).setResNum(0);
				}else{
					list.get(i).setResNum(2);
				}
				i++;
			}
			
	      request.setAttribute("list", list);
	      request.setAttribute("curpage", curpage);
	      request.setAttribute("totalpage", totalpage);
	      return "guide/guideList.jsp";
	}
	
		// ���̵� ����
	   @RequestMapping("guide_sort.do")
	  public String tourist_sort(HttpServletRequest req) throws Exception{
		   String place = req.getParameter("place"); 	// 1.���
		   String method = req.getParameter("method"); 	// 2.�̵�����
		   String people = req.getParameter("people"); 	// 3.�ο�
		   String date = req.getParameter("date"); 		// 4.��¥
		   String type = req.getParameter("type"); 		// 5.����Ÿ��
		  
		   String page = req.getParameter("page"); // page=������������..ó���� ������ 1page
			if (page == null) {
				page = "1";
			}
			int curpage = Integer.parseInt(page);
			Map map = new HashMap();
			int rowSize = 9;
			int start = (curpage * rowSize) - (rowSize - 1);
			int end = curpage * rowSize;
			map.put("start", start);		//���۹�ȣ�� ����ȣ ����
			map.put("end", end);
			map.put("place", place);
			System.out.println("���۹�ȣ:"+start+",����ȣ:"+end);
			int totalpage=1;
			List<TextVO> list = new ArrayList<TextVO>();
			
		   if(method==null || people=="" || date==""){											//1.������ �˻�
			   list = GuideDAO.guide_sort_place(map, type); //start,end,place _ type
			   totalpage=GuideDAO.guideSearchTotalPage(place);   //����������
			   
		   }else if(method != null && people!="" && date!=""){									//2.detail�� �˻�
			   map.put("method", method);
			   map.put("people", people);
			   map.put("date", date);
			   list = GuideDAO.guide_sort_detail(map, type); 	//start,end,place _ type
			   GuideDAO.imgArrangement(list); // ������ ���� ó��
			   GuideDAO.avgStar(list); // ���� ���
			 
			   totalpage=GuideDAO.guideSearchDeTotalPage(map);   //����������
		   }

		   if (totalpage == 0)
				totalpage = 1;
			int i=0;
			for(TextVO vo:list){
				int guide_no=vo.getGuidevo().getGuide_no();
				String sumTemp=ReservationDAO.reserveGuideCheck(guide_no);	//���డ������
				if(sumTemp==null) sumTemp="0";
				int sum=Integer.parseInt(sumTemp);							//sum=������ �ο���
				int total=ReservationDAO.reserveGuidePossible(guide_no);	//total=���డ���� �ο���
				System.out.println(i+"�������ռ�:"+total+",�����ο���:"+sum+",���డ�ɼ�:"+(total-sum));
				if(total==sum){						//����Ұ�
					list.get(i).setResNum(1);
				}else if(total-sum<=3){					//�����ӹ�
					list.get(i).setResNum(0);
				}else{
					list.get(i).setResNum(2);
				}
				i++;
			}
			
	      req.setAttribute("curpage", curpage);
	      req.setAttribute("totalpage", totalpage);
	      req.setAttribute("list", list);      
	      
	      return "guide/guideList.jsp";
	   }
			
	   //����ġ
	   @RequestMapping("quickSearch_ok.do")
		public String quickSearch_ok(HttpServletRequest req){

		   	String place = req.getParameter("place"); 		// 1.���
			String method = req.getParameter("method"); 	// 2.�̵�����
			String people = req.getParameter("people"); 	// 3.�ο�
			String date = req.getParameter("date"); 		// 4.��¥
			   
			Map map = new HashMap();
			map.put("place", place);
			map.put("method", method);
			map.put("people", Integer.parseInt(people));
			map.put("date", date);

			// �� ������
			int totalpage = GuideDAO.guideSearchDeTotalPage(map);
			if (totalpage == 0)
				totalpage = 1;

			// ���� ������
			String page = req.getParameter("page");
			if (page == null)
				page = "1";
			int curpage = Integer.parseInt(page);

			int rowSize = 9;
			int start = (rowSize * curpage) - (rowSize - 1);
			int end = rowSize * curpage;
			map.put("start", start);
			map.put("end", end);

		    List<TextVO> list= GuideDAO.guideSearchDe(map);	      
			
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
			
			GuideDAO.avgStar(list); // ���� ���
			GuideDAO.imgArrangement(list); // ������ ���� ó��

			int i=0;
			for(TextVO vo:list){
				int guide_no=vo.getGuidevo().getGuide_no();
				String sumTemp=ReservationDAO.reserveGuideCheck(guide_no);	//���డ������
				if(sumTemp==null) sumTemp="0";
				int sum=Integer.parseInt(sumTemp);							//sum=������ �ο���
				int total=ReservationDAO.reserveGuidePossible(guide_no);	//total=���డ���� �ο���
				System.out.println(i+"�������ռ�:"+total+",�����ο���:"+sum+",���డ�ɼ�:"+(total-sum));
				if(total==sum){						//����Ұ�
					list.get(i).setResNum(1);
				}else if(total-sum<=3){					//�����ӹ�
					list.get(i).setResNum(0);
				}else{
					list.get(i).setResNum(2);
				}
				i++;
			}
			
			req.setAttribute("place", place);
			req.setAttribute("method", method);
			req.setAttribute("people", people);
			req.setAttribute("date", date);
			
			req.setAttribute("curpage", page);
			req.setAttribute("totalpage", totalpage);	
			req.setAttribute("jsp", "guide/guide.jsp");
			req.setAttribute("list", list);
			req.setAttribute("innerjsp", "guideList.jsp");
			return "main.jsp";
		}
	   
}
