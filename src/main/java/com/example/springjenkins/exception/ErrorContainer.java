package com.example.springjenkins.exception;

import lombok.Getter;
import org.springframework.http.HttpStatus;

@Getter
public enum ErrorContainer {

    PERSON_NOT_FOUND("Person not found", HttpStatus.NOT_FOUND),
    PERSON_ID_NOT_NULL("Person id should be null", HttpStatus.BAD_REQUEST);

    private String message;
    private HttpStatus httpStatus;

    ErrorContainer(String message, HttpStatus httpStatus) {
        this.message = message;
        this.httpStatus = httpStatus;
    }
}
