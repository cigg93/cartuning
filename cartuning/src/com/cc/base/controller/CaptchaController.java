package com.cc.base.controller;

import java.awt.image.BufferedImage;
import java.io.IOException;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.google.code.kaptcha.Constants;
import com.google.code.kaptcha.Producer;

@Controller
@RequestMapping("/reader")
public class CaptchaController {
	
	@Resource
	private Producer captchaProducer;
	
	@ResponseBody
	@RequestMapping(value = "/captcha.do", produces="text/html;charset=UTF-8")
	public String captcha(HttpServletRequest request, HttpServletResponse response) throws Exception{
		HttpSession session = request.getSession();
		String code = (String)session.getAttribute(Constants.KAPTCHA_SESSION_CONFIG_KEY);
		response.setDateHeader("Expires", 0);
        response.setHeader("Cache-Control", "no-store, no-cache, must-revalidate");
        response.addHeader("Cache-Control", "post-check=0, pre-check=0");
        response.setHeader("Pragma", "no-cache");
        response.setContentType("image/jpeg");
        String capText = captchaProducer.createText();
        session.setAttribute(Constants.KAPTCHA_SESSION_KEY, capText);
        BufferedImage bi = captchaProducer.createImage(capText);
        ServletOutputStream out = response.getOutputStream();
        ImageIO.write(bi, "jpg", out);
        try {
            out.flush();
        } finally {
            out.close();
        }
		return null;
	}
	
	@ResponseBody
	@RequestMapping(value = "/check.do", produces="text/html;charset=UTF-8")
	public String checkCode(HttpServletRequest request,String mcode){
        System.out.println("要校验的验证码:"+mcode);
        
        return null;
    }
	
	

}
