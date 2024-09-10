package com.abhisu.ecom.service;

import com.abhisu.ecom.entity.User;
import org.springframework.security.core.userdetails.UserDetailsService;

public interface UserService extends UserDetailsService {
    public User findByUserName(String userName);

}
