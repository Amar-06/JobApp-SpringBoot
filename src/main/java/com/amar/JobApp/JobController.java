package com.amar.JobApp;

import com.amar.JobApp.model.JobPost;
import com.amar.JobApp.service.JobService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class JobController {
    @Autowired
    private JobService service;
    @GetMapping({"/", "/home"})
    public String home() {
        System.out.println("home");
        return "home";
    }

    @GetMapping("/addjob")
    public String addJob() {
        return "addjob";
    }

    @PostMapping("/handleForm")
    public String handleForm(JobPost jobPost) {
        service.addjob(jobPost);
        return "success";
    }
}