package com.hotel.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Administrator on 2016/11/7.
 */
@Controller
public class ErrorController {

    @RequestMapping("/404")
    public String page404(){
        System.out.println("OK!!");
        return "404";
    }
}
