package cn.user;

import java.io.IOException;

import cn.jdbc.User;
import cn.jdbc.UserDao;
public class Servlet extends javax.servlet.http.HttpServlet {
    protected void doPost(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
       doGet(request,response);
    }

    protected void doGet(javax.servlet.http.HttpServletRequest request, javax.servlet.http.HttpServletResponse response) throws javax.servlet.ServletException, IOException {
        response.setCharacterEncoding("GBK");
        //获取用户名和密码
        String username = request.getParameter("username");

        String password = request.getParameter("password");

        if(("123").equals(username)&&("123").equals(password)){
            //
            request.setAttribute("list", "123");
            request.getRequestDispatcher("/success.jsp").forward(request, response);
            //response.sendRedirect("/success.jsp");
            System.out.println("wee");
        }else{
            // 登录失败
            request.getRequestDispatcher("login.html").forward(request, response);
        }
    }

    }

