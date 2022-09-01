<%-- 
    Document   : Cerrar Sesion
    Created on : 31/08/2022, 12:12:43 PM
    Author     : sofia
--%>


<%
    
    HttpSession sesion = request.getSession();
    sesion.invalidate();
    request.getRequestDispatcher("index.jsp").forward(request, response);
%>

  %>
 
 
 
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Hello World!</h1>
    </body>
</html>
