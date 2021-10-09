package com.example.springjenkins.mapper;

public interface Mapper<Entity, Dto> {

    Dto toDto(Entity entity);

    Entity toEntity(Dto dto);
}
