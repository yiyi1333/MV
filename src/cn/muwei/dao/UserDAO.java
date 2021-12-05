package cn.muwei.dao;


import cn.muwei.entity.Movie;
import cn.muwei.entity.RateInfo;
import cn.muwei.entity.User;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.*;

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
        String sql = "select * from weimu.usrid\n" + "where user_name = ?";
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
        String sql = "insert into weimu.usrid\n" + "set usrid.user_name = ?,\n" + "    usrid.password = ?";
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

    public void addRateInfo(int userid, int movid) {
        String sql = "select * from weimu.ratinfo where user_num = ? and mov_num = ?";
        try {
            PreparedStatement pstat = conn.prepareStatement(sql);
            pstat.setInt(1, userid);
            pstat.setInt(2, movid);
            ResultSet resultSet = pstat.executeQuery();
            if (resultSet.next()) {
                return;
            }
            sql = "insert into weimu.ratinfo(weimu.ratinfo.user_num,weimu.ratinfo.mov_num,weimu.ratinfo.rate) value (?,?,null)";
            pstat = conn.prepareStatement(sql);
            pstat.setInt(1, userid);
            pstat.setInt(2, movid);
            pstat.execute();
            pstat.close();
            resultSet.close();
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public void addTags(List<String> list, int userid) {
        String sql = "insert into weimu.taglike value(?,?)";
        try {
            for (String s : list) {
                PreparedStatement pstat = conn.prepareStatement(sql);
                pstat.setInt(1, userid);
                pstat.setString(2, s);
                System.out.println(pstat);
                pstat.execute();
                pstat.close();
            }
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    public ArrayList<String> getTags(int userid) {
        ArrayList<String> tags = new ArrayList<>();
        String sql = "select * from weimu.taglike where userid = ?";
        try {
            PreparedStatement pstat = conn.prepareStatement(sql);
            pstat.setInt(1, userid);
            ResultSet rst = pstat.executeQuery();
            while (rst.next()) {
                tags.add(rst.getString("tags"));
            }
            return tags;
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
    }

    public ArrayList<Movie> shuffle(ArrayList<Movie> movies) {
        for (int i = 1; i < movies.size(); i++) {
            Movie tmp = movies.get(i);
            int j = (int) (Math.random() * i + 1);
            movies.set(i, movies.get(j));
            movies.set(j, tmp);
        }
        return movies;
    }


    public ArrayList<Movie> getTagRecommend(int userid) {
        ArrayList<String> tags = getTags(userid);
        HashSet<String> st = new HashSet<>();
        st.addAll(tags);
        ArrayList<Movie> movies = new ArrayList<>();
        String sql = "select * from weimu.movieinfo";
        try {
            PreparedStatement pstat = conn.prepareStatement(sql);
            ResultSet rst = pstat.executeQuery();
            while (rst.next()) {
                Movie temp = new Movie(rst.getString(1), rst.getString(2), rst.getString(4), rst.getString(3), rst.getString(5), rst.getString(6), rst.getString(7), rst.getString(8), rst.getString(9), rst.getString(10), rst.getString(11), rst.getString(12));
                movies.add(temp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        ArrayList<Movie_Tag> ans = new ArrayList<>();
        for (Movie movie : movies) {
            Movie_Tag movie_tag = new Movie_Tag();
            movie_tag.movie = movie;
            movie_tag.cnt = 0;
            String str[] = movie.getGenre().split(",");
            for (String s : str) {
                if (st.contains(s)) movie_tag.cnt += 1;
            }
            ans.add(movie_tag);
        }
        ans.sort(Comparator.comparingInt(movie_tag -> -movie_tag.cnt));
        movies.clear();
        for (int i = 0; i < 40; i++) movies.add(ans.get(i).movie);
        return movies;
    }
}

class Movie_Tag {
    Movie movie;
    int cnt;

    public int getCnt() {
        return cnt;
    }

    public Movie getMovie() {
        return movie;
    }
}
