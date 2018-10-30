<%--
  Created by IntelliJ IDEA.
  User: 孙茹
  Date: 2018/9/20
  Time: 19:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>
<head>
    <title>Title</title>
</head>
<body>
<div id="manageSubject" align="center"><!--查看全部-->
    <table width="95%" cellspacing="10">
        <tr align="center">
            <td>学生编号</td>
            <td>学生姓名</td>
            <td>学生密码</td>
            <td>生日</td>
            <td>qq</td>
            <td>email</td>
            <td>性别</td>
        </tr>



        <c:forEach var="u" items="${list }">
            <tr align="center">
                <td>${u.studentId }</td>
                <td >${u.username }</td>
                <td>${u.password }</td>
                <td>${u.borthday }</td>
                <td>${u.qq }</td>
                <td>${u.email}</td>
                <td>${u.sex }</td>
                <td><a href="/showlistServlet?studentId=${u.studentId }">查看</a></td>
                <td><a href="/DeleteServlet?studentId=${u.studentId }">删除</a></td>
            </tr>
        </c:forEach>

    </table>
</div>
</body>
</html>
