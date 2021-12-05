package cn.muwei.action;

import cn.muwei.dao.UserDAO;
import cn.muwei.dao.UserSimilarityDAO;
import cn.muwei.entity.Movie;
import cn.muwei.entity.User;
import cn.muwei.entity.UserSimilarity;
import org.apache.struts2.interceptor.ServletRequestAware;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.ArrayList;
import java.util.TreeMap;

public class testAction implements ServletRequestAware {
    ArrayList<Movie> movies;
    ArrayList<UserSimilarity> userSimilarities;
    private HttpServletRequest request;
    TreeMap<String, Integer> genre;
    TreeMap<String, Integer> actor;
    String userid;

    public String getUserid() {
        return userid;
    }

    public void setUserid(String userid) {
        this.userid = userid;
    }

    public void setActor(TreeMap<String, Integer> actor) {
        this.actor = actor;
    }

    public TreeMap<String, Integer> getActor() {
        return actor;
    }

    public ArrayList<Movie> getMovies() {
        return movies;
    }

    public void setMovies(ArrayList<Movie> movies) {
        this.movies = movies;
    }

    public ArrayList<UserSimilarity> getUserSimilarities() {
        return userSimilarities;
    }

    public void setUserSimilarities(ArrayList<UserSimilarity> userSimilarities) {
        this.userSimilarities = userSimilarities;
    }

    public void setGenre(TreeMap<String, Integer> genre) {
        this.genre = genre;
    }


    public TreeMap<String, Integer> getGenre() {
        return genre;
    }

    public HttpServletRequest getRequest() {
        return request;
    }

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }

    @Override
    public void setServletRequest(HttpServletRequest httpServletRequest) {
        request = httpServletRequest;
    }

    public String displayRecommend() {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("User");
        UserSimilarityDAO userSimilarityDAO = new UserSimilarityDAO();
        userSimilarities = userSimilarityDAO.getCommonUser(user.getId());
        if (userSimilarities.size() < 20) {
            System.out.println("少于20个");
            UserDAO userDAO = new UserDAO();
            movies = userDAO.getTagRecommend(user.getId());
            userDAO.close();
        } else {
            movies = userSimilarityDAO.getRecommend(userSimilarities, 40);
        }
        userSimilarityDAO.close();
        return "success";
    }

    public String getWordCloud() {
        UserDAO userDAO = new UserDAO();
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("User");
        genre = userDAO.getGenreMap(user.getId(), 1000000);
        actor = userDAO.getActorMap(user.getId(), 1000000);
        userDAO.close();
        return "getWordCloud";
    }

    public String index() {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("User");
        UserSimilarityDAO userSimilarityDAO = new UserSimilarityDAO();
        userSimilarities = userSimilarityDAO.getCommonUser(user.getId());
        if (userSimilarities.size() < 20) {
            System.out.println("少于20个");
        }
        movies = userSimilarityDAO.getRecommend(userSimilarities, 5);
        userSimilarityDAO.close();
        return "success";
    }
}
