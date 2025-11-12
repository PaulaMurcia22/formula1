package com.patrones.entity;

public class PosicionPiloto{
    //atributos de PosicionPiloto
    private int idPiloto;
    private String nombre;
    private String apellido;
    private String nombreEquipo;
    private int puntosTotales;
    private String categoriaPosicion;

    //constructor con todos los atributos de PosicionPiloto
    public PosicionPiloto(int idPiloto, String nombre, String apellido, String nombreEquipo, int puntosTotales, String categoriaPosicion) {
        this.idPiloto = idPiloto;
        this.nombre = nombre;
        this.apellido = apellido;
        this.nombreEquipo = nombreEquipo;
        this.puntosTotales = puntosTotales;
        this.categoriaPosicion = categoriaPosicion;
    }

    //getters
    public int getIdPiloto() {
        return idPiloto;
    }
    public String getNombre() {
        return nombre;
    }
    public String getApellido() {
        return apellido;
    }
    public String getNombreEquipo() {
        return nombreEquipo;
    }
    public int getPuntosTotales() {
        return puntosTotales;
    }
    public String getCategoriaPosicion() {
        return categoriaPosicion;
    }

    //devuelve la visualización de la información de PosicionPiloto para la lista
    public String toString(){
        return String.format(
                "%s | %s %s | Equipo: %s | Puntos: %d",
                categoriaPosicion, nombre, apellido, nombreEquipo, puntosTotales
        );
    }
}
