package cn.muwei.dao;

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


    public static ArrayList<UserSimilarity> getCommonUser(int id, ArrayList<RateInfo> rateArrayList) throws Exception {
        ArrayList<UserSimilarity> ans = new ArrayList<>();

        UserDAO userDAO = new UserDAO();
        int s

        for (int i = 1; i <= 3327; i++) {
            if (i == id) continue;
            RateInfoDAO rateInfoDAO = new RateInfoDAO();
            ArrayList<RateInfo> otherUserRate = rateInfoDAO.getRateList(i);
            rateInfoDAO.close();

            int pos = 0, cnt = 0;
//            double fenzi = 0, mo1 = 0, mo2 = 0;
            for (RateInfo rateInfo : otherUserRate) {
                while (pos < rateArrayList.size() && rateArrayList.get(pos).getMov_num() < rateInfo.getMov_num()) pos++;
                if (pos < rateArrayList.size() && rateArrayList.get(pos).getMov_num() == rateInfo.getMov_num()) {
                    cnt++;
//                    fenzi += rateArrayList.get(pos).score * rateInfo.score;
//                    mo1 += rateArrayList.get(pos).score * rateArrayList.get(pos).score;
//                    mo2 += rateInfo.score * rateInfo.score;
                }
            }
            if (cnt > 5) {
//                mo1 = Math.sqrt(mo1);
//                mo2 = Math.sqrt(mo2);
                UserSimilarity userSimilarity = new UserSimilarity();
                userSimilarity.setCnt(i);
                userSimilarity.setSame(rateArrayList.size() + otherUserRate.size() - cnt);
//                commonUser.commonRate = Math.pow(fenzi / mo1 / mo2, 8);
                userSimilarity.setSame(cnt);
                userSimilarity.setSimilarRate((double) cnt / (double) userSimilarity.getCnt());
                ans.add(userSimilarity);
            }
        }
        ans.sort(Comparator.comparingDouble(userSimilarity -> -userSimilarity.getSimilarRate()));
        while (ans.size() > 20) ans.remove(ans.size() - 1);
        return ans;
    }
}
