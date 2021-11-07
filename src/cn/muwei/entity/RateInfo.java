package cn.muwei.entity;

public class RateInfo {
    private int user_num, mov_num, rate;

    RateInfo() {
    }

    RateInfo(int user_num, int mov_num, int rate) {
        this.user_num = user_num;
        this.mov_num = mov_num;
        this.rate = rate;
    }

    public int getMov_num() {
        return mov_num;
    }

    public int getRate() {
        return rate;
    }

    public int getUser_num() {
        return user_num;
    }

    public void setMov_num(int mov_num) {
        this.mov_num = mov_num;
    }

    public void setRate(int rate) {
        this.rate = rate;
    }

    public void setUser_num(int user_num) {
        this.user_num = user_num;
    }
}
