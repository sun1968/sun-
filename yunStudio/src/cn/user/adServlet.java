package cn.user;

import cn.JBDao.ADDao;
import cn.JBDao.ADDaoImpl;
import cn.jdbc.User;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

//@WebServlet(name = "adServlet")
public class adServlet extends HttpServlet {
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setContentType("text/html;charset=utf-8");

        String username=request.getParameter("username");
        String passWord=request.getParameter("password");
        String borthDay=request.getParameter("borthday");
        String qq=request.getParameter("qq");
        String email=request.getParameter("email");
        String sex=request.getParameter("sex");

        User User =new User();
        User.setQq(qq);
        User.setEmail(email);
        User.setUsername(username);
        User.setPassword(passWord);
        User.setBorthday(borthDay);
        User.setSex(sex);
        ADDao sd = new ADDaoImpl();
        System.out.println("123");
        try{
            sd.add(username,passWord,borthDay,qq, sex);
        }catch(Exception e){
            System.out.println("添加失败");
            e.printStackTrace();
        }
    }

    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
doPost(request,response);
    }
}
