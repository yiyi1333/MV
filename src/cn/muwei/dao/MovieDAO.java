package cn.muwei.dao;

import cn.muwei.entity.Movie;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MovieDAO extends BaseDAO{
    private Connection conn = null;
    public MovieDAO(){
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
    public List searchallmovie(int lines){
        String sql = "select * from movieinfo\n" +
                "limit 0, ?\n";
        List list = new ArrayList<Movie>();
        try{
            PreparedStatement pstat = conn.prepareStatement(sql);
            pstat.setInt(1, lines);
            ResultSet rst = pstat.executeQuery();
            while(rst.next()){
                Movie temp = new Movie(rst.getString(1), rst.getString(2), rst.getString(4), rst.getString(3), rst.getString(5), rst.getString(6), rst.getString(7),
                        rst.getDouble(8), rst.getInt(9), rst.getString(11), rst.getString(10), rst.getString(12));
                list.add(temp);
            }
        }catch (SQLException e){
            e.printStackTrace();
            return null;
        }
        return list;
    }

}
