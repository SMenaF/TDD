<%-- 
    Document   : ValidarSesion
    Created on : 31/08/2022, 09:46:02 AM
    Author     : sofia
--%>


<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="clases.ConexionBD"%>
<%@page import="Modelo.Usuario"%>
<%@page import="clases.Data"%>
<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    
   
     
    String usuario=request.getParameter("usu");
    String pass=request.getParameter("pass");
    int rol= 1;
     
     
    Connection con = ConexionBD.conectarBaseDatos();
    Statement st= null;
    String query;
    ResultSet rs = null;
    HttpSession ses= request.getSession();
    
    boolean bandera=false;
    
    try{
        st=con.createStatement();
        rs=st.executeQuery("select * from usuario where usu_nombre='"+usuario+"' and usu_password = '"+pass+"';");
    if(rs.next()){   
        do{
        if(usuario.equals(rs.getString("usu_nombre")) && rs.getString("usu_password").equals(pass))
        {
            ses.setAttribute("Usuario", rs.getString("usu_nombre"));
            ses.setAttribute("Contraseña", rs.getString("usu_password"));
            ses.setAttribute("rol_usuario", rs.getInt("rol_usuario"));
        }
        response.sendRedirect("bienvenida.jsp");
        ses.setAttribute("ses", "a");
        bandera=true;
       
        break;
        
        }
        while(rs.next());
        if(rs.next()){
            
            if(!bandera){
        
                
                request.setAttribute("error", "si");
                request.getRequestDispatcher("index.jsp").forward(request, response);
                    
       
            }
            
                     
            
        }   
    }
    else{
        
              
                request.setAttribute("error", "si");
                request.getRequestDispatcher("index.jsp").forward(request, response);
            }
        
    }
    catch (Exception e){
        out.println(e);
    } finally {
        if (rs != null) {
            try {
                rs.close();
            } catch (SQLException sqlEx) {
        } // ignore
        rs = null;
        }
        if (st != null) {
            try {
                st.close();
            } catch (SQLException sqlEx) {
            } // ignore
            st = null;
        }
    }
    
         
     
    
%>


