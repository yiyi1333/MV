package cn.muwei.dao;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.naming.NamingException;
import javax.sql.DataSource;
import java.sql.Connection;

public class BaseDAO {
    static DataSource dataSource;

    public BaseDAO(){
        try{
            if(dataSource == null){
                Context context = new InitialContext();
                dataSource = (DataSource) context.lookup("java:comp/env/jdbc/weimu");
            }
        }
        catch (NamingException ne){
            System.out.println("Exception" + ne);
        }
    }
    public static Connection getConnection() throws Exception{
        return dataSource.getConnection();
    }
}
