package com.justDance.mvmt.action;

import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.mail.internet.MimeMessage.RecipientType;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.mail.javamail.JavaMailSender;
import org.springframework.stereotype.Component;

import com.justDance.mvmt.model.Email;

@Component
public class EmailSender {
	
	@Autowired
	protected JavaMailSender mailSender;

	public JavaMailSender getMailSender() {
		return mailSender;
	}

	public void setMailSender(JavaMailSender mailSender) {
		this.mailSender = mailSender;
	}
	
	public void sendEmail(Email email) throws Exception{
		MimeMessage msg = mailSender.createMimeMessage();
		msg.setSubject(email.getTitle());
		msg.setText(email.getMessage());
		msg.setRecipient(RecipientType.TO, 
				new InternetAddress("bboyskip115@gmail.com"));
		
		mailSender.send(msg);
	}
	
}
