package com.patrones.entity;

import java.util.Date;

public class Circuito {
    private int id;
    private String nombre;
    private String pais;
    private Date fecha;
    private String longitud_km;
    private String curvas;
    private String nombre_gp;

    private int anio;

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

    public Circuito(int id, String nombre, String pais, Date fecha) {
        this.id = id;
        this.nombre = nombre;
        this.pais = pais;
        this.fecha = fecha;
    }

    public int getId() { return id; }
    public String getNombre() { return nombre; }
    public String getPais() { return pais; }
    public String getLongitudKm() { return longitud_km; }
    public String getCurvas() { return curvas; }
    public Date getFecha() { return fecha; }
    public String getNombreGp() { return nombre_gp; }
    public int getAnio() { return anio; }


    @Override
    public String toString() {
        return String.format("%d - %s | Pais: %s) | Fecha: %s",
                id, nombre, pais, fecha);
    }
}
