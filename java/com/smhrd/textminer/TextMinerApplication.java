package com.smhrd.textminer;

import org.mybatis.spring.annotation.MapperScan;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Configuration;

@SpringBootApplication//(scanBasePackages = "com.example.test.mapper")
@Configuration
@MapperScan("com.smhrd.textminer.mapper")
public class TextMinerApplication {

	public static void main(String[] args) {
		SpringApplication.run(TextMinerApplication.class, args);
	}

}
