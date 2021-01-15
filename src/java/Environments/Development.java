/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Environments;

/**
 *
 * @author David Alberto
 */
public class Development {
    String host = "localhost:3306";
    String user = "root";
    String password = "";
    String dataBase = "registro";
    String url = "jdbc:mysql://" + host + "/" + dataBase;
    
    public String getHost() {
        return host;
    }

    public String getUser() {
        return user;
    }

    public String getPassword() {
        return password;
    }

    public String getTable() {
        return dataBase;
    }

    public String getUrl() {
        return url;
    }
}
