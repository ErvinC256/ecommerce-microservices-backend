package com.example.apigateway.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.security.config.web.server.ServerHttpSecurity;
import org.springframework.security.web.server.SecurityWebFilterChain;

@Configuration
public class SecurityConfig {

    @Bean
    public SecurityWebFilterChain securityWebFilterChain(ServerHttpSecurity http) {
        return http
                .csrf().disable() // Disable CSRF protection
                .authorizeExchange(exchange -> exchange
                        .pathMatchers("/**").permitAll() // Permit access to all paths
                )
                .httpBasic().disable() // Disable HTTP Basic authentication
                .build();
    }
}