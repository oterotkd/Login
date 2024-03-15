
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="style.css">
        <style type="text/css" media="all">
            body{
                margin: 0;
                font-family: Arial;
            }
            ul{
                margin: 0;
                padding:0;
            }
            li{
                display: inline-block;
            }
            #menu{
                background-color:blue ;
            }
            a{
                display: inline-block;
                text-decoration: none;
                color: white ;
                height: 60px;
                width: 120px;
                text-align: center;
                line-height: 60px;
                border-radius: 10px;
            }
            a:hover{
                background: white;
                color:black;
            }
            .divisor{
                background-color: black;
                height: 4px;
            }
            #header{
                background-color: blue;
                height: 420px;
                color: white;
                text-align: center;
            }
            h1{
                font-size: 70px;
                color: white;
                margin: 0;
                padding-top:80px;
            }
            h2{
                font-size: 36px;
                colo: white;
            }
            .boton{
                height: 60px;
                width: 280px;
                background: black;
                color: white ;
                border-radius: 5px;
                font-size: 30px;
            }
            .contenido{
                margin-left: 40px;
                margin-right:40px;
            }
            .titulo2{
                color: blue;
            }

        </style>
        <title>Iniciode Sistema</title>
    </head>
    <body>
        <%@page import="Controller.login" %>
        <%@page import="Controller.registro" %>
        <%@page import="Controller.CambioContraseña" %>
        <%/*La pagina noEncontrado.jsp, desplega un mensaje de error indicando que no se encontro
             el elemento buscado. La pagina resultadoConsulta.jsp, desplega el elemento encontrado y 
             recibe en un scriptlet el objecto Producto y  se u tilizan  las expresiones:
             producto.getClave, producto.getNombre,producto.getPrecio etc,*/
            //Usuario usuario = (Usuario) request.getAttribute("nombre");
            String nombre=(String)session.getAttribute("nombre");
            String apellido=(String)session.getAttribute("apellido");
        %>
       
        <h3>Hola <b><%=nombre%></b> <b><%=apellido%></b>, Bienvenido a mi Pagina WEB de Prueba </h3>
        <!--Menu-->
        <div id="menu">
            <ul>
                <li> <a href="muestraUsuario">Listar Usuarios</a></li>
                <li> <a href="capturaBorrado.jsp">Borrar Usuario</a></li>
                <li> <a href="index.jsp">Registrar </a></li>
                <li> <a href="">Link 3</a></li>
            </ul>
        </div>
        <!--Divisor entre el menú y el contenido-->
        <div class="divisor">

        </div>
        <!--Header-->
        <div id="header">
            <h1>Titulo Uno</h1>
            <h2>Titulo Dos</h2>
            <a class="boton"href="cambioContraseña.jsp">Cambiar Contraseña</a>
        </div>
        <!--Contenido-->
        <div class="contenido">
            <h2 class="titulo2">Los Gatos Son Lindos</h2>
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Vivamus in pretium eros. Pellentesque orci neque, sollicitudin non porttitor ut, aliquet sed augue. In quis urna purus. Mauris id malesuada dui. Nunc quis mauris feugiat, tempor tortor ac, euismod lectus. Maecenas dictum ligula magna, eu aliquet lacus bibendum vitae. Sed suscipit turpis vel tortor malesuada, id feugiat nulla tempor. Morbi euismod ultricies nibh eu hendrerit.
        </div><br/>
        <footer>
            <small> <p>Otero Garcia Ariel Jose</p>
                <p><address>
                    oterogarciaarieljose@gmail.com
                </address></p></small>
        </footer>
    </body>
</html>
