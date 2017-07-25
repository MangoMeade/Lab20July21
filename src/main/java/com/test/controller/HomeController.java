package com.test.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController {

    @RequestMapping("/")

    public ModelAndView helloWorld()
    {
        return new
                ModelAndView("welcome","message","Hello World");

    }

    @RequestMapping("/form")
    //the String method returns the jsp page that we want to show
    public String htmlForm() {

        return "htmlform";
    }

    @RequestMapping("/success")
    public String formSuccess(Model model, @RequestParam("f_name") String firstName,
                              @RequestParam("l_name") String lastName, @RequestParam("e_mail") String email,
                              @RequestParam("p_number") int phoneNumber, @RequestParam("pass_word") String password) {

        //add the values to the jsp using the model and AddAttribute method
        model.addAttribute("firstName", firstName);
        model.addAttribute("lastName", lastName);
        model.addAttribute("email", email);
        model.addAttribute("phoneNumber", phoneNumber);
        model.addAttribute("password", password);

        return "formsuccess";
    }



}