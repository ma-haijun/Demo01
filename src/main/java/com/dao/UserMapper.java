package com.dao;

import com.bean.User;
import org.springframework.stereotype.Repository;
import tk.mybatis.mapper.common.Mapper;
@Repository
public interface UserMapper extends Mapper<User> {

    User selectByUserName(String username);
}