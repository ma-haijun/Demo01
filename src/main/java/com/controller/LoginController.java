package com.controller;

import com.service.UserService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.imageio.ImageIO;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.awt.*;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;


@Controller
public class LoginController {
    @Resource(name = "userServiceImp")
    private UserService userService;

    /**
     * 加载验证码
     * @param req
     * @param resp
     * @throws IOException
     */
    @RequestMapping(value = "/checkCode")
    public void checkCode(HttpServletRequest req, HttpServletResponse resp) throws IOException {
        //创建一个图片流对象
        BufferedImage img = new BufferedImage(84, 40, BufferedImage.TYPE_INT_RGB);
        //获取图片流画布对象
        Graphics2D graph = img.createGraphics();
        graph.setFont(new Font("华文行楷", Font.BOLD, 30));
        int r = new Random().nextInt(9000) + 1000;
        graph.drawString(r + "", 6, 30);

        req.getSession().setAttribute("yzm", r);

        ImageIO.write(img, "png", resp.getOutputStream());

        System.out.println("加载验证码");
    }

    /**
     *
     * @return 返回登录界面
     */
    @RequestMapping(value = "/login")
    public String login() {
        return "login";
    }

    /**
     * 进行表单验证
     * @param request
     * @return 登录成功，返回主界面
     */
    @RequestMapping(value = "/checkUser")
    public String checkUser(HttpServletRequest request) {
        String username = request.getParameter("username");
        String checkCode = request.getParameter("checkCode");
        String password = request.getParameter("password");
        Object yzm = request.getSession().getAttribute("yzm");
        if(checkCode.equals(yzm.toString())){
            Boolean isNo = userService.selectUser(username, password,request);
           // System.out.println(request.getSession().getAttribute("username"));
            if (!isNo){
                return "login";
            }
       }else {
            return "login";
        }
        return "main";
    }
}
