/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package ModeloDAO;

import Interfaces.Crud;
import Modelo.Persona;
import config.Conexion;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;

/**
 *
 * @author alma_
 */
public class PersonaDAO implements Crud{
    
    Connection con;
    PreparedStatement ps;
    Statement st;
    ResultSet rs;
    Persona p=new Persona();
    Conexion cn= new Conexion();
    
    
   
    
    @Override
    public List consultar() {
   
        ArrayList<Persona> list= new ArrayList<>();
        String sql="select * from persona";
        try {
            con=cn.getConnection();
            st=con.createStatement();
            rs=st.executeQuery(sql);
            
            while(rs.next()){
                Persona per= new Persona();
                per.setId(rs.getInt("Nombre"));
                per.setNSS(rs.getString("Apellidos"));
                per.setNombre(rs.getString("Correo"));
                list.add(per);
                System.out.println("Id");
            }
            
            
        } catch (Exception e) {
            System.err.println("Error"+e);
        }
        
        
        return list;
    }

    @Override
    public Persona list(int id) {
        
          String sql="select * from persona where id="+id;
        try {
            con=cn.getConnection();
            st=con.createStatement();
            rs=st.executeQuery(sql);
            
            while(rs.next()){
                p.setId(rs.getInt("Nombre"));
                p.setNSS(rs.getString("Apellidos"));
                p.setNombre(rs.getString("Correo"));
                System.out.println("Id");
            }
                       
        } catch (Exception e) {
            System.err.println("Error"+e);
        }
            
        return p;
    }
    

    @Override
    public boolean registrar(Persona per) {
        String sql="insert into persona(Nombre,Apellidos,Correo)values('"+per.getId()+"','"+per.getNSS()+"','"+per.getNombre()+"')";
        try{
        con=cn.getConnection();
        ps=con.prepareStatement(sql);
        
        ps.executeUpdate();
        }catch(Exception e){
            System.err.println("Error"+e);
        }
        return false;
    
    }

    @Override
    public boolean editar(Persona per) {
        String sql="update persona set NSS='"+per.getNSS()+"',nombre='"+per.getNombre()+"' where id='"+per.getId()+"'";
        
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
           
        }catch(Exception e){
            System.err.println("Error"+e);
        }
        return false;
    }

    @Override
    public boolean eliminar(int id) {
        String sql="delete from persona where id='"+p.getId()+"'";
        
        try{
            con=cn.getConnection();
            ps=con.prepareStatement(sql);
            ps.executeUpdate();
           
        }catch(Exception e){
            System.err.println("Error"+e);
        }
        return false;
    }
    
}
