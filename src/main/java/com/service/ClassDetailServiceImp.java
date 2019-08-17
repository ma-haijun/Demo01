package com.service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author MHJ
 * create 2019-08 22:42
 */
public class ClassDetailServiceImp implements ClassDetailService {
    @Resource(name = "xsgl_class_scheduleMapper")
//    private Xsgl_class_scheduleMapper xsgl_class_scheduleMapper;
    @Override
    public List selClassDetail(int id) {
        //XsglClassSchedule xsglClassSchedule = XsglClassSchedule.selectByPrimaryKey(id);
        return null;
    }
}
