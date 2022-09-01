/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
/*package clases;

import java.sql.*;

public class Conexion {
    
    private Connection con;  // Establece la conexion
    private Statement sen;   // Ejecuta consultas
    private ResultSet rs;    //Recorre los resultados
    
    public Conexion(String server,String bd,String user,String pass) throws SQLException, ClassNotFoundException{
        String protocolo = "jdbc:mysql://";
        String lineaUser = "user=" + user;
        String lineaPass = "password=" + pass;
        
        String url = protocolo
                + server + "/"
                + bd + "?"
                + lineaUser + "&"
                + lineaPass;
        
        System.out.println(url);
        Class.forName("com.mysql.cj.jdbc.Driver");
        
        con= DriverManager.getConnection(url);
    }
    
    public void ejecutar(String query) throws SQLException{
        sen = con.createStatement();
        sen.executeUpdate(query);
        sen.close();
    }
    
    // Validar Sesion
    public ResultSet ejecutarSelect (String query) throws SQLException{
        sen = con.createStatement();
        rs= sen.executeQuery(query);
        return rs;
    }
    
    public void cerrar() throws SQLException{
        sen.close();
    }
}
*/
