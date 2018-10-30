package cn.JBDao;

import cn.jdbc.User;

import java.util.List;

public interface ADDao {
    public boolean add(String username,String password,String borthday, String qq, String sex );
    public List<User> selectall();
    public boolean update(int studentId,String username,String password,String borthday, String qq, String sex );
    public boolean delete(int studentId);
    public  List<User> selectById(String string);

}
