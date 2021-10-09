package com.example.springjenkins.service.impl;

import com.example.springjenkins.domain.Person;
import com.example.springjenkins.dto.PersonDto;
import com.example.springjenkins.exception.ApiException;
import com.example.springjenkins.exception.ErrorContainer;
import com.example.springjenkins.mapper.Mapper;
import com.example.springjenkins.repo.PersonRepo;
import com.example.springjenkins.service.PersonService;
import org.springframework.stereotype.Component;
import org.springframework.transaction.annotation.Transactional;

import java.util.List;
import java.util.stream.Collectors;

@Component
public class PersonServiceImpl implements PersonService {

    private final PersonRepo personRepo;
    private final Mapper<Person, PersonDto> mapper;

    public PersonServiceImpl(PersonRepo personRepo, Mapper<Person, PersonDto> mapper) {
        this.personRepo = personRepo;
        this.mapper = mapper;
    }

    @Override
    @Transactional(readOnly = true)
    public PersonDto findById(String id) {

        Person person = personRepo.findById(id)
                .orElseThrow(() -> new ApiException(ErrorContainer.PERSON_NOT_FOUND));

        PersonDto personDto = mapper.toDto(person);
        return personDto;
    }

    @Override
    @Transactional(readOnly = true)
    public List<PersonDto> findAll() {
        return personRepo.findAll().stream()
                .map(mapper::toDto)
                .collect(Collectors.toList());
    }

    @Override
    @Transactional
    public PersonDto save(PersonDto personDto) {
        Person savedPerson = personRepo.save(mapper.toEntity(personDto));
        return mapper.toDto(savedPerson);
    }
}
