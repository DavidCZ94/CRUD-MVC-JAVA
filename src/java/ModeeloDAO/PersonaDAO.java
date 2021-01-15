/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package ModeeloDAO;

import Config.Conexion;
import Interfaces.CRUD;
import Modelo.Persona;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author David Alberto
 */
public class PersonaDAO implements CRUD{

    Conexion cn = new Conexion();
    Connection con;
    PreparedStatement ps;
    ResultSet rs;
    Persona p = new Persona();
    
    @Override
    public List listar() {
        ArrayList<Persona>list = new ArrayList<>();
        String sql = "select * from persona";
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()){
                Persona per = new Persona();
                per.setId(rs.getInt("id"));
                per.setDni(rs.getInt("DNI"));
                per.setNom(rs.getString("Nombre"));           
                list.add(per);
            }
            rs.close();
            con.close();
            System.out.println("Operation carried out successfully");
        }catch (Exception e){
            System.err.println("Error: " + e);
            e.printStackTrace();
        }
        return list;
    }

    @Override
    public Persona list(int id) {
        ArrayList<Persona>list = new ArrayList<>();
        String sql = "select * from persona where id=" + id;
        try{
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
            
            while (rs.next()){
                Persona per = new Persona();
                p.setId(rs.getInt("id"));
                p.setDni(rs.getInt("DNI"));
                p.setNom(rs.getString("Nombre"));  
            }
            rs.close();
            con.close();
            System.out.println("Operation carried out successfully");
        }catch (Exception e){
            System.err.println("Error: " + e);
            e.printStackTrace();
        }
        return p;
    }

    @Override
    public boolean add(Persona per) {
        String sql = "insert into persona(DNI, Nombre)values('"+per.getDni()+"','"+per.getNom()+"')";
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
            System.out.println("Operation carried out successfully");
            rs.close();
            con.close();
        } catch (Exception e) {
            System.err.println("Error: " + e);
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean edit(Persona per) {
        String sql = "update persona set DNI='"+per.getDni()+"', Nombre='"+per.getNom()+"' where id=" + per.getId();
        System.out.println(sql);
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
            System.out.println("Operation carried out successfully");
            rs.close();
            con.close();
        } catch (Exception e) {
            System.err.println("Error: " + e);
            e.printStackTrace();
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql = "delete from persona where id=" + id;
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
            System.out.println("Operation carried out successfully");
            rs.close();
            con.close();
        } catch (Exception e) {
            System.err.println("Error: " + e);
            e.printStackTrace();
        }
        return false;
    }
    
}
