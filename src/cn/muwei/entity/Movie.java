package cn.muwei.po;

public class Movie {
    private String movnum;
    private String movid;
    private String name;
    private String director;
    private String actor;
    private String genre;
    private String tag;
    private String summary;
    private double rate;
    private int popular;
    private String posterUrl;
    private String releasetime;//上映时间
    private String length;//片长

    public Movie() {
    }

    public Movie(String movnum, String movid, String name, String director, String actor, String genre, String tag, String summary, double rate, int popular, String posterUrl, String releasetime, String length) {
        this.movnum = movnum;
        this.movid = movid;
        this.name = name;
        this.director = director;
        this.actor = actor;
        this.genre = genre;
        this.tag = tag;
        this.summary = summary;
        this.rate = rate;
        this.popular = popular;
        this.posterUrl = posterUrl;
        this.releasetime = releasetime;
        this.length = length;
    }

    public String getMovnum() {
        return movnum;
    }

    public void setMovnum(String movnum) {
        this.movnum = movnum;
    }

    public String getMovid() {
        return movid;
    }

    public void setMovid(String movid) {
        this.movid = movid;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getDirector() {
        return director;
    }

    public void setDirector(String director) {
        this.director = director;
    }

    public String getActor() {
        return actor;
    }

    public void setActor(String actor) {
        this.actor = actor;
    }

    public String getGenre() {
        return genre;
    }

    public void setGenre(String genre) {
        this.genre = genre;
    }

    public String getTag() {
        return tag;
    }

    public void setTag(String tag) {
        this.tag = tag;
    }

    public String getSummary() {
        return summary;
    }

    public void setSummary(String summary) {
        this.summary = summary;
    }

    public double getRate() {
        return rate;
    }

    public void setRate(double rate) {
        this.rate = rate;
    }

    public int getPopular() {
        return popular;
    }

    public void setPopular(int popular) {
        this.popular = popular;
    }

    public String getPosterUrl() {
        return posterUrl;
    }

    public void setPosterUrl(String posterUrl) {
        this.posterUrl = posterUrl;
    }

    public String getReleasetime() {
        return releasetime;
    }

    public void setReleasetime(String releasetime) {
        this.releasetime = releasetime;
    }

    public String getLength() {
        return length;
    }

    public void setLength(String length) {
        this.length = length;
    }
}
