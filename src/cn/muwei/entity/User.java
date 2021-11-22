package cn.muwei.entity;

public class User {
    private int id;
    private String username;
    private String password;
    private String repassword;
//    public String[][] usermessage;
//
//
//    public String[][] getUsermessage() {
//        return usermessage;
//    }
//
//    public void setUsermessage(String[][] usermessage) {
//        this.usermessage = usermessage;
//    }

    public User() {
    }

    public User(int id, String username, String password) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.repassword = password;
    }

    public User(int id, String username, String password, String repassword) {
        this.id = id;
        this.username = username;
        this.password = password;
        this.repassword = repassword;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getRepassword() {
        return repassword;
    }

    public void setRepassword(String repassword) {
        this.repassword = repassword;
    }
}
