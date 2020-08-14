package com.mengyi.service;

import com.mengyi.entity.Book;

import java.util.List;

/**
 * @author mengyiyouth
 * @date 2020/8/13 21:43
 **/
public interface BookService {
    List<Book> findAll();
    void update(Book book);
    void deleteById(Integer id);
    void add(Book book);
    List<Book> getSearch(String pattern);
    Book findBookById(Integer id);
}
