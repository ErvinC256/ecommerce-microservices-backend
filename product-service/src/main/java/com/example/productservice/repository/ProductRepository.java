package com.example.productservice.repository;

import com.example.productservice.model.Product;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface ProductRepository extends JpaRepository<Product, Long> {

    @Query("SELECT p FROM Product p WHERE " +
            "(:categoryId IS NULL OR p.subcategory.category.id = :categoryId) " +
            "AND (:subcategoryId IS NULL OR p.subcategory.id = :subcategoryId) " +
            "AND (:manufacturers IS NULL OR p.manufacturer IN :manufacturers) " +
            "AND (:minPrice IS NULL OR p.price >= :minPrice) " +
            "AND (:maxPrice IS NULL OR p.price <= :maxPrice)")
    Page<Product> findByCriteria(
            @Param("categoryId") Long categoryId,
            @Param("subcategoryId") Long subcategoryId,
            @Param("manufacturers") List<String> manufacturers,
            @Param("minPrice") Double minPrice,
            @Param("maxPrice") Double maxPrice,
            Pageable pageable
    );

    @Query("SELECT p FROM Product p WHERE " +
            "(:categoryId IS NULL OR p.subcategory.category.id = :categoryId) " +
            "AND LOWER(p.name) LIKE LOWER(CONCAT('%', :searchTerm, '%'))")
    Page<Product> findBySearchTerm(
            @Param("categoryId") Long categoryId,
            @Param("searchTerm") String searchTerm,
            Pageable pageable
    );

    @Query("SELECT p FROM Product p WHERE p.productTag.newArrival = :newArrivals AND p.productTag.bestSeller = :bestSellers")
    Page<Product> findByStatus(boolean newArrivals, boolean bestSellers, Pageable pageable);

    @Query("SELECT DISTINCT p.manufacturer FROM Product p WHERE " +
            "(:categoryId IS NULL OR p.subcategory.category.id = :categoryId) " +
            "AND (:subcategoryId IS NULL OR p.subcategory.id = :subcategoryId) " +
            "AND (:manufacturers IS NULL OR p.manufacturer IN :manufacturers) " +
            "AND (:minPrice IS NULL OR p.price >= :minPrice) " +
            "AND (:maxPrice IS NULL OR p.price <= :maxPrice)")
    List<String> findDistinctManufacturersByCriteria(
            @Param("categoryId") Long categoryId,
            @Param("subcategoryId") Long subcategoryId,
            @Param("manufacturers") List<String> manufacturers,
            @Param("minPrice") Double minPrice,
            @Param("maxPrice") Double maxPrice
    );
}

