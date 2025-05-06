package org.act.portifolio_backend.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.CorsRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

@Configuration
public class WebConfig implements WebMvcConfigurer {

    @Override
    public void addCorsMappings(CorsRegistry registry) {
        // Allow cross-origin requests to all endpoints
        registry.addMapping("/**")
                .allowedOrigins("http://localhost:5173/") // Adjust this based on your frontend URL
                .allowedMethods("GET", "POST", "PUT", "DELETE") // Define the methods you want to allow
                .allowedHeaders("*") // Allow all headers
                .allowCredentials(true);
    }
}
