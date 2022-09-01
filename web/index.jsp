<%-- 
    Document   : index
    Created on : 23/08/2022, 08:06:13 PM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>


<html>
    <head>
        <title>Iniciar Sesion</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/iniciarsesion.css">
        
    </head>
    <body>
        <div class="login">
            <div class="login-triangle"></div>
  
                <h2 class="login-header">Iniciar Sesion</h2>

                <form name="datos" class="login-container" action="ValidarSesion.jsp" method="POST">
                    <p><input type="text" name="usu" placeholder="Usuario" required="yes"></p>
                    <p><input type="password" name="pass" placeholder="Contraseña" required="yes"></p>
                  <p><input type="submit" value="Iniciar Sesion"></p>
                </form>
        </div>
   
    </body>
</html>
