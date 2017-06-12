package com.grandcircus.spring.controller;

import com.grandcircus.spring.User;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

/**
 * Created by MichaelRiley on 5/8/17.
 */


@Controller
public class HomeController {


    @RequestMapping ("/")//handler mapping
    public ModelAndView welcomeGC(){//model and view method - has to return a model and view
        return new ModelAndView("welcome", "openpage", "");
    }

    @RequestMapping ("/checkIn")//handler mapping
    public ModelAndView checkin(){//model and view method - has to return a model and view
        return new ModelAndView("checkIn", "openpage", "");
    }


    @RequestMapping (value="/CustomerReg", method= RequestMethod.GET)
    public ModelAndView user(){
        return new ModelAndView("CustomerReg", "command", new User());

}

    @RequestMapping (value="/addUser", method=RequestMethod.POST)
    public String addUser(User user, Model model){//pass through multiple
        model.addAttribute("name", user.getName());
        model.addAttribute("phone", user.getPhone());
        model.addAttribute("email", user.getEmail());
        
        return "/result";//string meaning result.jsp page

    }

    @RequestMapping (value="/coffeestore", method= RequestMethod.GET)
    public ModelAndView menu() {
        return new ModelAndView("coffeestore", "store", "openpage");

    }



}



