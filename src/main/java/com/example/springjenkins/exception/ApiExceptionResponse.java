package com.example.springjenkins.exception;

import lombok.AllArgsConstructor;
import lombok.Data;

@Data
@AllArgsConstructor
public class ApiExceptionResponse {
    private Integer status;
    private String error;
}
