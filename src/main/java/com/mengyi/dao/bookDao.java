package com.mengyi.dao;

import com.mengyi.entity.Book;

import java.util.List;

/**
 * @author mengyiyouth
 * @date 2020/8/13 21:40
 **/

public interface bookDao {
    List<Book> findAllBook();
    void updateBookById(Book book);
    void delete(Integer id);
    void insert(Book book);
    List<Book> getSearchBooks(String query);
    Book findBookById(Integer id);
}
