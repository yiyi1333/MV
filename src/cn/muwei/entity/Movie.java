package cn.muwei.entity;

public class Movie {
    private String movid;
    private String name;
    private String director;
    private String actor;
    private String genre;
    private String tag;
    private String summary;
    private String rate;
    private String popular;
    private String posterUrl;
    private String releasetime;//上映时间
    private String length;//片长

    public Movie() {
    }

    public Movie(String movid, String name, String director, String actor, String genre, String tag, String summary, String rate, String popular, String posterUrl, String releasetime, String length) {
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

    public String getRate() {
        return rate;
    }

    public void setRate(String rate) {
        this.rate = rate;
    }

    public String getPopular() {
        return popular;
    }

    public void setPopular(String popular) {

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

    @Override
    public String toString() {
        return "Movie{" +
                "movid='" + movid + '\'' +
                ", name='" + name + '\'' +
                ", director='" + director + '\'' +
                ", actor='" + actor + '\'' +
                ", genre='" + genre + '\'' +
                ", tag='" + tag + '\'' +
                ", summary='" + summary + '\'' +
                ", rate='" + rate + '\'' +
                ", popular='" + popular + '\'' +
                ", posterUrl='" + posterUrl + '\'' +
                ", releasetime='" + releasetime + '\'' +
                ", length='" + length + '\'' +
                '}';
    }
}
