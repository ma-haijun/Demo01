package com.checkcode;

import java.awt.Font;
import java.awt.Graphics2D;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet("/imgservlet")
public class ImgServlet extends HttpServlet{

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		//创建一个图片流对象
		BufferedImage img = new BufferedImage(84, 40, BufferedImage.TYPE_INT_RGB);
		//获取图片流画布对象
		Graphics2D graph = img.createGraphics();
		graph.setFont(new Font("华文行楷", Font.BOLD, 30));
		int r = new Random().nextInt(9000)+1000; 
		graph.drawString(r+"", 6, 30);
		
		req.getSession().setAttribute("yzm", r);
		
		ImageIO.write(img, "png", resp.getOutputStream());
		
	}

	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(req, resp);
	}
	
}
