/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Config;

import Environments.Development;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.Statement;
import java.sql.ResultSet;

/**
 *
 * @author David Alberto
 */
public class Conexion {
    Connection con;
    Development env = new Development();
    String host = env.getHost();
    String user = env.getUser();
    String password = env.getPassword();
    String table = env.getTable();
    String url = "jdbc:mysql://" + host + "/" + table;
    public Conexion(){
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, password);
        } catch ( Exception e){
            System.err.println("Error:" + e);
        }
    }

    public Connection getConnection() {
        return con;
    }
    
}
