package com.mengyi.controller;

import com.mengyi.entity.User;
import com.mengyi.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

/**
 * @author mengyiyouth
 * @date 2020/8/14 10:00
 **/
@Controller
@RequestMapping("/user")
public class UserController {
    @Autowired
    UserService userService;

    @PostMapping("/login.do")
    public ModelAndView login(String username, String password){
        ModelAndView modelAndView = new ModelAndView();
        int res = userService.findUser(username, password);
        if(res > 0)
            modelAndView.setViewName("booksList");
        else
            modelAndView.setViewName("../login");
        return modelAndView;
    }
}
