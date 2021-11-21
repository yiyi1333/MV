package cn.muwei.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class CollectionDAO extends BaseDAO{
    private Connection conn = null;
    public CollectionDAO(){

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

    public boolean AddtoCollection(String username, String movieid){
        int lines = 0;
        String sql = "INSERT INTO collection values(?, ?)";
        try {
            PreparedStatement pstat = conn.prepareStatement(sql);
            pstat.setString(1, username);
            pstat.setString(2, movieid);
            lines = pstat.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        if(lines != 0) return true;
        else return false;
    }

    public boolean AddtoLike(String username, String movieid){
        int lines = 0;
        String sql = "INSERT INTO movlike values(?, ?)";
        try {
            PreparedStatement pstat = conn.prepareStatement(sql);
            pstat.setString(1, username);
            pstat.setString(2, movieid);
            lines = pstat.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        if(lines != 0) return true;
        else return false;
    }
    public boolean AddtoUnlike(String username, String movieid){
        int lines = 0;
        String sql = "INSERT INTO movunlike values(?, ?)";
        try {
            PreparedStatement pstat = conn.prepareStatement(sql);
            pstat.setString(1, username);
            pstat.setString(2, movieid);
            lines = pstat.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
            return false;
        }
        if(lines != 0) return true;
        else return false;
    }
}
