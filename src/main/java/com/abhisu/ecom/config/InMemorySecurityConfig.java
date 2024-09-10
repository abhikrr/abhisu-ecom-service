package com.abhisu.ecom.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;
import org.springframework.http.HttpMethod;
import org.springframework.security.config.Customizer;
import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.core.userdetails.User;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;

// Uncomment below  @Configuration If you want Inmemory security configuration
//@Configuration
public class InMemorySecurityConfig {
    @Bean
    public InMemoryUserDetailsManager userDetailsManager(){
        UserDetails abhi = User.builder()
                .username("abhi")
                .password("{noop}abhi")
                .roles("EMPLOYEE")
                .build();

        UserDetails abhishek = User.builder()
                .username("abhishek")
                .password("{noop}abhishek")
                .roles("EMPLOYEE")
                .build();

        UserDetails raushan = User.builder()
                .username("raushan")
                .password("{noop}raushan")
                .roles("EMPLOYEE", "MANAGER")
                .build();

        UserDetails admin = User.builder()
                .username("admin")
                .password("{noop}admin")
                .roles("EMPLOYEE", "ADMIN", "MANAGER")
                .build();

        return new InMemoryUserDetailsManager(abhi, abhishek, raushan, admin);
    }

    @Bean
    public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
        http.authorizeHttpRequests(configurer ->
                configurer
                        .requestMatchers(HttpMethod.GET, "/products").hasRole("EMPLOYEE")
                        .requestMatchers(HttpMethod.GET, "/products/**").hasRole("EMPLOYEE")
                        .requestMatchers(HttpMethod.POST, "/products").hasRole("MANAGER")
                        .requestMatchers(HttpMethod.PUT, "/products/**").hasRole("MANAGER")
                        .requestMatchers(HttpMethod.DELETE, "/products/**").hasRole("ADMIN")

        );

        http.httpBasic(Customizer.withDefaults());

        http.csrf(csrf -> csrf.disable());

        return http.build();
    }
}
