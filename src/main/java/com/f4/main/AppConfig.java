package com.f4.main;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import com.f4.main.controller.NaverLoginBO;

@Configuration
public class AppConfig {

    @Bean
    public NaverLoginBO naverLoginBO() {
        return new NaverLoginBO();
    }
}
