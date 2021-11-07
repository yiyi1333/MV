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
    public String register(){
        LoginRegisterService service = new LoginRegisterService();
        if(!loginUser.getPassword().equals(loginUser.getRepassword())){
            this.addActionError("两次输入密码不同");
            return "fail";
        }
        if(service.register(loginUser)){
            return "success";
        }
        else{
            return "fail";
        }
    }


//    public void validate(){
//        String account = loginUser.getUsername();
//        String pwd = loginUser.getPassword();
//        if(account == null || account.equals("")){
//            this.addFieldError("loginUser.username", "请输入用户名");
//        }
//        if(pwd == null || pwd.equals("")){
//            this.addFieldError("loginUser.password", "请输入密码");
//        }
//    }
}
