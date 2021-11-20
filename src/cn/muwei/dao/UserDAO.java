package cn.muwei.dao;


import cn.muwei.entity.Movie;
import cn.muwei.entity.RateInfo;
import cn.muwei.entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.TreeMap;

public class UserDAO extends BaseDAO {
    private Connection conn = null;

    public UserDAO() {
        try {
            conn = dataSource.getConnection();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    public void close() {
        try {
            conn.close();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }

    public User findByid(String name) {
        String sql = "select * from weimu.usrid\n" +
                "where user_name = ?";
        User user = null;
        try {
            PreparedStatement pstat = conn.prepareStatement(sql);
            pstat.setString(1, name);
            ResultSet rst = pstat.executeQuery();
            if (rst.next()) {
                user = new User(rst.getInt(1), rst.getString(2), rst.getString(3));
            }
            return user;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public boolean insertUser(User user) {
        String sql = "insert into weimu.usrid\n" +
                "set usrid.user_name = ?,\n" +
                "    usrid.password = ?";
        boolean flag = false;
        try {
            PreparedStatement pstat = conn.prepareStatement(sql);
            pstat.setString(1, user.getUsername());
            pstat.setString(2, user.getPassword());
            int line = pstat.executeUpdate();
            if (line != 0) {
                flag = true;
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return flag;

    }

    public int size() {
        String sql = "select count(*) num from weimu.usrid";
        int num = 0;
        try {
            PreparedStatement pstat = conn.prepareStatement(sql);
            ResultSet resultSet = pstat.executeQuery();
            resultSet.next();
            num = resultSet.getInt("num");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return num;
    }

    public TreeMap<String, Integer> getGenreMap(int id, int maxnum) {
        MovieDAO movieDAO = new MovieDAO();
        RateInfoDAO rateInfoDAO = new RateInfoDAO();
        ArrayList<RateInfo> rateInfos = rateInfoDAO.getRateList(id);
        TreeMap<String, Integer> res = new TreeMap<>();
        for (RateInfo rateInfo : rateInfos) {
            Movie movie = movieDAO.getMovieByNum(rateInfo.getMov_num());
            String[] strings = movie.getGenre().split(",");
            for (String str : strings) {
                Integer integer = res.get(str);
                if (integer == null) integer = 1;
                else integer = integer + 1;
                res.put(str, integer);
            }
        }
        while (res.size() > maxnum) {
            res.remove(res.firstKey());
        }
        movieDAO.close();
        rateInfoDAO.close();
        return res;
    }

    public TreeMap<String, Integer> getActorMap(int id, int maxnum) {
        MovieDAO movieDAO = new MovieDAO();
        RateInfoDAO rateInfoDAO = new RateInfoDAO();
        ArrayList<RateInfo> rateInfos = rateInfoDAO.getRateList(id);
        TreeMap<String, Integer> res = new TreeMap<>();
        for (RateInfo rateInfo : rateInfos) {
            Movie movie = movieDAO.getMovieByNum(rateInfo.getMov_num());
            String[] strings = movie.getActor().split(",");
            for (String str : strings) {
                Integer integer = res.get(str);
                if (integer == null) integer = 1;
                else integer = integer + 1;
                res.put(str, integer);
            }
        }
        while (res.size() > maxnum) {
            res.remove(res.firstKey());
        }
        movieDAO.close();
        rateInfoDAO.close();
        return res;
    }
}
