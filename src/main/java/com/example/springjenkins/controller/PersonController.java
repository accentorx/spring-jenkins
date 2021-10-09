package com.example.springjenkins.controller;

import com.example.springjenkins.dto.PersonDto;
import com.example.springjenkins.exception.ApiException;
import com.example.springjenkins.exception.ErrorContainer;
import com.example.springjenkins.service.PersonService;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@RestController
@RequestMapping("/api/persons")
public class PersonController {

    private final PersonService personService;

    public PersonController(PersonService personService) {
        this.personService = personService;
    }

    @GetMapping("/list")
    public List<PersonDto> getAllPersons() {
        return personService.findAll();
    }

    @PostMapping
    public PersonDto save(@RequestBody PersonDto personDto) {

        if (personDto.getId() != null) {
            throw new ApiException(ErrorContainer.PERSON_ID_NOT_NULL);
        }

        return personService.save(personDto);
    }

    @GetMapping("/{id}")
    public PersonDto findById(@PathVariable String id) {
        PersonDto person = personService.findById(id);
        return person;
    }
}
