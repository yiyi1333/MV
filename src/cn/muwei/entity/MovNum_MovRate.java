package cn.muwei.entity;

public class MovNum_MovRate {
    private int movNum;
    private double movRate;

    public MovNum_MovRate() {

    }

    public MovNum_MovRate(int movNum, double movRate) {
        this.movNum = movNum;
        this.movRate = movRate;
    }

    public double getMovRate() {
        return movRate;
    }

    public void setMovRate(double movRate) {
        this.movRate = movRate;
    }

    public int getMovNum() {
        return movNum;
    }

    public void setMovNum(int movNum) {
        this.movNum = movNum;
    }
}
