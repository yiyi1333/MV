package cn.muwei.service;

import cn.muwei.dao.UserDAO;
import cn.muwei.entity.User;

public class LoginRegisterService {
    public int login(User loginUser){
        UserDAO ud = new UserDAO();
        User user = ud.findByid(loginUser.getUsername());
        ud.close();
        if(user == null) return 0;
        if(user.getPassword().equals(loginUser.getPassword())){
            return user.getId();
        }
        return 0;
    }

    public boolean register(User registerUser){
        UserDAO ud = new UserDAO();
        boolean flag = ud.insertUser(registerUser);
        ud.close();
        return flag;
    }
}
