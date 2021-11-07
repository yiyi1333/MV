package cn.muwei.entity;

public class UserSimilarity {
    int id1;    // 用户1的id
    int id2;    // 用户2的id
    int cnt;    // 用户1和用户2看过的电影交集的大小
    int same;   // 用户1和用户2看过的电影并集的大小
    double similarRate; //两用户之间的相似度

    public UserSimilarity() {
    }

    public UserSimilarity(int id1, int id2, int cnt, int same, double similarRate) {
        this.id1 = id1;
        this.id2 = id2;
        this.cnt = cnt;
        this.same = same;
        this.similarRate = similarRate;
    }

    public double getSimilarRate() {
        return similarRate;
    }

    public void setSimilarRate(double similarRate) {
        this.similarRate = similarRate;
    }

    public int getCnt() {
        return cnt;
    }

    public void setCnt(int cnt) {
        this.cnt = cnt;
    }

    public int getId1() {
        return id1;
    }

    public void setId1(int id1) {
        this.id1 = id1;
    }

    public int getId2() {
        return id2;
    }

    public void setId2(int id2) {
        this.id2 = id2;
    }

    public int getSame() {
        return same;
    }

    public void setSame(int same) {
        this.same = same;
    }
}
