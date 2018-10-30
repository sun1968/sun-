<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="showSubject" align="center"><!--显示试题-->
    <table border="0" cellspacing="10" cellpadding="0">
        <c:forEach var="u" items="${list }">
            <tr>
                <td>试题编号:</td>
                <td>${u.studentId }</td>
            </tr>
            <tr>
                <td>试题题目:</td>
                <td>${u.username }</td>
            </tr>
            <tr>
                <td>选项A:</td>
                <td>${u.password }</td>
            </tr>
            <tr>
                <td>选项B:</td>
                <td>${u.qq }</td>
            </tr>
            <tr>
                <td>选项C:</td>
                <td>${u.email }</td>
            </tr>
            <tr>
                <td>选项D:</td>
                <td>${u.sex }</td>
            </tr>

        </c:forEach>
    </table>
</div>
</body>
</html>
