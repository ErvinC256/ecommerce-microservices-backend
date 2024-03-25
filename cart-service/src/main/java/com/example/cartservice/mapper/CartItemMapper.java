package com.example.cartservice.mapper;

import com.example.cartservice.dto.CartDto;
import com.example.cartservice.dto.ProductDto;
import com.example.cartservice.model.CartItem;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;

@Mapper
public interface CartItemMapper {

    CartItemMapper INSTANCE = Mappers.getMapper(CartItemMapper.class);

    @Mapping(source = "cartItem.id", target = "cartItemId")
    CartDto.CartItemDto from(CartItem cartItem, ProductDto productDto);
}
