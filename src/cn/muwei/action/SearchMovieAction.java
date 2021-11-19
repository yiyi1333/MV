package cn.muwei.action;

import cn.muwei.entity.Movie;
import cn.muwei.service.SearchMovieService;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.util.ServletContextAware;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
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

    public String Rankmovie(){
        SearchMovieService service = new SearchMovieService();
        HttpSession session = request.getSession();
        List ratelist = service.RankByrate();
        System.out.println(ratelist.size());
        List popularlist = service.RankBypopular();
        session.setAttribute("ratelist", ratelist);
        session.setAttribute("popularlist", popularlist);
        return "success";
    }

    public String searchAllmovie(){
        SearchMovieService service = new SearchMovieService();
        List movielist = service.searchallmovie();
        List moviechinese = service.searchmovie_Chinese();
        List movieusa = service.searchmovie_Usa();
        if(movielist.size() != 0){
            HttpSession session = request.getSession();
            session.setAttribute("movielist", movielist);
            session.setAttribute("moviechinese", moviechinese);
            session.setAttribute("movieusa", movieusa);
            return "success";
        }
        else {
            System.out.println(movielist.size());
            return "noresult";
        }
    }

    public String searchmovie(){
        SearchMovieService service = new SearchMovieService();
        List movielist = service.searchmovie_keyword(keyword);
        if(movielist.size() != 0){
            request.setAttribute("movielist", movielist);
            request.setAttribute("keyword", keyword);
            return "success";
        }
        else{
            System.out.println(movielist.size());
            return "noresult";
        }
    }

    public String searchmoviebyid(){
        String movid = request.getParameter("movid");
        SearchMovieService service = new SearchMovieService();
        Movie movie = service.searchmoviebyid(movid);
        request.setAttribute("movie", movie);
        System.out.println(movie.getSummary());
        return "detail";
    }
}
