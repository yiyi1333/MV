package cn.muwei.dao;

import cn.muwei.entity.Movie;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

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

    //
    public Movie getMovieByNum(int num) {
        String id = getIDByNum(num);
        String sql = "select * from weimu.movieinfo where movieID = ?";
        Movie movie = new Movie();

        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setString(1, id);
            ResultSet resultSet = stmt.executeQuery();
            resultSet.next();

            movie.setMovid(resultSet.getString("movieID"));
            movie.setName(resultSet.getString("name"));
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return movie;
    }
}
