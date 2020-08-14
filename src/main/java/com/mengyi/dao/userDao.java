package com.mengyi.dao;

import com.mengyi.entity.User;

/**
 * @author mengyiyouth
 * @date 2020/8/14 10:00
 **/
public interface userDao {
    User findUser(String username);
}
