package com.phi;

import lombok.extern.log4j.Log4j2;
import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.config.server.EnableConfigServer;
import org.springframework.cloud.netflix.eureka.EnableEurekaClient;

@Log4j2
@EnableConfigServer
@EnableEurekaClient
@SpringBootApplication(scanBasePackages = {"com.phi"})
public class PhiConfigServiceApplication {

    public static void main(String[] args) {
        SpringApplication.run(PhiConfigServiceApplication.class, args);
    }

}
