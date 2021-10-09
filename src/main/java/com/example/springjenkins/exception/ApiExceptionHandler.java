package com.example.springjenkins.exception;

import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;

@ControllerAdvice
public class ApiExceptionHandler {

    @ExceptionHandler(ApiException.class)
    public ResponseEntity<ApiExceptionResponse> handleApiExceptionHandle(ApiException apiException) {
        return new ResponseEntity<>(
                new ApiExceptionResponse(apiException.getHttpStatus().value(), apiException.getMessage()),
                apiException.getHttpStatus()
        );
    }
}
