package com.example.orderservice.repository;

import com.example.orderservice.model.Order;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface OrderRepository extends JpaRepository<Order, Long> {

    Order findByOrderNumber(String orderNumber);

    @Query("SELECT o FROM Order o WHERE o.userId = :userId AND o.status = :status")
    List<Order> findByStatus(@Param("userId") Long userId,
                             @Param("status") Order.Status status);

    @Query("SELECT COALESCE(SUM(oi.quantityPurchased), 0) FROM Order o JOIN o.orderItems oi WHERE oi.productId = :productId AND MONTH(o.dateCreated) = :currentMonth AND YEAR(o.dateCreated) = :currentYear")
    Long calculateUnitsPurchased(
            @Param("productId") Long productId,
            @Param("currentMonth") int currentMonth,
            @Param("currentYear") int currentYear
    );

}
