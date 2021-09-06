package com.emergentes.producto;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

@WebServlet(name = "procesaRegistroProducto", urlPatterns = {"/procesaRegistroProducto"})
public class procesaRegistroProducto extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        // Recibir los datos de registro_producto.jsp
        String nombreProducto = request.getParameter("txtProducto");
        String categoria = request.getParameter("cbCategoria");
        String existencia = request.getParameter("txtExistencia");
        float precio;
        try {
            precio = Float.parseFloat(request.getParameter("nroPrecio"));
        } catch(NumberFormatException e){ 
            System.out.println("No se pudo convertir "); 
            precio = -1; // Si hubo error en la conversión
        }
        
        // Llevamos los datos a un objeto
        Producto producto = new Producto();
        producto.setNombre(nombreProducto);
        producto.setCategoria(categoria);
        producto.setExistencia(existencia);
        producto.setPrecio(precio);
        
        // Colocar el objeto producto al request
        request.setAttribute("producto", producto);
        
        // Redirección a la vista
        request.getRequestDispatcher("vista_producto.jsp").forward(request, response);
    }

}
