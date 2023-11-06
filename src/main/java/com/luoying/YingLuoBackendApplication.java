package com.luoying;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.scheduling.annotation.EnableScheduling;

@SpringBootApplication
@MapperScan("com.luoying.mapper")
@EnableScheduling
public class YingLuoBackendApplication {

    public static void main(String[] args) {
        SpringApplication.run(YingLuoBackendApplication.class, args);
    }

}