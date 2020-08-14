<%--
  Created by IntelliJ IDEA.
  User: mengyiyouth
  Date: 2020/8/14
  Time: 8:32
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>图书列表</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
    <link rel="stylesheet" href="../static/css/me.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
</head>
<body>

<%--导航--%>
<div class="ui attached pointing menu m-opacity-tiny">
    <div class="ui container">
        <div class="ui menu">
            <a href="/book/findAll.do" class="active teal item">图书列表</a>
        </div>
    </div>
</div>

<div class="m-padded-tb-large m-opacity-tiny m-container-small">
    <!--contianer能够较好的适用于移动端-->
    <div class="ui container">

<%--        搜索--%>
        <div class="right m-item item m-mobile-hide">
            <form name="search" action="/book/search.do" method="post">
                <div class="ui icon input">
                    <input name="query" type="text" placeholder="请输入书名或作者名">
                    <button class="ui teal button">搜索</button>
                </div>
            </form>
        </div>


        <table class="ui celled table">
            <thead>
            <tr><th></th>
                <th>书名</th>
                <th>作者</th>
                <th>操作</th>
            </tr></thead>
            <tbody>

            <c:forEach items="${books}" var="book">
                <tr>
                    <td>${book.id}</td>
                    <td>${book.bookname}</td>
                    <td>${book.author}</td>
                    <td class="text-center">
                        <a href="/book/toUpdate.do?id=${book.id}" class="btn bg-olive btn-xs">更新</a>
                        <a href="/book/deleteById.do?id=${book.id}" class="btn bg-olive btn-xs">删除</a>
                    </td>
                </tr>
            </c:forEach>

            </tbody>
            <!--表的底部-->
            <tfoot>
            <tr>
                <!--合并单元格-->
                <th colspan="6">
                    <div class="ui mini pagination menu" th:if="${pageInfo.pages} > 1">
                        <a href="#" class="item">上一页</a>
                        <a href="#" class="item">下一页</a>
                        <a onclick="page"></a>
                    </div>
                    <a href="/book/toAdd.do" class="ui mini right floated teal basic button">新增</a>
                </th>
            </tr>
            </tfoot>
        </table>
    </div>
</div>



</body>
</html>
