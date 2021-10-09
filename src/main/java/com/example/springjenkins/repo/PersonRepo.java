package com.example.springjenkins.repo;

import com.example.springjenkins.domain.Person;
import org.springframework.data.jpa.repository.JpaRepository;

public interface PersonRepo extends JpaRepository<Person, String> {}
