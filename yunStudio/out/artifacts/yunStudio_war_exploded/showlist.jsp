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
                <td>编号:</td>
                <td>${u.studentId }</td>
            </tr>
            <tr>
                <td>姓名:</td>
                <td>${u.username }</td>
            </tr>
            <tr>
                <td>密码:</td>
                <td>${u.password }</td>
            </tr>
            <tr>
                <td>qq:</td>
                <td>${u.qq }</td>
            </tr>
            <tr>
                <td>邮箱</td>
                <td>${u.email }</td>
            </tr>
            <tr>
                <td>性别</td>
                <td>${u.sex }</td>
            </tr>

        </c:forEach>
    </table>
</div>
</body>
</html>
