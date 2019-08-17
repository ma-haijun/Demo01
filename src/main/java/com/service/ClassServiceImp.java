package com.service;

import com.bean.Class;
import com.dao.ClassMapper;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;

/**
 * @author MHJ
 * create 2019-08 0:23
 */
@Service
public class ClassServiceImp implements ClassService {
    @Resource(name = "classMapper")
    private ClassMapper classMapper;

    @Override
    public List<Class> selectAllClass() {
        List<Class> classList = classMapper.selectAll();
        return classList;
    }
}
