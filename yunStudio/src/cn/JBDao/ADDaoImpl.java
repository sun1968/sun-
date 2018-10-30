package cn.JBDao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;


import cn.jdbc.DBDao;
import cn.jdbc.User;


public class ADDaoImpl implements ADDao{

    Connection conn = (Connection) DBDao.getConnection();

    @Override
    public boolean add( String username, String password, String borthday, String qq, String sex) {
        boolean flag = false;
        try {
            String sql = "insert user set username = '"+username+"',password = '"+password+"',borthday = '"+borthday+
                    "',qq = '"+qq+"',sex = '"+sex+"'";

            PreparedStatement pstmt = conn.prepareStatement(sql);
            int i = pstmt.executeUpdate();
            pstmt.close();
            conn.close();
            if(i>0)flag = true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }


    @Override
    public List<User> selectall() {
        List<User> list = new ArrayList<User>();
        try {
            String sql = "select * from user";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()) {
                User user = new User();
                user.setStudentId(rs.getInt("studentId"));
                user.setBorthday(rs.getString("borthday"));
                user.setEmail(rs.getString("email"));
                user.setQq(rs.getString("qq"));
                user.setSex(rs.getString("sex"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                list.add(user);
            }
            rs.close();
            pstmt.close();
            conn.close();

        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public List<User> selectById(String studentId) {
        List<User> list = new ArrayList<>();
        try {
            String sql = "select * from user where studentId=?";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1,studentId );
            ResultSet rs = pstmt.executeQuery();
            while(rs.next()) {
                User user = new User();
                user.setStudentId(rs.getInt("studentId"));
                user.setBorthday(rs.getString("borthday"));
                user.setEmail(rs.getString("email"));
                user.setQq(rs.getString("qq"));
                user.setSex(rs.getString("sex"));
                user.setUsername(rs.getString("username"));
                user.setPassword(rs.getString("password"));
                list.add(user);
            }
            rs.close();
            pstmt.close();
            conn.close();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return list;
    }
    @Override
    public boolean update(int studentId, String username,String password,String borthday, String qq, String sex ) {
        boolean flag = false;
        try {
          String sql= "update user set username = '"+username+"',password = '"+password+"',borthday = '"+borthday+
                    "',qq = '"+qq+"',sex = '"+sex+"' where studentId ='"+studentId+"'";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            int i = pstmt.executeUpdate();
            pstmt.close();
            conn.close();
            if(i>0)flag = true;
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    @Override
    public boolean delete(int studentId) {
        boolean flag = false;
        try {
           String sql = "delete from user where studentId ='"+studentId+"'";
            PreparedStatement pstmt = conn.prepareStatement(sql);
            int i = pstmt.executeUpdate();
            pstmt.close();
            conn.close();
            if(i>0) flag = true;
        } catch (SQLException e) {
            System.out.println("删除失败！");
            e.printStackTrace();
        }

        return flag;
    }

}
