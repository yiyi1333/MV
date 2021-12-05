package cn.muwei.action;

import cn.muwei.dao.UserDAO;
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
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import static java.lang.Character.isDigit;

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
            int userid = service.login(loginUser);
            loginUser.setId(userid);
            HttpSession session = request.getSession();
            session.setAttribute("User", loginUser);
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
        List<String> list = new ArrayList<>();
        for (String str : message) {
            if (isDigit(str.charAt(0))) {
                int val = str.charAt(0) - '0';
                if (isDigit(str.charAt(1))) val = val * 10 + str.charAt(1) - '0';
                switch (val) {
                    case 1 -> list.add("动画");
                    case 2 -> list.add("剧情");
                    case 3 -> list.add("惊悚");
                    case 4 -> list.add("恐怖");
                    case 5 -> list.add("冒险");
                    case 6 -> list.add("科幻");
                    case 7 -> list.add("爱情");
                    case 8 -> list.add("动作");
                    case 9 -> list.add("犯罪");
                    case 10 -> list.add("悬疑");
                    case 11 -> list.add("喜剧");
                    case 12 -> list.add("纪录片");
                    case 13 -> list.add("传记");
                    case 14 -> list.add("古装");
                }
            }
        }
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("User");
        UserDAO userDAO = new UserDAO();
        userDAO.addTags(list, user.getId());
        userDAO.close();
        return "success";
    }

}
