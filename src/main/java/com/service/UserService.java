package com.service;


import javax.servlet.http.HttpServletRequest;

public interface UserService {
    Boolean selectUser(String username, String pwd, HttpServletRequest request);
}
