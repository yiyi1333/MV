package cn.muwei.dao;

import cn.muwei.entity.RateInfo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Comparator;

public class RateInfoDAO extends BaseDAO {
    private Connection conn = null;

    public RateInfoDAO() {
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

    public ArrayList<RateInfo> getRateList(int id) {  // 根据用户id，查询用户的所有评分
        String sql = "select * from weimu.ratinfo where user_num = ?";
        ArrayList<RateInfo> rates = new ArrayList<>();
        try {
            PreparedStatement stmt = conn.prepareStatement(sql);
            stmt.setInt(1, id);
            ResultSet resultSet = stmt.executeQuery();
            while (resultSet.next()) {
                int mov_num = resultSet.getInt("mov_num");
                int rate = resultSet.getInt("rate");
                if (rate != 0) {
                    RateInfo rateInfo = new RateInfo(id, mov_num, rate);
                    rates.add(rateInfo);
                }
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }

        rates.sort(Comparator.comparingInt(RateInfo::getMov_num));
        return rates;
    }
}
