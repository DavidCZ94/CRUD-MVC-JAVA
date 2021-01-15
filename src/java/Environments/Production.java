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
    String host = "localhost:3306";
    String user = "root";
    String password = "";
    String table = "registro";
    String url = "jdbc:mysql://" + host + "/" + table;
}
