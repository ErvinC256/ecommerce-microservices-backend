package com.example.productservice.controller;

import com.example.productservice.dto.ProductDto;
import com.example.productservice.model.Product;
import com.example.productservice.service.ProductService;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/products")
public class ProductController {

    private final ProductService productService;

    public ProductController(ProductService productService) {
        this.productService = productService;
    }

    @GetMapping("/{id}")
    public Product getProduct(@PathVariable Long id) {

        return productService.getProduct(id);
    }

    @GetMapping("")
    public Page<Product> getProductsBySearchTermOrCriteria(
            @RequestParam(required = false) Long categoryId,
            @RequestParam(required = false) Long subcategoryId,
            @RequestParam(required = false) List<String> manufacturers,
            @RequestParam(required = false) Double minPrice,
            @RequestParam(required = false) Double maxPrice,
            @RequestParam(required = false) String searchTerm,
            Pageable pageable
    ) {
        if (searchTerm != null && !searchTerm.isEmpty()) {
            return productService.getProductsBySearchTerm(categoryId, searchTerm, pageable);
        } else {
            return productService.getProductsByCriteria(categoryId, subcategoryId, manufacturers, minPrice, maxPrice, pageable);
        }
    }

    @GetMapping("/by-status")
    public Page<Product> getProductsByStatus(
            @RequestParam(defaultValue = "false") boolean newArrivals,
            @RequestParam(defaultValue = "false") boolean bestSellers,
            Pageable pageable) {

        return productService.getProductsByStatus(newArrivals, bestSellers, pageable);
    }

    @GetMapping("/by-ids")
    public List<ProductDto> getProductsByIds(@RequestParam List<Long> ids) {

        return productService.getProductsByIds(ids);
    }

    //manufacturers
    @GetMapping("all/manufacturers")
    public List<String> getDistinctManufacturers(
            @RequestParam(required = false) Long categoryId,
            @RequestParam(required = false) Long subcategoryId,
            @RequestParam(required = false) List<String> manufacturers,
            @RequestParam(required = false) Double minPrice,
            @RequestParam(required = false) Double maxPrice
    ) {
        return productService.getDistinctManufacturers(categoryId, subcategoryId, manufacturers, minPrice, maxPrice);
    }

    //test
    @GetMapping("/test")
    public String hello() {
        return "Hello from ProductController!";
    }
}

