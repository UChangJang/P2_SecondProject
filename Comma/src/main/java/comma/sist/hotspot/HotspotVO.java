package comma.sist.hotspot;

public class HotspotVO {
	
	//tour_theme, text_loc, text_tour_date, text_cost
	private String tour_theme;
	private String text_loc;
	private String text_tour_date;
	private String text_cost;
	private String text_hit;
	private int guide_no;
	
	public String getText_hit() {
		return text_hit;
	}
	public void setText_hit(String text_hit) {
		this.text_hit = text_hit;
	}
	public String getTour_theme() {
		return tour_theme;
	}
	public void setTour_theme(String tour_theme) {
		this.tour_theme = tour_theme;
	}
	public String getText_loc() {
		return text_loc;
	}
	public void setText_loc(String text_loc) {
		this.text_loc = text_loc;
	}
	public String getText_tour_date() {
		return text_tour_date;
	}
	public void setText_tour_date(String text_tour_date) {
		this.text_tour_date = text_tour_date;
	}
	public String getText_cost() {
		return text_cost;
	}
	public void setText_cost(String text_cost) {
		this.text_cost = text_cost;
	}
	public int getGuide_no() {
		return guide_no;
	}
	public void setGuide_no(int guide_no) {
		this.guide_no = guide_no;
	}
}
