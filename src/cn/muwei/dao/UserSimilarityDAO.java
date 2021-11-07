package cn.muwei.dao;

import java.sql.Connection;
import java.sql.SQLException;

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

//    public static ArrayList<UserSimilarity> getCommonUser(int id, ArrayList<RateInfo> rateArrayList) throws Exception {
//        ArrayList<UserSimilarity> ans = new ArrayList<>();
//        for (int i = 1; i <= 3327; i++) {
//            if (i == id) continue;
//            RateInfoDAO rateInfoDAO = new RateInfoDAO();
//            ArrayList<RateInfo> otherUserRate = ra
//
//            int pos = 0, cnt = 0;
////            double fenzi = 0, mo1 = 0, mo2 = 0;
//            for (Rate rate : otherUserRate) {
//                while (pos < rateArrayList.size() && rateArrayList.get(pos).mov_id < rate.mov_id) pos++;
//                if (pos < rateArrayList.size() && rateArrayList.get(pos).mov_id == rate.mov_id) {
//                    cnt++;
////                    fenzi += rateArrayList.get(pos).score * rate.score;
////                    mo1 += rateArrayList.get(pos).score * rateArrayList.get(pos).score;
////                    mo2 += rate.score * rate.score;
//                }
//            }
//            if (cnt > 5) {
////                mo1 = Math.sqrt(mo1);
////                mo2 = Math.sqrt(mo2);
//                SimilarUser similarUser = new SimilarUser();
//                similarUser.id = i;
//                similarUser.cnt = rateArrayList.size() + otherUserRate.size() - cnt;
////                commonUser.commonRate = Math.pow(fenzi / mo1 / mo2, 8);
//                similarUser.same = cnt;
//                similarUser.similarRate = (double) cnt / (double) similarUser.cnt;
//                ans.add(similarUser);
//            }
//        }
//        ans.sort(Comparator.comparingDouble(similarUser -> -similarUser.similarRate));
//        while (ans.size() > 20) ans.remove(ans.size() - 1);
//        return ans;
//    }
}
