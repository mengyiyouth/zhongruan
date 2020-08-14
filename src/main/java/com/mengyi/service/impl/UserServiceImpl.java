package com.mengyi.service.impl;

import com.mengyi.dao.userDao;
import com.mengyi.entity.User;
import com.mengyi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author mengyiyouth
 * @date 2020/8/14 10:00
 **/
@Service
public class UserServiceImpl implements UserService {
    @Autowired
    userDao userdao;
    @Override
    public int findUser(String username, String password) {
        User user = userdao.findUser(username);
        if(user.getPassword().equals(password))
            return 1;
        return -1;
    }
}
