package cn.muwei.action;

import cn.muwei.po.User;
import cn.muwei.service.LoginRegisterService;
import com.opensymphony.xwork2.ActionSupport;
import org.apache.struts2.interceptor.ServletRequestAware;
import org.apache.struts2.interceptor.ServletResponseAware;
import org.apache.struts2.util.ServletContextAware;

import javax.servlet.ServletContext;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.Map;

public class LoginRegisterAction extends ActionSupport implements ServletContextAware, ServletRequestAware, ServletResponseAware {
    private User loginUser;
    private HttpServletRequest request;
    private HttpServletResponse response;
    private ServletContext application;
    public User getLoginUser() {
        return loginUser;
    }

    public void setLoginUser(User loginUser) {
        this.loginUser = loginUser;
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


    public String login(){
        LoginRegisterService service = new LoginRegisterService();
        if(service.login(loginUser)){
            HttpSession session = request.getSession();
            session.setAttribute("User", loginUser);
            return "success";
        }
        else {
            return "fail";
        }
    }
}
