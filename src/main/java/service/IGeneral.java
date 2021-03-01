package service;

import java.util.List;

public interface IGeneral<T> {
    List<T> findAll();
    void save(T t);
    void edit(int id, T t);
    void delete(int id);
    void create(T t);
    T findById(int id);
}
