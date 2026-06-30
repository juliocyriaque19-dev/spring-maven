package com.example.demo_github;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@SpringBootApplication
@RestController
public class DemoGithubApplication {

    public static void main(String[] args) {
        SpringApplication.run(DemoGithubApplication.class, args);
    }

    @GetMapping("/")
    public String hello() {
        return "Hello DevSecOps Exam!\n";
    }
}