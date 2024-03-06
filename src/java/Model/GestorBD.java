/*
 Para guardar un nuevo registro(fila )en una tabla de la base de datos desde java, se debe 
seguir cuatro pasos:
1) Establecer la conexion con la base de datos.
2) Crear un objecto de la clase Statement para poder codificar instrucciones.
3) Codificar la instruccion  para guardar un  nurvo registro.
4) Cerrar la Coinexion con la base de Datos
 */
package Model;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

/**
 * Presento la codificacion de lo scuatro pasos observar que la instruccion para
 * crear un Statement debe estar dentro de y try-catch y para guaradar una nueva
 * fila en la base de datos se usa el método executeUpdate(), del objecto de la
 * clase Statement
 */
public class GestorBD {

    Connection conn = null;
    Statement stm = null;
    ResultSet usuaResSet;
    Usuario usuarioHallado;
    int cc, tele;
    String nom, apell, Email, contra;

    public boolean registrar(int cedula, String nombre, String apellido, int telefono, String email, String contraseña) {
        Connection conn;
        Statement stm;
        ResultSet rs;
        int resultUpdate = 0;
        try {
            conn = ConectaBD.abrir();
            stm = conn.createStatement();
            resultUpdate = stm.executeUpdate("INSERT INTO Usuario VALUES(" + cedula + ",'" + nombre + "','" + apellido + "'," + telefono + ",'" + email + "','" + contraseña + "');");
            if (resultUpdate != 0) {
                ConectaBD.cerrar();
                return true;
            } else {
                ConectaBD.cerrar();
                return false;
            }
        } catch (Exception e) {
            System.out.println("Error en la base de datos");
            e.printStackTrace();
            return false;
        }
    }

    /*La Cosnulta de datos es una de las funciones mas importantes en las apllicaciones web
    el comando  para hacerlo en Mysql es: (SELECT) para realizar una consulta en una tatbla desde java
     se realizan  cuatro pasos:
    1) Establecer la Conaxion con la base de datos
    2) Crear un objeto de la  clase Statement para poder codificar instrucciones 
    3) Codificar las instrucciones con la consola
    4) Cerrar la Conexion con la base de datos.
    
    para ello se agrega a esta clase GestorBD.java, el metodo consultar(),el cual sirve par buecar un producto en la tabla productos
    de la base de datos y contiene la codificacion de los cuatro  pasos */
    public Usuario consultar(String email, String contraseña) {
        //la  instruccion para crear un Statement se hace dentro de un try-catch
        //para realizar la consulta a la base de datos se usa el método executeQuery()
        try {
            conn = ConectaBD.abrir();
            stm = conn.createStatement();
            usuaResSet = stm.executeQuery("SELECT*FROM Usuario WHERE Email='" + email + "' AND Contraseña ='" + contraseña + "'");

            if (!usuaResSet.next()) {
                System.out.println("No se Encontró el Registro");
                ConectaBD.cerrar();
                return null;
            } else {
                System.out.println("Se Encontró el Registro");
                cc = usuaResSet.getInt("cedula");
                nom = usuaResSet.getString("nombre");
                apell = usuaResSet.getString("apellido");
                tele = usuaResSet.getInt("telefono");
                Email = usuaResSet.getString("email");
                contra = usuaResSet.getString("contraseña");

                usuarioHallado = new Usuario(cc, nom, apell, tele, Email, contra);

                ConectaBD.cerrar();
                return usuarioHallado;

            }
        } catch (Exception e) {
            System.out.println("Error en la Base de Datos.");
            e.printStackTrace();
            return null;
        }
    }
    
    /*este metodo sigue los mismo pasos:
    1)Establecer Conexion
    2)Crear un objeceto de la clase Statement
    3)Codificar la instruccion con la consulta.
    4) y cerrar la conexion*/
    public ArrayList<Usuario> leerTodo() {
        ArrayList<Usuario> usuarios = new ArrayList<Usuario>();
        try {
            conn = ConectaBD.abrir();
            stm = conn.createStatement();
            usuaResSet = stm.executeQuery("SELECT *FROM usuario");
            if (!usuaResSet.next()) {
                System.out.println("No se Encontró Registro");
                ConectaBD.cerrar();
            } else {
                do {
                    cc = usuaResSet.getInt("cedula");
                    nom = usuaResSet.getString("nombre");
                    apell = usuaResSet.getString("apellido");
                    tele = usuaResSet.getInt("telefono");
                    Email = usuaResSet.getString("email");
                    contra = usuaResSet.getString("contraseña");
                    usuarioHallado = new Usuario(cc, nom, apell, tele, Email, contra);

                    usuarios.add(usuarioHallado);
                } while (usuaResSet.next());
                ConectaBD.cerrar();
                return usuarios;
            }
        } catch (Exception e) {
            System.out.println("Error en la Base de Datos.");
            e.printStackTrace();
            return null;
        }
        return null;
    }

    /*METODO BORRAR*/
    public boolean borrar(int cedula) {
        int resultUpdate = 0;
        try {
            conn = ConectaBD.abrir();
            stm = conn.createStatement();
            resultUpdate = stm.executeUpdate("DELETE FROM usuario WHERE (cedula='" + cedula + "');");

            if (resultUpdate != 0) {
                ConectaBD.cerrar();
                return true;
            } else {
                ConectaBD.cerrar();
                return false;
            }
        } catch (Exception e) {
            System.out.println("Error en la Base de Datos..");
            e.printStackTrace();
            return false;
        }
    }
    /*Metodo Cambiar Contraseña
    con este metodo el usuario una vez registrado, puede cambiar su contraseña*/
    
    

}
