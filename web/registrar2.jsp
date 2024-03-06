<%-- 
    Document   : registrar2
    Created on : 18/02/2024, 10:55:30 a. m.
    Author     : OTEROTKD
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Style.css">
        <link rel="preconnect" href="http:/fonts.googleapis.com">
        <link rel="preconnect" href="http:/fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,700;1,700&display=swap" rel="stylesheet">   
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

       
    </head>
    <body>
        <%@page import="Controller.login" %>
        <%@page import="Controller.registro" %>
        <!--PRIMER CONTENEDOR-->
        <!--Añadimos este contenedor con la clase container-form y la clase sing up donde va  a estar el formulario-->
        <div class="container-form sign-up">
            
            <!--Creamos una etiqueta form sin  ningun atributo porque no va enlazada a nada llamada clase formulario y dentro van los inputs-->
            <form class="formulario2" action="registro" method="post">
                <h2 class="create-account">Crear una cuenta</h2>
                <!--Conternerdor con las Clases Iconos donde van los iconos de las aplicaciones -->
                <div class="iconos">
                    <!--Cada icono tiene un contenedor con la clase border icon e3nlazados desde boxicon-->
                    <div class="border-icon">
                        <i class="bx bxl-instagram"></i>
                    </div>
                    <div class="border-icon">
                        <i class="bx bxl-youtube"></i>
                    </div>
                    <div class="border-icon">
                        <i class="bx bxl-facebook-circle"></i>
                    </div>
                </div>
                <!--Eqtiqueta <p> para el texto de crear cuenta-->
                <p class="cuenta-gratis">Crear una cuenta gratis</p>
                <!--inputs -->
                <!-- El placeholder es para que dentro de las cajas se vea el texto transparente-->
                <input type="text" placeholder="C.C" name="cedula" />
                <input type="text" placeholder="Nombre"name="nombre" />
                <input type="text" placeholder="Apellido"name="apellido" />
                <input type="text" placeholder="Telefono"name="telefono"/>
                <input type="email" placeholder="E-mail" name="email"/>
                <input type="password" placeholder="Password"name="contraseña" />
                <input type="submit" value="Guardar Registro" />
            </form>
        </div>
    </body>
</html>
