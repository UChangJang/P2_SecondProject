package comma.sist.message.dao;

import java.sql.Date;

public class MessageVO {
 private int message_no;
 private String message_send;
 private String message_receive;
 private String message_text;
 private Date message_time;
 private String message_check;
public int getMessage_no() {
	return message_no;
}
public void setMessage_no(int message_no) {
	this.message_no = message_no;
}
public String getMessage_send() {
	return message_send;
}
public void setMessage_send(String message_send) {
	this.message_send = message_send;
}
public String getMessage_receive() {
	return message_receive;
}
public void setMessage_receive(String message_receive) {
	this.message_receive = message_receive;
}
public String getMessage_text() {
	return message_text;
}
public void setMessage_text(String message_text) {
	this.message_text = message_text;
}
public Date getMessage_time() {
	return message_time;
}
public void setMessage_time(Date message_time) {
	this.message_time = message_time;
}
public String getMessage_check() {
	return message_check;
}
public void setMessage_check(String message_check) {
	this.message_check = message_check;
}
 
 
 
 
}
