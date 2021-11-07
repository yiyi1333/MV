package cn.muwei.dao;


import cn.muwei.entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class UserDAO extends BaseDAO{
    private Connection conn = null;
    public UserDAO(){
        try {
            conn = dataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }
    public void close(){
        try{
            conn.close();
        }catch (SQLException throwables){
            throwables.printStackTrace();
        }
    }
    public User findByid(String name){
        String sql = "select * from usrid\n" +
                "where user_name = ?";
        User user = null;
        try {
            PreparedStatement pstat = conn.prepareStatement(sql);
            pstat.setString(1, name);
            ResultSet rst = pstat.executeQuery();
            if(rst.next()){
                user = new User(rst.getInt(1), rst.getString(2), rst.getString(3));
            }
            return user;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean insertUser(User user){
        String sql = "insert into usrid\n" +
                "set usrid.user_name = ?,\n" +
                "    usrid.password = ?";
        boolean flag = false;
        try{
            PreparedStatement pstat = conn.prepareStatement(sql);
            pstat.setString(1, user.getUsername());
            pstat.setString(2, user.getPassword());
            int line = pstat.executeUpdate();
            if(line != 0){
                flag = true;
            }
        }catch (SQLException e){
            e.printStackTrace();
        }finally {
            return flag;
        }
    }
}
