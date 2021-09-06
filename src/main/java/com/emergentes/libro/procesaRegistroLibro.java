package com.emergentes.libro;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "procesaRegistroLibro", urlPatterns = {"/procesaRegistroLibro"})
public class procesaRegistroLibro extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Recibimos los datos de registro_libro.jsp
        String titulo = request.getParameter("txtTitulo");
        String autor = request.getParameter("txtAutor");
        String resumen = request.getParameter("txtResumen");
        String medio = request.getParameter("rdMedio");
        
        // Encapsulamos los datos a un objeto
        Libro libro = new Libro(titulo, autor, resumen, medio);
        
        // colocamos el objeto libro en el request
        request.setAttribute("libro", libro);
        
        // redireccionamos a la vista
        request.getRequestDispatcher("vista_libro.jsp").forward(request, response);
    }


}
