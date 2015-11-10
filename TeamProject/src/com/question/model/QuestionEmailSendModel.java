package com.question.model;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.ibatis.session.SqlSession;

import com.board.dao.BoardDAO;
import com.board.dao.BoardDTO;
import com.common.Model;
import com.question.dao.QuestionDAO;
import com.question.dao.QuestionDTO;
//이메일
import java.util.*;
import javax.mail.*;
import javax.mail.internet.*;
import javax.activation.*;

public class QuestionEmailSendModel implements Model {

	@Override
	public String hanlerRequest(HttpServletRequest req, HttpServletResponse res) throws Exception {
		// TODO Auto-generated method stub
		req.setCharacterEncoding("utf-8");
		String strPage=req.getParameter("page");
		String strNo=req.getParameter("q_no");
		String title=req.getParameter("title");
		String content=req.getParameter("content");
		String email=req.getParameter("email");
		String host = "smtp.gmail.com";
		String to=email; //수신인
		String from ="bjGameMaster@gmail.com";//발신인
		String password="blackjack1234";
		String from_name = "니집내집 운영자";

		Properties props=new Properties();
		props.put("mail.smtps.auth", "true");
		Session session=Session.getInstance(props);
		try
		{
			MimeMessage msg=new MimeMessage(session);
			msg.setFrom(new InternetAddress(from,MimeUtility.encodeText (
					from_name, "UTF-8", "B")));
			InternetAddress address=new InternetAddress(to);
			msg.setRecipient(Message.RecipientType.TO, address);
			msg.setSubject(title);
			msg.setText(content);
			
			Transport transport = session.getTransport("smtps");
		    transport.connect(host, from, password);
		    transport.sendMessage(msg, msg.getAllRecipients());
			Transport.send(msg);
			transport.close();     
		}
		catch(Exception ex)
		{
			System.out.println(ex.getMessage());
		}
	
		req.setAttribute("q_no", strNo);
		req.setAttribute("page", strPage);
		
		return "question_list.do?page="+strPage ;
	}

}
