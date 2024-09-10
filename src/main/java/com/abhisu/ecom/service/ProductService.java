package com.abhisu.ecom.service;

import com.abhisu.ecom.entity.Product;
import com.abhisu.ecom.repository.ProductRepository;
import jakarta.persistence.EntityNotFoundException;
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

    public List<Product> getAllProduct(){
        return repository.findAll();
    }

    public Product getProductByProductId(Long productId){
        return repository.findById(productId).orElseThrow(() -> new EntityNotFoundException("Product not found with id: " + productId));
    }

    public Product saveProduct(Product product) {
        return repository.save(product);
    }

    public Product updateProduct(Long productId, Product product) {
        if(repository.existsById(productId)){
            product.setId(productId);
            return repository.save(product);
        }else {
            throw new EntityNotFoundException("Product not found with id: " + productId);
        }
    }

    public void deleteProductByProductId(Long productId) {
        repository.deleteById(productId);
    }


}
