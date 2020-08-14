<%--
  Created by IntelliJ IDEA.
  User: mengyiyouth
  Date: 2020/8/14
  Time: 11:49
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>新增图书</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
    <link rel="stylesheet" href="../static/css/me.css">
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.2/dist/jquery.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.js"></script>
</head>
<body>
<div class="m-padded-tb-large m-container-small">

    <!--contianer能够较好的适用于移动端-->
    <div class="ui container">


        <form action="${pageContext.request.contextPath}/book/add.do" class="ui form" method="post" >

            <!--添加标签-->
            <div class="required field">
                <div class="ui left labeled input">
                    <label class="ui teal basic label">书名</label>
                    <input type="text" name="bookname" placeholder="书名" value="${book.bookname}">

                    <label class="ui teal basic label">作者</label>
                    <input type="text" name="author" placeholder="作者名" value="${book.author}">
                </div>
            </div>

            <div class="ui right aligned container">
                <button type="button" class="ui button" onclick="window.history.go(-1)">返回</button>
                <button class="ui teal button">提交</button>
            </div>
        </form>
    </div>
</div>

</body>
</html>
