package com.emergentes.producto;

public class Producto {
    private String nombre;
    private String categoria;
    private String existencia;
    private float precio;
    
    public Producto(){
        
    }

    public Producto(String nombre, String categoria, String existencia, float precio) {
        this.nombre = nombre;
        this.categoria = categoria;
        this.existencia = existencia;
        this.precio = precio;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getCategoria() {
        return categoria;
    }

    public void setCategoria(String categoria) {
        this.categoria = categoria;
    }

    public String getExistencia() {
        return existencia;
    }

    public void setExistencia(String existencia) {
        this.existencia = existencia;
    }

    public float getPrecio() {
        return precio;
    }

    public void setPrecio(float precio) {
        this.precio = precio;
    }
}
