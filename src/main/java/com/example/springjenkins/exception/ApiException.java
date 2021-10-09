package com.example.springjenkins.exception;

import lombok.Data;
import org.springframework.http.HttpStatus;

@Data
public class ApiException extends RuntimeException{
    private String message;
    private HttpStatus httpStatus;

    public ApiException(ErrorContainer error) {
        this.message = error.getMessage();
        this.httpStatus = error.getHttpStatus();
    }

    public ApiException(ErrorContainer error, String message) {
        this.message = message;
        this.httpStatus = error.getHttpStatus();
    }
}
