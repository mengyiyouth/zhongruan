package com.mengyi.service.impl;

import com.mengyi.entity.Book;
import com.mengyi.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author mengyiyouth
 * @date 2020/8/13 21:43
 **/
@Service
public class BookServiceImpl implements BookService {
    @Autowired
    com.mengyi.dao.bookDao bookDao;
    @Override
    public List<Book> findAll() {
        return bookDao.findAllBook();
    }

    @Override
    public void update(Book book) {
        bookDao.updateBookById(book);
    }

    @Override
    public void deleteById(Integer id) {
        bookDao.delete(id);
    }

    @Override
    public void add(Book book) {
        bookDao.insert(book);
    }

    @Override
    public List<Book> getSearch(String pattern) {
        return bookDao.getSearchBooks(pattern);
    }

    @Override
    public Book findBookById(Integer id) {
        return bookDao.findBookById(id);
    }
}
