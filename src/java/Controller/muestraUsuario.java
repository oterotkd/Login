/*
 Este Servlet envia la informacion para listar los usuarios que se encientran en la base de datos con un array,
recibe la informacion de y la envia al metodo de leerTodos del la clase GestorBD(),
y envia la respuesta ala jsp de listaUsuarios.jsp*/
package Controller;

import Model.GestorBD;
import Model.Usuario;
import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


public class muestraUsuario extends HttpServlet {

 
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        try {
           ArrayList<Usuario> usuarios= new ArrayList<Usuario>();
           Usuario usuario;
           GestorBD gestorBD=new GestorBD();
           
           usuarios=gestorBD.leerTodo();
           
           if(usuarios !=null){
               request.setAttribute("Usuarios",usuarios);
               request.getRequestDispatcher("/listaUsuarios.jsp").forward(request, response);
           }else{
               request.getRequestDispatcher("/noHayRegistros.jsp").forward(request, response);
           }
        } finally {
            out.close();
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
