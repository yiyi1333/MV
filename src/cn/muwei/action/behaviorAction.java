package cn.muwei.action;

import cn.muwei.entity.User;
import cn.muwei.service.LikeMovieService;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.util.ServletContextAware;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.ByteArrayInputStream;
import java.io.InputStream;

public class behaviorAction extends ActionSupport implements ServletContextAware, ServletRequestAware, ServletResponseAware {
    private InputStream inputStream;
    private HttpServletRequest request;
    private HttpServletResponse response;
    private ServletContext application;
    public void setServletRequest(HttpServletRequest request){
        this.request = request;
    }
    public void setServletContext(ServletContext application){
        this.application = application;
    }
    public void setServletResponse(HttpServletResponse response) {
        this.response = response;
    }

    public String Collection() throws Exception{
        String movieid = request.getParameter("movieid");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("User");
        LikeMovieService service = new LikeMovieService();
        if(service.CollectionMovie(user.getUsername(), movieid)){
            inputStream = new ByteArrayInputStream("已收藏".getBytes("UTF-8"));
        }
        else{
            inputStream = new ByteArrayInputStream("收藏失败".getBytes("UTF-8"));
        }
        return SUCCESS;
    }

    public String Like() throws Exception{
        String movieid = request.getParameter("movieid");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("User");
        LikeMovieService service = new LikeMovieService();
        if(service.LikeMovie(user.getUsername(), movieid)){
            inputStream = new ByteArrayInputStream("已收藏".getBytes("UTF-8"));
        }
        else{
            inputStream = new ByteArrayInputStream("收藏失败".getBytes("UTF-8"));
        }
        return SUCCESS;
    }
    public String Unlike() throws Exception{
        String movieid = request.getParameter("movieid");
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("User");
        LikeMovieService service = new LikeMovieService();
        if(service.UnlikeMovie(user.getUsername(), movieid)){
            inputStream = new ByteArrayInputStream("已收藏".getBytes("UTF-8"));
        }
        else{
            inputStream = new ByteArrayInputStream("收藏失败".getBytes("UTF-8"));
        }
        return SUCCESS;
    }
}
