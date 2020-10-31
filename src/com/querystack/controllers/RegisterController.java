package com.querystack.controllers;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import javax.servlet.http.*;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.context.WebApplicationContext;
import org.springframework.web.servlet.support.RequestContextUtils;

import com.querystack.dto.Badges;
import com.querystack.dto.User;
import com.querystack.models.RegisterBL;

import net.tanesha.recaptcha.ReCaptchaImpl;
import net.tanesha.recaptcha.ReCaptchaResponse;

@Controller
public class RegisterController {
	
	//@Autowired
	//private HttpServletResponse response;

	@RequestMapping(value = ("/register.spring"), method = RequestMethod.POST)
	public String get(HttpServletRequest request, HttpSession session, HttpServletResponse response,
			@ModelAttribute("User") User user) {

		String remoteAddr = request.getRemoteAddr();
		//captcha
	
		
		PrintWriter out=null;
		try {
			out = response.getWriter();
		} catch (IOException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		if(captcha(request,remoteAddr)==true)
		{
		
		String page = "Login_Signup";
		Set<Badges> badges = new HashSet<Badges>();
		badges.add(new Badges(10, "Beginer"));
		badges.add(new Badges(9, "Informed"));
		user.setBadges(badges);
		List<Long> favList = new ArrayList<Long>();
		user.setFavQues(favList);
		WebApplicationContext context = RequestContextUtils
				.getWebApplicationContext(request);
		// RegisterBL fetch = (RegisterBL)context.getBean("user");
		RegisterBL f = (RegisterBL) context.getBean("fetch1");
		User u = f.createAccount(user);
		if (u != null) {

			session = request.getSession();
			session.setAttribute("user", u);
			System.out.println(getClass().getSimpleName() + ": "
					+ session.getAttribute("user"));
			page = "/WEB-INF/first";
		}
		return page;
		}
		else
		out.print("Please Re-Enter Correct Captcha");
		return null;

	}
	public static  Boolean captcha(HttpServletRequest request,String remoteAddr) {
		
		ReCaptchaImpl reCaptcha = new ReCaptchaImpl();
		reCaptcha.setPrivateKey("6LdlHOsSAAAAACe2WYaGCjU2sc95EZqCI9wLcLXY");

		String challenge = request
				.getParameter("recaptcha_challenge_field");
		String uresponse = request.getParameter("recaptcha_response_field");
		ReCaptchaResponse reCaptchaResponse = reCaptcha.checkAnswer(
				remoteAddr, challenge, uresponse);

		if (reCaptchaResponse.isValid()) {
			//String user = request.getParameter("user");
			//out.print("CAPTCHA Validation Success! ");
			return true;
		} else {
			//out.print("CAPTCHA Validation Failed! Try Again.");
			return false;
		}
	}
}

