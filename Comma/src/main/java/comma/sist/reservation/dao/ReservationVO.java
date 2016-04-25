package comma.sist.reservation.dao;

public class ReservationVO {
	private int reservation_no;
	private String user_id;
	private int guide_no;
	private int tour_no;
	private int reservation_person;
	private String reservation_check;
	private String reservation_cost;
	public int getReservation_no() {
		return reservation_no;
	}
	public void setReservation_no(int reservation_no) {
		this.reservation_no = reservation_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public int getGuide_no() {
		return guide_no;
	}
	public void setGuide_no(int guide_no) {
		this.guide_no = guide_no;
	}
	public int getTour_no() {
		return tour_no;
	}
	public void setTour_no(int tour_no) {
		this.tour_no = tour_no;
	}
	public int getReservation_person() {
		return reservation_person;
	}
	public void setReservation_person(int reservation_person) {
		this.reservation_person = reservation_person;
	}
	public String getReservation_check() {
		return reservation_check;
	}
	public void setReservation_check(String reservation_check) {
		this.reservation_check = reservation_check;
	}
	public String getReservation_cost() {
		return reservation_cost;
	}
	public void setReservation_cost(String reservation_cost) {
		this.reservation_cost = reservation_cost;
	}
	
	
}
