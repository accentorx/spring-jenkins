package com.example.springjenkins.controller;

import com.example.springjenkins.service.PersonService;
import com.fasterxml.jackson.databind.ObjectMapper;
import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.autoconfigure.web.servlet.WebMvcTest;
import org.springframework.boot.test.mock.mockito.MockBean;
import org.springframework.http.MediaType;
import org.springframework.test.web.servlet.MockMvc;

import static com.example.springjenkins.builder.PersonBuilder.buildPersonDto;
import static com.example.springjenkins.builder.PersonBuilder.buildRequestBodyToSave;
import static java.util.Collections.singletonList;
import static org.mockito.Mockito.*;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.get;
import static org.springframework.test.web.servlet.request.MockMvcRequestBuilders.post;
import static org.springframework.test.web.servlet.result.MockMvcResultHandlers.print;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.content;
import static org.springframework.test.web.servlet.result.MockMvcResultMatchers.status;

@WebMvcTest
class PersonControllerTest {

    @Autowired
    private MockMvc mockMvc;

    @Autowired
    private ObjectMapper objectMapper;

    @MockBean
    private PersonService personService;

    @Test
    public void shouldReturnOnePersonById() throws Exception {
        when(personService.findById("testId"))
                .thenReturn(buildPersonDto());

        String response = objectMapper.writeValueAsString(buildPersonDto());

        mockMvc.perform(get("/api/persons/{personId}", "testId"))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(content().json(response));

        verify(personService, times(1))
                .findById("testId");
    }

    @Test
    public void shouldReturnListOfPersons() throws Exception{
        when(personService.findAll())
                .thenReturn(singletonList(buildPersonDto()));

        String response = objectMapper.writeValueAsString(singletonList(buildPersonDto()));

        mockMvc.perform(get("/api/persons/list"))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(content().json(response));

        verify(personService, times(1))
                .findAll();
    }

    @Test
    public void shouldSuccessfullySavePerson() throws Exception{
        when(personService.save(any()))
                .thenReturn(buildPersonDto());

        String requestBody = objectMapper.writeValueAsString(buildRequestBodyToSave());
        String response = objectMapper.writeValueAsString(buildPersonDto());

        mockMvc.perform(post("/api/persons").contentType(MediaType.APPLICATION_JSON)
                .content(requestBody))
                .andDo(print())
                .andExpect(status().isOk())
                .andExpect(content().json(response));

        verify(personService, times(1))
                .save(buildRequestBodyToSave());
    }

    @Test
    public void shouldReturnBadRequestWhenSave() throws Exception {

        String requestBody = objectMapper.writeValueAsString(buildPersonDto());

        mockMvc.perform(post("/api/persons").contentType(MediaType.APPLICATION_JSON)
                .content(requestBody))
                .andDo(print())
                .andExpect(status().isBadRequest());
    }
}