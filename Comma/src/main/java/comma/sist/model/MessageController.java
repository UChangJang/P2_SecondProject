package comma.sist.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.portlet.bind.annotation.RenderMapping;

import comma.sist.common.TextVO;
import comma.sist.controller.Controller;
import comma.sist.controller.RequestMapping;
import comma.sist.message.dao.MessageDAO;
import comma.sist.message.dao.MessageVO;

@Controller("mc")
public class MessageController {
	@RequestMapping("mypage_letter.do")
	public String mypage_letter(HttpServletRequest req){
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		List<MessageVO> recvo=MessageDAO.receiveMessageAllData(id);
		List<MessageVO> sendvo=MessageDAO.sendMessageAllData(id);
		req.setAttribute("recvo", recvo);
		req.setAttribute("sendvo", sendvo);
		req.setAttribute("jsp", "mypage/mypage.jsp");
		req.setAttribute("mypage", "mypage/mypage_letter.jsp");
		return "main.jsp";
	}
	@RequestMapping("messageSend.do")
	public String messageSend(HttpServletRequest req) throws Exception{
		req.setCharacterEncoding("EUC-KR");
		HttpSession session = req.getSession();
		String id = (String)session.getAttribute("id");
		String receive_id= req.getParameter("message_receive");
		String text= req.getParameter("message_text");
		MessageVO vo=new MessageVO();
		vo.setMessage_receive(receive_id);
		vo.setMessage_send(id);
		vo.setMessage_text(text);
		MessageDAO.messageSend(vo);
		return "mypage/messageSend_ok.jsp";
	}
	@RequestMapping("messageDelete.do")
	public String messageDelete(HttpServletRequest req){
		String no=req.getParameter("message_no");
		System.out.println(no);
		MessageDAO.messgeDelete(Integer.parseInt(no));
		return "mypage/messageSend_ok.jsp";
	}
	
	
	
}
