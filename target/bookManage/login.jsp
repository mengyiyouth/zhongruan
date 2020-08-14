<%--
  Created by IntelliJ IDEA.
  User: mengyiyouth
  Date: 2020/8/14
  Time: 9:51
  To change this template use File | Settings | File Templates.
--%>
<%@ page import="java.util.List" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8" isELIgnored="false"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Title</title>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/semantic-ui@2.4.2/dist/semantic.min.css">
    <link rel="stylesheet" href="../../static/lib/editormd/css/editormd.min.css">
    <link rel="stylesheet" href="../../static/css/me.css">
</head>
<body>

<div class="m-container-small m-padded-tb-massive" style="max-width: 30em !important;">
    <div class="ur container">
        <div class="ui middle aligned center aligned grid">
            <div class="column">
                <h2 class="ui teal image header">
                    <div class="content">
                        图书管理系统
                    </div>
                </h2>
                <form class="ui large form" method="post" action="/user/login.do" >
                    <div class="ui  segment">
                        <div class="field">
                            <div class="ui left icon input">
                                <i class="user icon"></i>
                                <input type="text" name="username" placeholder="用户名">
                            </div>
                        </div>
                        <div class="field">
                            <div class="ui left icon input">
                                <i class="lock icon"></i>
                                <input type="password" name="password" placeholder="密码">
                            </div>
                        </div>
                        <button class="ui fluid large teal submit button">登   录</button>
                    </div>

                    <div class="ui error mini message"></div>
<%--                    <div class="ui mini negative message" th:unless="${#strings.isEmpty(message)}" th:text="${message}">用户名和密码错误</div>--%>
                </form>

            </div>
        </div>
    </div>
</div>

</body>
</html>
