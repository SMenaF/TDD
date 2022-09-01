/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package clases;

import Modelo.Rol;
import Modelo.Usuario;
import java.sql.ResultSet;
import java.sql.SQLException;


public class Data {
    
    private Conexion con;
    private String query;
    private ResultSet rs;
        
        public Data() throws SQLException, ClassNotFoundException {
            con = new Conexion(
                    "localhost",
                    "iniciarsesion",
                    "root",
                    "sofia2005"
                    
            );
        }
        
        // El usuario Existe ¿?
        
        public Usuario getUsuario(String usu_nombre, String password) throws SQLException{
        
           
            query = "select * from usuario " +
                    "where usu_nombre='"+usu_nombre+"' and usu_password = '"+password+"';";
            
            rs = con.ejecutarSelect(query);
            
            Usuario u = null;
            
            if(rs.next()){
                
                u= new Usuario();
                u.setUsu_nombre(rs.getString(1));
                u.setRol_usuario(rs.getInt(2));
                
                
            }
            con.cerrar();
            return u;
        
        }
        
        public Rol getRol(int rol_id) throws SQLException{
            
            query= "select * from rol where rol_id= "+rol_id;
            Rol r = null;
            rs=con.ejecutarSelect(query);
            if(rs.next()){
                r = new Rol();
                r.setRol_id(rol_id);
                r.setRol_descripcion(rs.getString(2));
                
            }
            con.cerrar();
            return r;
        }
    
}
