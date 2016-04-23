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
}
