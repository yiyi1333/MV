package cn.muwei.dao;

import cn.muwei.entity.MovNum_MovRate;
import cn.muwei.entity.Movie;
import cn.muwei.entity.RateInfo;
import cn.muwei.entity.UserSimilarity;

import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Comparator;

public class UserSimilarityDAO extends BaseDAO {
    private Connection conn = null;

    public UserSimilarityDAO() {
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


    public ArrayList<UserSimilarity> getCommonUser(int id) {
        RateInfoDAO rateInfoDAO = new RateInfoDAO();
        ArrayList<RateInfo> rateArrayList = rateInfoDAO.getRateList(id);

        ArrayList<UserSimilarity> ans = new ArrayList<>();

        UserDAO userDAO = new UserDAO();
        int usercnt = userDAO.size();
        userDAO.close();

        for (int i = 1; i <= usercnt; i++) {
            if (i == id) continue;
            ArrayList<RateInfo> otherUserRate = rateInfoDAO.getRateList(i);

            int pos = 0, same = 0;
//            double fenzi = 0, mo1 = 0, mo2 = 0;
            for (RateInfo rateInfo : otherUserRate) {
                while (pos < rateArrayList.size() && rateArrayList.get(pos).getMov_num() < rateInfo.getMov_num()) pos++;
                if (pos < rateArrayList.size() && rateArrayList.get(pos).getMov_num() == rateInfo.getMov_num()) {
                    same++;
//                    fenzi += rateArrayList.get(pos).score * rateInfo.score;
//                    mo1 += rateArrayList.get(pos).score * rateArrayList.get(pos).score;
//                    mo2 += rateInfo.score * rateInfo.score;
                }
            }
            if (same > 0) {
//                mo1 = Math.sqrt(mo1);
//                mo2 = Math.sqrt(mo2);
                UserSimilarity userSimilarity = new UserSimilarity();
                userSimilarity.setId1(id);
                userSimilarity.setId2(i);
                userSimilarity.setCnt(rateArrayList.size() + otherUserRate.size() - same);
                userSimilarity.setSame(same);
//                commonUser.commonRate = Math.pow(fenzi / mo1 / mo2, 8);
                userSimilarity.setSimilarRate((double) same * same / (double) userSimilarity.getCnt());
                ans.add(userSimilarity);
            }
        }
        rateInfoDAO.close();
        ans.sort(Comparator.comparingDouble(userSimilarity -> -userSimilarity.getSimilarRate()));
        while (ans.size() > 50) ans.remove(ans.size() - 1);
        for (UserSimilarity userSimilarity : ans) {
            System.out.println("id:" + userSimilarity.getId2() + "  same:" + userSimilarity.getSame() + "  rate:" + userSimilarity.getSimilarRate());
        }
        return ans;
    }

    public ArrayList<Movie> getRecommend(ArrayList<UserSimilarity> userSimilarities, int movieNumber) {
        MovieDAO movieDAO = new MovieDAO();
        RateInfoDAO rateInfoDAO = new RateInfoDAO();
        int num = movieDAO.size();
        ArrayList<MovNum_MovRate> movNum_movRates = new ArrayList<>();
        for (int i = 0; i < num; i++) {
            movNum_movRates.add(new MovNum_MovRate(i + 1, 0.0));
        }

        for (UserSimilarity userSimilarity : userSimilarities) {
            ArrayList<RateInfo> rateInfos = rateInfoDAO.getRateList(userSimilarity.getId2());
            for (RateInfo rateInfo : rateInfos) {
                MovNum_MovRate movNum_movRate = movNum_movRates.get(rateInfo.getMov_num() - 1);
                movNum_movRate.setMovRate(movNum_movRate.getMovRate() + userSimilarity.getSimilarRate());
            }
        }

        movNum_movRates.sort(Comparator.comparingDouble(movNum_movRate -> -movNum_movRate.getMovRate()));
        while (movNum_movRates.size() > movieNumber) movNum_movRates.remove(movNum_movRates.size() - 1);

        ArrayList<Movie> movies = new ArrayList<>();
        for (MovNum_MovRate movNum_movRate : movNum_movRates) {
            System.out.println("推荐电影:" + movieDAO.getMovieByNum(movNum_movRate.getMovNum()).getName() + "  得分:" + movNum_movRate.getMovRate());
            movies.add(movieDAO.getMovieByNum(movNum_movRate.getMovNum()));
        }
        movieDAO.close();
        rateInfoDAO.close();
        return movies;
    }
}
