package com.abhisu.ecom.controller;

import com.abhisu.ecom.dto.ResponseDTO;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/test")
public class TestController {

    @GetMapping
    public ResponseEntity<ResponseDTO> testGetApi(){
        return new ResponseEntity<>(new ResponseDTO(HttpStatus.OK.value(), "This is a test of Get API Controller"), HttpStatus.OK);
    }

    @PostMapping
    public ResponseEntity<ResponseDTO> testPostApi(){
        return new ResponseEntity<>(new ResponseDTO(HttpStatus.CREATED.value(), "This is a test Post API Controller"), HttpStatus.CREATED);
    }

    @PutMapping("/{id}")
    public ResponseEntity<ResponseDTO> testPutApi(){
        return new ResponseEntity<>(new ResponseDTO(HttpStatus.OK.value(), "This is a test of Put API Controller"), HttpStatus.OK);
    }

    @PatchMapping("/{id}")
    public ResponseEntity<ResponseDTO> testPatchApi(){
        return new ResponseEntity<>(new ResponseDTO(HttpStatus.OK.value(), "This is a test of Patch API Controller"), HttpStatus.OK);
    }

    @DeleteMapping("/{id}")
    public ResponseEntity<ResponseDTO> testDeleteApi(){
        return new ResponseEntity<>(new ResponseDTO(HttpStatus.OK.value(), "This is a test of Delete API Controller"), HttpStatus.OK);
    }
}
