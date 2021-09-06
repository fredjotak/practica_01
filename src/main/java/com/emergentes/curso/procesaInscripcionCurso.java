package com.emergentes.curso;

import com.emergentes.curso.Curso;
import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "procesaInscripcionCurso", urlPatterns = {"/procesaInscripcionCurso"})
public class procesaInscripcionCurso extends HttpServlet {
    
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Recibir datos de inscripcion_curso.jsp
        String nombre = request.getParameter("txtNombre");
        String apellidos = request.getParameter("txtApellidos");
        String curso = request.getParameter("cbCurso");
        
        // Encapsular los datos en el objeto 
        Curso cursito = new Curso();
        cursito.setNombre(nombre);
        cursito.setApellidos(apellidos);
        cursito.setCurso(curso);
        
        // colocar al objeto perona como atributo request
        request.setAttribute("curso", cursito);
        
        // Redireccionar a la vista
        request.getRequestDispatcher("vista_curso.jsp").forward(request, response);
    }

}
