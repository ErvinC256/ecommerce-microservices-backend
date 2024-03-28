package com.example.orderservice.mapper;

import com.example.orderservice.dto.OrderDto;
import com.example.orderservice.dto.ProductDto;
import com.example.orderservice.model.OrderItem;
import org.mapstruct.Mapper;
import org.mapstruct.factory.Mappers;

@Mapper
public interface OrderItemDtoMapper {

    OrderItemDtoMapper INSTANCE = Mappers.getMapper(OrderItemDtoMapper.class);

    OrderDto.OrderItemDto from(OrderItem orderItem, ProductDto productDto);
}