package com.example.springjenkins.service;

import com.example.springjenkins.dto.PersonDto;

import java.util.List;

public interface PersonService {

    PersonDto findById(String id);

    List<PersonDto> findAll();

    PersonDto save(PersonDto person);
}
