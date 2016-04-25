package comma.sist.wish.dao;

import comma.sist.common.TextVO;
import comma.sist.guide.dao.GuideVO;
import comma.sist.reservation.dao.ReservationVO;
import comma.sist.tourist.dao.TouristVO;
import comma.sist.user.dao.UserVO;

public class WishVO {	
	private int wish_no;
	private String user_id;
	private int tour_no;
	private int guide_no;
	private GuideVO guidevo=new GuideVO();
	private TouristVO touristvo=new TouristVO();
	private UserVO uservo=new UserVO();
	private TextVO textvo=new TextVO();
	private ReservationVO reservationvo=new ReservationVO();
	
	
	
	public UserVO getUservo() {
		return uservo;
	}
	public void setUservo(UserVO uservo) {
		this.uservo = uservo;
	}
	public TextVO getTextvo() {
		return textvo;
	}
	public void setTextvo(TextVO textvo) {
		this.textvo = textvo;
	}
	public ReservationVO getReservationvo() {
		return reservationvo;
	}
	public void setReservationvo(ReservationVO reservationvo) {
		this.reservationvo = reservationvo;
	}
	public GuideVO getGuidevo() {
		return guidevo;
	}
	public void setGuidevo(GuideVO guidevo) {
		this.guidevo = guidevo;
	}
	public TouristVO getTouristvo() {
		return touristvo;
	}
	public void setTouristvo(TouristVO touristvo) {
		this.touristvo = touristvo;
	}
	public int getWish_no() {
		return wish_no;
	}
	public void setWish_no(int wish_no) {
		this.wish_no = wish_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getTour_no() {
		return tour_no;
	}
	public void setTour_no(int tour_no) {
		this.tour_no = tour_no;
	}
	public int getGuide_no() {
		return guide_no;
	}
	public void setGuide_no(int guide_no) {
		this.guide_no = guide_no;
	}
	

}
