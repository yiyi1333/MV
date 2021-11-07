package cn.muwei.action;

import cn.muwei.dao.UserSimilarityDAO;
import cn.muwei.entity.Movie;
import cn.muwei.entity.UserSimilarity;
import org.apache.struts2.interceptor.ServletRequestAware;

import javax.servlet.http.HttpServletRequest;
import java.util.ArrayList;

public class testAction implements ServletRequestAware {
    ArrayList<Movie> movies;
    ArrayList<UserSimilarity> userSimilarities;
    private HttpServletRequest request;

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
        String str = request.getParameter("id");
        String movieNumber = request.getParameter("number");
        UserSimilarityDAO userSimilarityDAO = new UserSimilarityDAO();
        userSimilarities = userSimilarityDAO.getCommonUser(Integer.parseInt(str));
        movies = userSimilarityDAO.getRecommend(userSimilarities, Integer.parseInt(movieNumber));
        userSimilarityDAO.close();
        return "success";
    }

}
