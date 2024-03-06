<%-- 
    Document   : registroGuardado
    Created on : 16/02/2024, 4:28:18 p. m.
    Author     : OTEROTKD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%@page import="Model.Usuario" %>
        <%
            int Cedula = Integer.parseInt(request.getParameter("cedula"));
            String Nombre = request.getParameter("nombre");
            String Apellido = request.getParameter("apellido");
            int Telefono = Integer.parseInt(request.getParameter("telefono"));
            String Email = request.getParameter("email");
            String Contraseña = request.getParameter("contraseña");
            Usuario usuario = new Usuario(Cedula, Nombre, Apellido, Telefono, Email, Contraseña);
        %>

        <h3>Registro Exitoso en  la Base de Datos</h3>
        <p>Se guardaron los siguietes datos:</p>
        <table border="1">
            <thead>
                <tr>
                    <th>Parametros</th>
                    <th>Datos</th>
                </tr>
            </thead>
            <tbody>
                <tr>
                    <td>Cedula:</td>
                    <td><%=Cedula%></td>
                </tr>
                <tr>
                    <td>Nombre</td>
                    <td><%=Nombre%></td>
                </tr>
                <tr>
                    <td>Apellido</td>
                    <td><%=Apellido%></td>
                </tr>
                <tr>
                    <td>Telefono:</td>
                    <td><%=Telefono%></td>
                </tr>
                <tr>
                    <td>Email</td>
                    <td><%=Email%></td>
                </tr>
                <tr>
                    <td>Contraseña</td>
                    <td><%=Contraseña%></td>
                </tr>
            </tbody>
        </table>
        <form action="index.jsp">
            <input type="submit" value="Regresar">
        </form>

    </body>
</html>
