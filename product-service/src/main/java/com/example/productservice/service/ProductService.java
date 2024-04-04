package com.example.productservice.service;

import com.example.productservice.dto.ProductDto;
import com.example.productservice.model.Product;
import com.example.productservice.repository.ProductRepository;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.http.HttpStatus;
import org.springframework.stereotype.Service;
import org.springframework.web.server.ResponseStatusException;

import java.util.*;

@Service
public class ProductService {

    private final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public Product getProduct(Long id) {

        Optional<Product> optionalProduct = productRepository.findById(id);

        if (!optionalProduct.isPresent()) {
            throw new ResponseStatusException(HttpStatus.NOT_FOUND, "Product not found for id: " + id);
        }

        Product product = optionalProduct.get();

        return product;
    }

    public Page<Product> getProductsByCriteria(Long categoryId, Long subcategoryId, List<String> manufacturers, Double minPrice, Double maxPrice, Pageable pageable) {
        return productRepository.findByCriteria(categoryId, subcategoryId, manufacturers, minPrice, maxPrice, pageable);
    }

    public Page<Product> getProductsBySearchTerm(Long categoryId, String searchTerm, Pageable pageable) {
        return productRepository.findBySearchTerm(categoryId, searchTerm, pageable);
    }

    public Page<Product> getProductsByStatus(boolean newArrivals, boolean bestSellers, Pageable pageable) {
        return productRepository.findByStatus(newArrivals, bestSellers, pageable);
    }

    public List<ProductDto> getProductsByIds(List<Long> ids) {

        List<ProductDto> productDtos = new ArrayList<>();

        // to preserve order
        ids.forEach(id -> {
            Optional<Product> optionalProduct = productRepository.findById(id);

            Product product = optionalProduct.get();

            ProductDto productDto = new ProductDto();
            productDto.setProductName(product.getName());
            productDto.setManufacturer(product.getManufacturer());
            productDto.setUnitPrice(product.getUnitPrice());
            productDto.setQuantityInStock(product.getQuantityInStock());

            productDtos.add(productDto);
        });

        return productDtos;
    }

    public List<String> getDistinctManufacturers(Long categoryId, Long subcategoryId, List<String> manufacturers, Double minPrice, Double maxPrice) {
        return productRepository.findDistinctManufacturersByCriteria(categoryId, subcategoryId, manufacturers, minPrice, maxPrice);
    }

}


