package com.example.cartservice.mapper;

import com.example.cartservice.dto.CartItemDto;
import com.example.cartservice.dto.ProductDto;
import com.example.cartservice.model.CartItem;
import org.mapstruct.Mapper;
import org.mapstruct.Mapping;
import org.mapstruct.factory.Mappers;

@Mapper
public interface CartItemDtoMapper {

    CartItemDtoMapper INSTANCE = Mappers.getMapper(CartItemDtoMapper.class);

    @Mapping(source = "cartItem.id", target = "cartItemId")
    @Mapping(source = "cartItem.quantity", target = "cartItemQuantity")
    CartItemDto from(CartItem cartItem, ProductDto productDto);
}
