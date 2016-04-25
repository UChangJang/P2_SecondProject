package comma.sist.guide.dao;

import comma.sist.common.*;

public class GuideVO {

	private int		guide_no;
	private String	user_id;				//fk
	private String	guide_subject;
	private int		text_no;				//fk
	private String	guide_loc_intro;
	private String	guide_detail;
	private String	guide_meet;
	private String	guide_img;
	private String	guide_map;
	private String	guide_cost_detail;
	private TextVO	textvo = new TextVO();
	
	
	public String getGuide_cost_detail() {
		return guide_cost_detail;
	}
	public void setGuide_cost_detail(String guide_cost_detail) {
		this.guide_cost_detail = guide_cost_detail;
	}	
	public TextVO getTextvo() {
		return textvo;
	}
	public void setTextvo(TextVO textvo) {
		this.textvo = textvo;
	}
	public int getGuide_no() {
		return guide_no;
	}
	public void setGuide_no(int guide_no) {
		this.guide_no = guide_no;
	}
	public String getUser_id() {
		return user_id;
	}
	public void setUser_id(String user_id) {
		this.user_id = user_id;
	}
	public String getGuide_subject() {
		return guide_subject;
	}
	public void setGuide_subject(String guide_subject) {
		this.guide_subject = guide_subject;
	}
	public int getText_no() {
		return text_no;
	}
	public void setText_no(int text_no) {
		this.text_no = text_no;
	}
	public String getGuide_loc_intro() {
		return guide_loc_intro;
	}
	public void setGuide_loc_intro(String guide_loc_intro) {
		this.guide_loc_intro = guide_loc_intro;
	}
	public String getGuide_detail() {
		return guide_detail;
	}
	public void setGuide_detail(String guide_detail) {
		this.guide_detail = guide_detail;
	}
	public String getGuide_meet() {
		return guide_meet;
	}
	public void setGuide_meet(String guide_meet) {
		this.guide_meet = guide_meet;
	}
	public String getGuide_img() {
		return guide_img;
	}
	public void setGuide_img(String guide_img) {
		this.guide_img = guide_img;
	}
	public String getGuide_map() {
		return guide_map;
	}
	public void setGuide_map(String guide_map) {
		this.guide_map = guide_map;
	}
	
	
	
}
