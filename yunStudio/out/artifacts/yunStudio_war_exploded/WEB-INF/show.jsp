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
<div id="manageSubject" align="center"><!--查看试题-->
    <table width="95%" cellspacing="10">
        <tr align="center">
            <td>试题编号</td>
            <td>试题标题</td>
            <td>正确答案</td>
            <td>查看试题</td>
        </tr>



        <c:forEach var="u" items="${list }">
            <tr align="center">
                <td>${u.studentId }</td>
                <td align="left">${u.username }</td>
                <td>${u.password }</td>
                <td><a href="showallServlet?studentId=${u.studentId }">查看</a></td>
                <td><a href="/DeleteServlet?studentId=${u.studentId }">删除</a></td>
            </tr>
        </c:forEach>

    </table>
</div>
</body>
</html>
