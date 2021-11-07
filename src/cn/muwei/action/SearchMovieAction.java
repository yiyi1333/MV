package cn.muwei.action;

import cn.muwei.po.User;
import cn.muwei.service.SearchMovieService;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.util.ServletContextAware;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.List;

public class SearchMovieAction extends ActionSupport implements ServletContextAware, ServletRequestAware, ServletResponseAware {
    private String keyword;
    private HttpServletRequest request;
    private HttpServletResponse response;
    private ServletContext application;

    public String getKeyword() {
        return keyword;
    }

    public void setKeyword(String keyword) {
        this.keyword = keyword;
    }
    public void setServletRequest(HttpServletRequest request){
        this.request = request;
    }
    public void setServletContext(ServletContext application){
        this.application = application;
    }
    public void setServletResponse(HttpServletResponse response) {
        this.response = response;
    }

    public String searchAllmovie(){
        SearchMovieService service = new SearchMovieService();
        List movielist = service.searchallmovie();
        if(movielist.size() != 0){
            request.setAttribute("movielist", movielist);
            return "success";
        }
        else {
            System.out.println(movielist.size());
            return "noresult";
        }
    }
}
