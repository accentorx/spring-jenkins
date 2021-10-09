package com.example.springjenkins.dto;

import lombok.Data;

@Data
public class PersonDto {
    private String id;
    private String firstName;
    private String lastName;
    private Integer age;
    private String country;
}
