
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>欢迎你登录</title>
</head>
<body>
<p>添加</p>
<!--添加为原始的修改-->
<div id="add" align="center">
    <form action="/adServlet" method="post">
        <table border="0" cellspacing="10" cellpadding="0">
            <tr>
                <td colspan="2"><font color="red"><s:actionerror/></font></td>
            </tr>
            <tr>
                <td>username*</td>
                <td><input type="text" name="username" size="20" ></td>
            </tr>    <tr>
            <td>password*</td>
            <td><input type="text" name="password" size="20" ></td>
        </tr>
            <tr>
                <td>borthday*</td>
                <td><input type="text" name="borthday" size="20" ></td>
            </tr>
            <tr>
                <td>qq</td>
                <td><input type="text" name="qq" size="80" ></td>
            </tr>
            <tr>
                <td>email</td>
                <td><input type="text" name="email" size="80" ></td>
            </tr>
            <tr>
                <td>sex</td>
                <td>
                    <input type="radio" name="sex" value="boy" checked>男
                    <input type="radio" name="sex" value="girl"> 女
                </td>
            </tr>
            <tr>
                <td colspan="2"><div align="center">
                    <input type="submit" value="更新">
                    <input type="reset" value="重置">
                </div>
                </td>
            </tr>
        </table>
    </form>
</div>
<p>修改</p>
<div id="update" align="center">
    <form action="/updateServlet" method="post">
        <table border="0" cellspacing="10" cellpadding="0">
            <tr>
                <td colspan="2"><font color="red"><s:actionerror/></font></td>
            </tr>
            <tr>
                <td>你想要修改的studentId为：</td>
                <td><input name="studentId" type="text" size="20" ></td>
            </tr>
            <tr>
                <td>username</td>
                <td><input type="text" name="username" size="20" ></td>
            </tr>    <tr>
            <td>password</td>
            <td><input type="text" name="password" size="20" ></td>
        </tr>
            <tr>
                <td>borthday</td>
                <td><input type="text" name="borthday" size="20" ></td>
            </tr>
            <tr>
                <td>qq</td>
                <td><input type="text" name="qq" size="80" ></td>
            </tr>
            <tr>
                <td>email</td>
                <td><input type="text" name="email" size="80" ></td>
            </tr>
            <tr>
                <td>sex</td>
                <td>
                    <input type="radio" name="sex" value="boy" checked>男
                    <input type="radio" name="sex" value="girl"> 女
                </td>
            </tr>
            <tr>
                <td colspan="2"><div align="center">
                    <input type="submit" value="更新">
                    <input type="reset" value="重置">
                </div>
                </td>
            </tr>
        </table>
    </form>
</div>

<p>查看全部</p>
<form action="/showallServlet" method="post">
    <table border="0" cellspacing="10" cellpadding="0">
        <tr>
            <td colspan="2">
                <div align="center">
                <input type="submit" value="录入">
                <input type="reset" value="重置">
            </div>
            </td>
        </tr>
    </table>
</form>
<p>查看指定id</p>
<form action="/showlistServlet" method="post">

     <p>请输入你要查询的id:</p>
    <input type="text" name="studentId" size="80" >
    <input type="submit" value="录入">
    <input type="reset" value="重置">
</form>
<p>删除</p>
<div id="delect" align="center">
    <form action="/DeleteServlet" method="post">
        <p>请输入你要删除的id:</p>
        <input type="text" name="studentId" >
        <input name="submit" type="submit" value="确定">
        </form>
</div>
</body>

</html>
