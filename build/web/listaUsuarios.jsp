<%@page import="java.util.ArrayList"%>
<%@page import="Model.Usuario"%>
<!--<!-- A esta pagina llega la informacion  de la clase GestorBD() y de su metodo leerTodos() -->
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Muestra Todos</title>
    </head>
    <body>
        <h1>Los Usuarios que está registrados son:</h1>
        
        <%
            ArrayList<Usuario> usuarios=null;
            usuarios=(ArrayList<Usuario>)request.getAttribute("Usuarios");
        %>
        <table border="1">
            <thead>
                <tr>
                    <th>Cedula</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Telefono</th>
                    <th>Email</th>
                </tr>
            </thead>
            <%
                for(Usuario usuario:usuarios){
            %>
            <tbody>
                <tr>
                    <td><%= usuario.getCedula() %></td>
                    <td><%= usuario.getNombre() %></td>
                    <td><%= usuario.getApellido()%></td>
                    <td><%= usuario.getTelefono()%></td>
                    <td><%= usuario.getEmail()%></td>
                  
                </tr>
            </tbody>
            <%
                }
            %>
        </table>
        <form action="inicioSistema.jsp" method="post">
            <input type="submit" value="Regresar"/>
        </form>

    </body>
</html>
