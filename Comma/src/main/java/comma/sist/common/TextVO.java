package comma.sist.common;

import java.util.*;

import comma.sist.guide.dao.GuideVO;
import comma.sist.reservation.dao.ReservationVO;
import comma.sist.review.dao.ReviewVO;
import comma.sist.tourist.dao.TouristVO;
import comma.sist.user.dao.UserVO;
import comma.sist.wish.dao.WishVO;

public class TextVO {

	private int		text_no;
	private String	text_loc;
	private String	text_cost;
	private int		text_total_person;
	private Date	text_regdate;
	private String	text_time1;
	private String	text_time2;
	private String	text_time3; // am pm (start)
	private String	text_time4; // am pm (end)
	private String	text_move;
	private int		text_hit;
	private String	text_end;
	private String	text_tour_date;
	private GuideVO guidevo=new GuideVO();
	private UserVO uservo=new UserVO();
	private TouristVO touristvo=new TouristVO();
	private ReservationVO reservationvo=new ReservationVO();
	private ReviewVO reviewvo=new ReviewVO();
	private WishVO wishvo=new WishVO();
	
	private int		text_time;		// 소요시간
	
	
	public String getText_time3() {
		return text_time3;
	}
	public void setText_time3(String text_time3) {
		this.text_time3 = text_time3;
	}
	public String getText_time4() {
		return text_time4;
	}
	public void setText_time4(String text_time4) {
		this.text_time4 = text_time4;
	}
	public int getText_time() {
		return text_time;
	}
	public void setText_time(int text_time) {
		this.text_time = text_time;
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
	public UserVO getUservo() {
		return uservo;
	}
	public void setUservo(UserVO uservo) {
		this.uservo = uservo;
	}
	public TouristVO getTouristvo() {
		return touristvo;
	}
	public void setTouristvo(TouristVO touristvo) {
		this.touristvo = touristvo;
	}

	public ReviewVO getReviewvo() {
		return reviewvo;
	}
	public void setReviewvo(ReviewVO reviewvo) {
		this.reviewvo = reviewvo;
	}
	public WishVO getWishvo() {
		return wishvo;
	}
	public void setWishvo(WishVO wishvo) {
		this.wishvo = wishvo;
	}
	public int getText_no() {
		return text_no;
	}
	public void setText_no(int text_no) {
		this.text_no = text_no;
	}
	public String getText_loc() {
		return text_loc;
	}
	public void setText_loc(String text_loc) {
		this.text_loc = text_loc;
	}
	public String getText_cost() {
		return text_cost;
	}
	public void setText_cost(String text_cost) {
		this.text_cost = text_cost;
	}
	public int getText_total_person() {
		return text_total_person;
	}
	public void setText_total_person(int text_total_person) {
		this.text_total_person = text_total_person;
	}	
	public Date getText_regdate() {
		return text_regdate;
	}
	public void setText_regdate(Date text_regdate) {
		this.text_regdate = text_regdate;
	}
	public String getText_time1() {
		return text_time1;
	}
	public void setText_time1(String text_time1) {
		this.text_time1 = text_time1;
	}
	public String getText_time2() {
		return text_time2;
	}
	public void setText_time2(String text_time2) {
		this.text_time2 = text_time2;
	}
	public String getText_move() {
		return text_move;
	}
	public void setText_move(String text_move) {
		this.text_move = text_move;
	}
	public int getText_hit() {
		return text_hit;
	}
	public void setText_hit(int text_hit) {
		this.text_hit = text_hit;
	}
	public String getText_end() {
		return text_end;
	}
	public void setText_end(String text_end) {
		this.text_end = text_end;
	}
	public String getText_tour_date() {
		return text_tour_date;
	}
	public void setText_tour_date(String text_tour_date) {
		this.text_tour_date = text_tour_date;
	}
	
	
	
	
	
	
}
