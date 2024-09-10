package com.abhisu.ecom.controller;

import com.abhisu.ecom.dto.ResponseDTO;
import com.abhisu.ecom.entity.Product;
import com.abhisu.ecom.service.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
public class ProductController {
    private ProductService service;
    @Autowired
    public ProductController(ProductService service){
        this.service = service;
    }
    @GetMapping("/products")
    public ResponseEntity<List<Product>> getAllProduct(){

        return new ResponseEntity<>(service.getAllProduct(), HttpStatus.OK);
    }

    @GetMapping("/products/{productId}")
    public ResponseEntity<Product> getProductByProductId(@PathVariable Long productId){
        return new ResponseEntity<>(service.getProductByProductId(productId), HttpStatus.OK);
    }

    @PostMapping("/products")
    public ResponseEntity<ResponseDTO> saveProduct(@RequestBody Product product){

        Product result = service.saveProduct(product);

        if(result != null){
            return new ResponseEntity<>(new ResponseDTO(HttpStatus.CREATED.value(), "Product created with Id : " + result.getId()), HttpStatus.CREATED);
        }else{
            return new ResponseEntity<>(new ResponseDTO(HttpStatus.INTERNAL_SERVER_ERROR.value(),"An unexpected error occurred."), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @PutMapping("/products/{productId}")
    public ResponseEntity<ResponseDTO> saveProduct(@RequestBody Product product, @PathVariable Long productId){

        Product result = service.updateProduct(productId, product);

        if(result != null){
            return new ResponseEntity<>(new ResponseDTO(HttpStatus.CREATED.value(), "Product created with Id : " + result.getId()), HttpStatus.CREATED);
        }else{
            return new ResponseEntity<>(new ResponseDTO(HttpStatus.INTERNAL_SERVER_ERROR.value(),"An unexpected error occurred."), HttpStatus.INTERNAL_SERVER_ERROR);
        }
    }

    @DeleteMapping("/products/{productId}")
    public ResponseEntity<ResponseDTO> deleteProduct(@PathVariable Long productId){
        service.deleteProductByProductId(productId);
        return new ResponseEntity<>(new ResponseDTO(HttpStatus.OK.value(), "Product deleted successfully."), HttpStatus.OK);
    }
}
