package com.mengyi.controller;

import com.mengyi.dao.bookDao;
import com.mengyi.entity.Book;
import com.mengyi.entity.User;
import com.mengyi.service.BookService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.servlet.ModelAndView;

import java.util.List;

/**
 * @author mengyiyouth
 * @date 2020/8/13 21:39
 **/
@Controller
@RequestMapping("/book")
public class BookController {
    @Autowired
    BookService bookService;

    @RequestMapping("/findAll.do")
    public ModelAndView indexPage(){
        List<Book> books = bookService.findAll();
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.addObject("books", books);
        modelAndView.setViewName("booksList");
        return modelAndView;
    }

    @GetMapping("/toAdd.do")
    public ModelAndView addBook(){
        ModelAndView modelAndView = new ModelAndView();
        modelAndView.setViewName("bookAdd");
        return modelAndView;
    }

    @PostMapping("/add.do")
    public String add(Book book){
        bookService.add(book);
        return "redirect:findAll.do";
    }


    @GetMapping("/toUpdate.do")
    public ModelAndView toUpdateBook(Book book){
        ModelAndView modelAndView = new ModelAndView();
        book = bookService.findBookById(book.getId());
        modelAndView.addObject("book", book);
        modelAndView.setViewName("bookUpdate");
        return modelAndView;
    }

    @RequestMapping("/update.do")
    public String updateBook(Book book){
        bookService.update(book);
        return "redirect:findAll.do";
    }

    @RequestMapping("/deleteById.do")
    public String delete(int id){
        bookService.deleteById(id);
        return "redirect:findAll.do";
    }

    @PostMapping("/search.do")
    public ModelAndView findBookByName(String query){
        ModelAndView modelAndView = new ModelAndView();
        List<Book> books = bookService.getSearch(query);
        modelAndView.addObject("books", books);
        modelAndView.setViewName("booksList");
        return modelAndView;
    }
}
