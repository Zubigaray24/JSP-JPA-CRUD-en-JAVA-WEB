<%@page import="java.util.List"%>
<%@page import="logica.Usuario"%>
<%@page import="logica.Usuario"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Mostrar usuarios</title>
    </head>
    <body>
        <h1>Lista de usuarios registrados</h1>
        
        <% 
            List<Usuario> listaUsuarios = (List) request.getSession().getAttribute("usuarios");
            int cont = 1;
            for(Usuario usu : listaUsuarios ){
            
        %>
                <p><b>Usuario Nº <%=cont%> </b></p>
                <p>Id: <%=usu.getId()%></p>
                <p>DNI: <%=usu.getDni()%></p>
                <p>Nombre: <%=usu.getNombre()%></p>
                <p>Apellido: <%=usu.getApellido()%></p>
                <p>Telefono: <%=usu.getTelefono()%></p>
                <p>------------------------------------</p>
                <%cont++;%>
        <%
            } 
        %>
        
    </body>
</html>
