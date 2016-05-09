package comma.sist.guide_find;

public class GuideFindVO {
/*
 *  SELECT text_loc, text_cost, text_tour_date,user_id
	FROM text,tour	
	WHERE tour_no=text_no
 */
	private String text_loc;
	private String text_cost;
	private String text_tour_date;
	private String user_id;
	private int text_no;
	
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
	public String getText_tour_date() {
		return text_tour_date;
	}
	public void setText_tour_date(String text_tour_date) {
		this.text_tour_date = text_tour_date;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
}
