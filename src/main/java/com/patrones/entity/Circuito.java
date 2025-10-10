package com.patrones.entity;

import java.util.Date;

public class Circuito {
    //atributos del circuito
    private int id;
    private String nombre;
    private String pais;
    private Date fecha;
    private String longitud_km;
    private String curvas;
    private String nombre_gp;
    private int anio;

    //constructor con todos los atributos del circuito
    public Circuito(int id, String nombre, String pais, String longitud_km, String curvas, Date fecha, String nombre_gp, int anio) {
        this.id = id;
        this.nombre = nombre;
        this.pais = pais;
        this.longitud_km = longitud_km;
        this.curvas = curvas;
        this.fecha = fecha;
        this.nombre_gp = nombre_gp;
        this.anio = anio;
    }

    //constructor con la información básica del circuito
    public Circuito(int id, String nombre, String pais, Date fecha) {
        this.id = id;
        this.nombre = nombre;
        this.pais = pais;
        this.fecha = fecha;
    }

    //getters
    public int getId() { return id; }
    public String getNombre() { return nombre; }
    public String getPais() { return pais; }
    public String getLongitudKm() { return longitud_km; }
    public String getCurvas() { return curvas; }
    public Date getFecha() { return fecha; }
    public String getNombreGp() { return nombre_gp; }
    public int getAnio() { return anio; }

    //devuelve la visualización de la información del circuito para la lista
    @Override
    public String toString() {
        return String.format("%d - %s | Pais: %s) | Fecha: %s",
                id, nombre, pais, fecha);
    }
}
