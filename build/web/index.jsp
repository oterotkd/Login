<%-- 
    Document   : index
    Created on : 15/02/2024, 4:35:28 p. m.
    Author     : OTEROTKD
--%>

<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="Style.css">
        <link rel="preconnect" href="http:/fonts.googleapis.com">
        <link rel="preconnect" href="http:/fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Roboto:ital,wght@0,300;0,400;0,700;1,700&display=swap" rel="stylesheet">   
        <link href='https://unpkg.com/boxicons@2.1.4/css/boxicons.min.css' rel='stylesheet'>

        <title>Document</title>
    </head>
    <body>
        <%@page import="Controller.login" %>
        <%@page import="Controller.registro" %>
        <!--PRIMER CONTENEDOR-->
        <!--Añadimos este contenedor con la clase container-form y la clase sing up donde va  a estar el formulario-->

        <div class="container-form sign-up">
            <!--dentro del contenedor cramos oreo  con la clase "welcome-back" el cual tendra otro contenedor l¿con la calse "message"-->
            <div class="welcome-back">
                <div class="message">
                    <h2>Bienvenid@ a "Le Noir"</h2>
                    <p>Si tienes una cuenta inicia sesion aqui</p>
                    <!--Creamos un boton con la clase "sign-up-btn" y de contenido el texto de Iniciar Seccion -->
                    <button class="sign-up-btn">Iniciar Sesion</button>
                </div>
            </div>
            <!--Creamos una etiqueta form sin  ningun atributo porque no va enlazada a nada llamada clase formulario y dentro van los inputs-->
            <!-- Creamos un  Script que garantice que todos los campos del formulario esten llenos,los Script puedne ir en cualquier parte del codigo  -->
           
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
                <input type="text" placeholder="C.C" name="cedula" >
                <input type="text" placeholder="Nombre"name="nombre" >
                <input type="text" placeholder="Apellido"name="apellido" >
                <input type="text" placeholder="Telefono"name="telefono">
                <input type="email" placeholder="E-mail" name="email">
                <input type="password" placeholder="Password"name="contraseña" >
                <input type="submit" value="Guardar Registro">
            </form>
        </div>

        <!--SEGUNDO CONTENEDOR-->

        <!--Duplico el contenedor container-form sign-up" para ahorrar tiempo , para cambiar los elementepos del segundo bloque de iniciar seccion, eliminamos el imput de nombre  y dejamos el de email y contraseña y  modificamos el orden  l de la estructura, LLEVO ESTE CONTENEDOR AL PRINCIPIODEL BODY PARA QUE ESTA PARTE SEA LA PRIMERA EN  VERSE
        -->
        <div class="container-form sign-in">
            <!--Creamos una etiqueta form sin  ningun atributo porque no va enlazada a nada llamada clase formulario y dentro van los inputs-->
            <form class="formulario" action="login" method="post">
                <h2 class="create-account">Iniciar Sección</h2>
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
                <p class="cuenta-gratis">¿Ya Tienes una Cuenta?...</p>
                <!--inputs -->
                <!-- El placeholder es para que dentro de las cajas se vea el texto transparente-->
                <input type="email" placeholder="Email" name="email" />
                <input type="password" placeholder="Contraseña" name="contraseña" />
                <input type="submit" value="Ingresar" />
            </form>
            <!--dentro del contenedor cramos oreo  con la clase "welcome-back" el cual tendra otro contenedor l¿con la calse "message"-->
            <div class="welcome-back">
                <div class="message">
                    <h2>Bienvenid@ de Nuevo a "Le Noir"</h2>
                    <p>Si Aún no tiene Cuenta, Registrese Aquí</p>
                    <!--Creamos un boton con la clase "sign-up-btn" y de contenido el texto de Iniciar Seccion -->
                    <button class="sign-in-btn" >Registrarse</button>
                </div>
            </div>
        </div>
        <script src="script.js"></script>
    </body>
</html>