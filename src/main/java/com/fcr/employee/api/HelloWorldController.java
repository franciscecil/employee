package com.fcr.employee.api;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

@Controller
public class HelloWorldController {

    @GetMapping(path = "/hello", produces = "application/json")
    public ResponseEntity<String> greetHello(@RequestParam("name") String name) {
        return new ResponseEntity(name, HttpStatus.ACCEPTED);
    }
}
