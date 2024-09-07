package com.abhisu.ecom.service;

import com.abhisu.ecom.entity.Product;
import com.abhisu.ecom.repository.ProductRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class ProductService {

    private ProductRepository repository;

    @Autowired
    public ProductService(ProductRepository repository){
        this.repository = repository;
    }

    public List<Product> fillAllProduct(){
        return repository.findAll();
    }
}
