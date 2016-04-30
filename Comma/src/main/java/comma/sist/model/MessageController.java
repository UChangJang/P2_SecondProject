package comma.sist.model;

import java.util.List;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.web.portlet.bind.annotation.RenderMapping;

import comma.sist.controller.Controller;
import comma.sist.controller.RequestMapping;
import comma.sist.message.dao.MessageDAO;
import comma.sist.message.dao.MessageVO;

@Controller("mc")
public class MessageController {
	@RequestMapping("mypage_letter.do")
	public String mypage_letter(HttpServletRequest req){
		String id=req.getParameter("userid");
		List<MessageVO> recvo=MessageDAO.receiveMessageAllData(id);
		List<MessageVO> sendvo=MessageDAO.sendMessageAllData(id);
		req.setAttribute("recvo", recvo);
		req.setAttribute("sendvo", sendvo);
		req.setAttribute("jsp", "mypage/mypage.jsp");
		req.setAttribute("mypage", "mypage/mypage_letter.jsp");
		return "main.jsp";
	}
	
	@RequestMapping("sendMessage.do")
	public String sendMessage(HttpServletRequest req) throws Exception{
		
		req.setCharacterEncoding("EUC-KR");
		
		String receive_id = req.getParameter("receive_id");
		String send_id = req.getParameter("send_id");
		String message_content = req.getParameter("message_content");
		
		MessageVO vo = new MessageVO();
		vo.setMessage_receive(receive_id);
		vo.setMessage_send(send_id);
		vo.setMessage_text(message_content);
		
		MessageDAO.messageInsert(vo);
	
		req.setAttribute("jsp", "mypage/mypage.jsp");
		return "main.jsp";
	}
	
	
	
	
}
