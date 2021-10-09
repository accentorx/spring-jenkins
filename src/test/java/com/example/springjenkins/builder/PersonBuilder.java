package com.example.springjenkins.builder;

import com.example.springjenkins.domain.Person;
import com.example.springjenkins.dto.PersonDto;

public class PersonBuilder {
    private static final String TEST_ID = "testId";
    private static final String TEST_FIRST_NAME = "testFirstName";
    private static final String TEST_LAST_NAME = "testLastName";
    private static final Integer TEST_AGE = 30;
    private static final String TEST_COUNTRY = "testCountry";

    public static Person buildPerson() {
        Person person = new Person();
        person.setId(TEST_ID);
        person.setFirstName(TEST_FIRST_NAME);
        person.setLastName(TEST_LAST_NAME);
        person.setAge(TEST_AGE);
        person.setCountry(TEST_COUNTRY);
        return person;
    }

    public static PersonDto buildPersonDto() {
        PersonDto personDto = new PersonDto();
        personDto.setId(TEST_ID);
        personDto.setFirstName(TEST_FIRST_NAME);
        personDto.setLastName(TEST_LAST_NAME);
        personDto.setAge(TEST_AGE);
        personDto.setCountry(TEST_COUNTRY);
        return personDto;
    }

    public static PersonDto buildRequestBodyToSave() {
        PersonDto personDto = new PersonDto();
        personDto.setFirstName(TEST_FIRST_NAME);
        personDto.setLastName(TEST_LAST_NAME);
        personDto.setAge(TEST_AGE);
        personDto.setCountry(TEST_COUNTRY);
        return personDto;
    }
}
