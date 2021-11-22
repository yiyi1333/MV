package cn.muwei.action;

import cn.muwei.entity.User;
import cn.muwei.service.LoginRegisterService;
import com.opensymphony.xwork2.ActionContext;
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
    private String[] message;

    public void setRequest(HttpServletRequest request) {
        this.request = request;
    }

    public void setApplication(ServletContext application) {
        this.application = application;
    }

    public void setMessage(String[] message) {
        this.message = message;
    }

    public void setResponse(HttpServletResponse response) {
        this.response = response;
    }

    public HttpServletRequest getRequest() {
        return request;
    }

    public HttpServletResponse getResponse() {
        return response;
    }

    public ServletContext getApplication() {
        return application;
    }

    public String[] getMessage() {
        return message;
    }

    public User getLoginUser() {
        return loginUser;
    }

    public void setLoginUser(User loginUser) {
        this.loginUser = loginUser;
    }

    public void setServletRequest(HttpServletRequest request) {
        this.request = request;
    }

    public void setServletContext(ServletContext application) {
        this.application = application;
    }

    public void setServletResponse(HttpServletResponse response) {
        this.response = response;
    }

    public String login() {
        LoginRegisterService service = new LoginRegisterService();
        int userid = service.login(loginUser);
        if (userid != 0) {
            loginUser.setId(userid);
            HttpSession session = request.getSession();
            session.setAttribute("User", loginUser);
            return "success";
        } else {
            return "fail";
        }
    }

    public String register() {
        LoginRegisterService service = new LoginRegisterService();
        if (!loginUser.getPassword().equals(loginUser.getRepassword())) {
            this.addActionError("两次输入密码不同");
            return "fail";
        }
        if (service.register(loginUser)) {
            return "success";
        } else {
            return "fail";
        }
    }

    public String exit() {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("User");
        if (user != null) {
            session.removeAttribute("User");
        }
        return "exit";
    }

    public String QuestionAction() {
        for (String str : message) {
            System.out.println(str);
        }
        return "success";

    }

}
