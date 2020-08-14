package com.mengyi.service;

import com.mengyi.entity.User;

/**
 * @author mengyiyouth
 * @date 2020/8/14 10:00
 **/
public interface UserService {
    int findUser(String username, String password);
}
