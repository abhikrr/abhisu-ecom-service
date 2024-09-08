package com.abhisu.ecom.dto;

import lombok.Getter;
import lombok.Setter;

import java.io.Serializable;
import java.util.Set;

@Getter
@Setter
public class SignupRequestDTO implements Serializable {
    private String username;
    private String password;
    private Set<String> role;
}
