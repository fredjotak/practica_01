package com.emergentes.usuario;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "procesaRegistroUsuario", urlPatterns = {"/procesaRegistroUsuario"})
public class procesaRegistroUsuario extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String nombre = request.getParameter("txtNombre");
        String apellidos = request.getParameter("txtApellidos");
        String correo = request.getParameter("txtEmail");
        String contrasenia = request.getParameter("txtPassword");
        
        // Encapsular los datos 
        Usuario usuario = new Usuario();
        usuario.setNombre(nombre);
        usuario.setApellidos(apellidos);
        usuario.setCorreoElectronico(correo);
        usuario.setContrasenia(contrasenia);
        
        // Colocar el objeto usuario en el request
        request.setAttribute("usuario", usuario);
        
        // Redireccionar a la vista
        request.getRequestDispatcher("vista_usuario.jsp").forward(request, response);
    }

}
