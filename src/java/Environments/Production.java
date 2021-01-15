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
public class Production {
    String host = "us-cdbr-east-03.cleardb.com";
    String user = "b93d405f7e50cb";
    String password = "be304edf";
    String dataBase = "heroku_0bb29ebc71e8a3d";
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

    public String getDataBase() {
        return dataBase;
    }

    public String getUrl() {
        return url;
    }
    
    
}
