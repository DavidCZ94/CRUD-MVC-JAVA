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
        }catch (Exception e){
            System.err.println("Error: " + e);
        }
        return list;
    }

    @Override
    public Persona list(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean add(Persona per) {
        String sql = "insert into persona(DNI, Nombre)values('"+per.getDni()+"','"+per.getNom()+"')";
        System.out.println(sql);
        try {
            con = cn.getConnection();
            ps = con.prepareStatement(sql);
            ps.executeUpdate();
        } catch (Exception e) {
            System.err.println("Error: " + e);
        }
        return false;
    }

    @Override
    public boolean edit(Persona per) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }

    @Override
    public boolean eliminar(int id) {
        throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
