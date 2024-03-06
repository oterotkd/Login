/*
cuando iniciamos seccion en l a pagina indes.jsp, pasa a la pagina de inicioSistema.jsp
con los datos del usuario, en inicioSistema que es la pagina de bienvenida se escribe el nombre
del usuario; pero si despues ascesamos otra `pagina, por ejemplo lista de todos los usuarios registrados,
y  regresamos a la pagina de bienvenida, se pierde el nombre del usuario.
si guardamos el nombre del usuario en un a session de la clase HttpSession, podemos asceder a este en cualquier 
momento,
para ello hemos modificado el codigo del servlet login.java par guardar el atributo nombre en una session en lugar de una 
request.
 */
package Controller;

import Model.*;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.util.ArrayList;
import javax.servlet.http.HttpSession;//se importa esta para Session

@WebServlet(name = "login", urlPatterns = {"/login"})
public class login extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();

        String email = request.getParameter("email");
        String contraseña = request.getParameter("contraseña");

        try {
            Usuario usuario;
            GestorBD gestorBD = new GestorBD();

            usuario = gestorBD.consultar(email, contraseña);

            if (usuario != null) {
                HttpSession session= request.getSession();
                session.setAttribute("nombre", usuario.getNombre());
                session.setAttribute("apellido", usuario.getApellido());
               // request.setAttribute("nombre", usuario);
                request.getRequestDispatcher("/inicioSistema.jsp").forward(request, response);
            } else {
                request.getRequestDispatcher("noEncontrado.jsp").forward(request, response);
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
