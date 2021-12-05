package cn.muwei.dao;

import cn.muwei.entity.Movie;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class MovieDAO extends BaseDAO {
    private Connection conn = null;

    public MovieDAO() {

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

    public List searchallmovie(int lines) {
        String sql = "select * from movieinfo\n" +
                "limit 0, ?\n";
        List list = new ArrayList<Movie>();
        try {
            PreparedStatement pstat = conn.prepareStatement(sql);
            pstat.setInt(1, lines);
            ResultSet rst = pstat.executeQuery();
            while (rst.next()) {
                Movie temp = new Movie(rst.getString(1), rst.getString(2), rst.getString(4), rst.getString(3), rst.getString(5), rst.getString(6), rst.getString(7),
                        rst.getString(8), rst.getString(9), rst.getString(10), rst.getString(11), rst.getString(12));
                list.add(temp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return list;
    }

    public List Collection(String username) {
        String sql = "select movieinfo.*\n" +
                "from movieinfo,collection\n" +
                "where collection.movieid = movieinfo.movieID and collection.user_name = ?";
        List list = new ArrayList<Movie>();
        try {
            PreparedStatement pstat = conn.prepareStatement(sql);
            pstat.setString(1, username);
            ResultSet rst = pstat.executeQuery();
            while (rst.next()) {
                Movie temp = new Movie(rst.getString(1), rst.getString(2), rst.getString(4), rst.getString(3), rst.getString(5), rst.getString(6), rst.getString(7),
                        rst.getString(8), rst.getString(9), rst.getString(10), rst.getString(11), rst.getString(12));
                list.add(temp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return list;
    }

    public List searchmovie(String keyword, int lines) {
        String sql = "select * from movieinfo\n" +
                "where tag LIKE ?" +
                "limit 0, ?\n";
        List list = new ArrayList<Movie>();
        try {
            PreparedStatement pstat = conn.prepareStatement(sql);
            pstat.setString(1, "%" + keyword + "%");
            pstat.setInt(2, lines);
            ResultSet rst = pstat.executeQuery();
            while (rst.next()) {
                Movie temp = new Movie(rst.getString(1), rst.getString(2), rst.getString(4), rst.getString(3), rst.getString(5), rst.getString(6), rst.getString(7),
                        rst.getString(8), rst.getString(9), rst.getString(10), rst.getString(11), rst.getString(12));
                list.add(temp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return list;
    }


    public List searchmovieBykeyword(String keyword, int lines) {
        String sql = "select * from movieinfo\n" +
                "where tag LIKE ? or name LIKE ? or actor LIKE ? or director LIKE ? or genre LIKE ? or summary LIKE ?" +
                "limit 0, ?\n";
        List list = new ArrayList<Movie>();
        try {
            PreparedStatement pstat = conn.prepareStatement(sql);
            pstat.setString(1, "%" + keyword + "%");
            pstat.setString(2, "%" + keyword + "%");
            pstat.setString(3, "%" + keyword + "%");
            pstat.setString(4, "%" + keyword + "%");
            pstat.setString(5, "%" + keyword + "%");
            pstat.setString(6, "%" + keyword + "%");
            pstat.setInt(7, lines);
            ResultSet rst = pstat.executeQuery();
            while (rst.next()) {
                Movie temp = new Movie(rst.getString(1), rst.getString(2), rst.getString(4), rst.getString(3), rst.getString(5), rst.getString(6), rst.getString(7),
                        rst.getString(8), rst.getString(9), rst.getString(10), rst.getString(11), rst.getString(12));
                list.add(temp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return list;
    }

    public int size() {
        String sql = "select count(*) num from weimu.movid";
        ArrayList<Movie> movies = new ArrayList<>();
        int num = 0;
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            ResultSet resultSet = stmt.executeQuery();
            resultSet.next();
            num = resultSet.getInt("num");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return num;
    }

    public int getNumById(String id) {
        String sql = "select mov_num from weimu.movid where mov_id = ?";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, id);
            ResultSet resultSet = stmt.executeQuery();
            resultSet.next();
            int ans = resultSet.getInt("mov_num");
            resultSet.close();
            stmt.close();
            return ans;
        } catch (SQLException e) {
            e.printStackTrace();
            return 0;
        }
    }

    public String getIDByNum(int num) {
        String sql = "select mov_id from weimu.movid where mov_num = ?";
        String id = "";
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, num);
            ResultSet resultSet = stmt.executeQuery();
            resultSet.next();
            id = resultSet.getString("mov_id");
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return id;
    }

    public Movie getMovieByNum(int num) {
        String id = getIDByNum(num);
        String sql = "select * from weimu.movieinfo where movieID = ?";
        Movie movie = null;

        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, id);
            ResultSet rst = stmt.executeQuery();
            rst.next();
            movie = new Movie(rst.getString(1), rst.getString(2), rst.getString(4), rst.getString(3), rst.getString(5), rst.getString(6), rst.getString(7),
                    rst.getString(8), rst.getString(9), rst.getString(10), rst.getString(11), rst.getString(12));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return movie;
    }

    public Movie searchmovieByid(String movieid) {
        String sql = "select *\n" +
                "from movieinfo\n" +
                "where movieID = ?";
        Movie movie = null;
        try {
            PreparedStatement pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, movieid);
            ResultSet rst = pstmt.executeQuery();
            if (rst.next()) {
                movie = new Movie(rst.getString(1), rst.getString(2), rst.getString(4), rst.getString(3), rst.getString(5), rst.getString(6), rst.getString(7),
                        rst.getString(8), rst.getString(9), rst.getString(10), rst.getString(11), rst.getString(12));
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return movie;
    }

    public List searchMovieOrderByRate(int lines) {
        String sql = "select *\n" +
                "from movieinfo\n" +
                "where rate != 'none'\n" +
                "order by rate desc limit 0, ?";
        List list = new ArrayList<Movie>();
        try {
            PreparedStatement pstat = conn.prepareStatement(sql);
            pstat.setInt(1, lines);
            ResultSet rst = pstat.executeQuery();
            while (rst.next()) {
                Movie temp = new Movie(rst.getString(1), rst.getString(2), rst.getString(4), rst.getString(3), rst.getString(5), rst.getString(6), rst.getString(7),
                        rst.getString(8), rst.getString(9), rst.getString(10), rst.getString(11), rst.getString(12));
                list.add(temp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return list;
    }

    public List searchMovieOrderByPopular(int lines) {
        String sql = "select *\n" +
                "from movieinfo\n" +
                "order by popular desc limit 0, ?";
        List list = new ArrayList<Movie>();
        try {
            PreparedStatement pstat = conn.prepareStatement(sql);
            pstat.setInt(1, lines);
            ResultSet rst = pstat.executeQuery();
            while (rst.next()) {
                Movie temp = new Movie(rst.getString(1), rst.getString(2), rst.getString(4), rst.getString(3), rst.getString(5), rst.getString(6), rst.getString(7),
                        rst.getString(8), rst.getString(9), rst.getString(10), rst.getString(11), rst.getString(12));
                list.add(temp);
            }
        } catch (SQLException e) {
            e.printStackTrace();
            return null;
        }
        return list;
    }
}
