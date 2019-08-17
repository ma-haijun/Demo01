package com.controller;

import com.bean.Class;
import com.service.ClassService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.List;

/**
 * @author MHJ
 * create 2019-08 0:42
 */
@Controller
public class ClassController {
    @Resource(name = "classServiceImp")
    private ClassService classService;
    @RequestMapping(value = "/class")
    public String selAll(HttpServletRequest request){
        List<Class> classes = classService.selectAllClass();
        for (Class aClass : classes) {
            System.out.println(aClass.getClassName());
        }
        request.setAttribute("list",classes);
        return "class_manage";
    }
    @RequestMapping(value = "calssdertails")
    public String calssDetail() {
        return "class_manage_details";
    }
}
