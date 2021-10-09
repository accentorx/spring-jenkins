package com.example.springjenkins.mapper.impl;

import com.example.springjenkins.domain.Person;
import com.example.springjenkins.dto.PersonDto;
import com.example.springjenkins.mapper.Mapper;
import org.springframework.stereotype.Component;

@Component
public class PersonMapper implements Mapper<Person, PersonDto> {

    @Override
    public PersonDto toDto(Person person) {
        PersonDto dto = new PersonDto();
        dto.setId(person.getId());
        dto.setFirstName(person.getFirstName());
        dto.setLastName(person.getLastName());
        dto.setAge(person.getAge());
        dto.setCountry(person.getCountry());
        return dto;
    }

    @Override
    public Person toEntity(PersonDto dto) {
        Person personEntity = new Person();
        personEntity.setFirstName(dto.getFirstName());
        personEntity.setLastName(dto.getLastName());
        personEntity.setCountry(dto.getCountry());
        personEntity.setAge(dto.getAge());
        return personEntity;
    }
}
