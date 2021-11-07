package cn.muwei.service;

import cn.muwei.dao.UserDAO;
import cn.muwei.entity.User;

public class LoginRegisterService {
    public boolean login(User loginUser){
        UserDAO ud = new UserDAO();
        User user = ud.findByid(loginUser.getUsername());
        ud.close();
        if(user == null) return false;
        if(user.getPassword().equals(loginUser.getPassword())){
            return true;
        }
        return false;
    }

    public boolean register(User registerUser){
        UserDAO ud = new UserDAO();
        boolean flag = ud.insertUser(registerUser);
        ud.close();
        return flag;
    }
}
