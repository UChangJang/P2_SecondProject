package comma.sist.tourist.dao;

public class TouristResVO {
	//user_nick,user_sex,user_birth,reservation_check
	private String user_nick;
	private String user_sex;
	private String user_birth;
	private String reservation_check;
	private String user_id;
	
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getUser_nick() {
		return user_nick;
	}
	public void setUser_nick(String user_nick) {
		this.user_nick = user_nick;
	}
	public String getUser_sex() {
		return user_sex;
	}
	public void setUser_sex(String user_sex) {
		this.user_sex = user_sex;
	}
	public String getUser_birth() {
		return user_birth;
	}
	public void setUser_birth(String user_birth) {
		this.user_birth = user_birth;
	}
	public String getReservation_check() {
		return reservation_check;
	}
	public void setReservation_check(String reservation_check) {
		this.reservation_check = reservation_check;
	}
	
	
}
