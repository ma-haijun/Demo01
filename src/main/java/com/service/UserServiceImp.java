package com.service;

import com.bean.User;
import com.dao.UserMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

@Service
public class UserServiceImp implements UserService {
    @Resource(name = "userMapper")
    private UserMapper userMapper;
    private User user;
    @Override
    public Boolean selectUser(String username, String password,HttpServletRequest request) {
        user = userMapper.selectByUserName(username);


        if (user==null) {
            return false;
        }else if (!user.getPassword().equals(password)){
            System.out.println(user.getPassword().equals(password));
            return false;
        }
        request.setAttribute("username",user.getUsername());
       return true;
    }
}
