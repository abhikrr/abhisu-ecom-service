package com.abhisu.ecom.controller;

import com.abhisu.ecom.dto.ResponseDTO;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class TestController {

    @GetMapping("/hello-world")
    public ResponseEntity<ResponseDTO> helloWorld(){
        return new ResponseEntity<>(new ResponseDTO(HttpStatus.OK.value(), "Hello World!!"), HttpStatus.OK);
    }

}
