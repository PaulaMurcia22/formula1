package com.patrones.entity;

public class Piloto {
    private int id;
    private String nombre;
    private String apellido;
    private String nacionalidad;
    private String equipo;
    private int numero;
    private int anio;
    private int puntosTotales;
    private int victorias;

    public Piloto(int id, String nombre, String apellido, String nacionalidad, String equipo, int numero, int anio, int puntosTotales, int victorias) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.nacionalidad = nacionalidad;
        this.equipo = equipo;
        this.numero = numero;
        this.anio = anio;
        this.puntosTotales = puntosTotales;
        this.victorias = victorias;
    }

    public Piloto(int id, String nombre, String apellido, String equipo) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.equipo = equipo;
    }

    public int getId() { return id; }
    public String getNombre() { return nombre; }
    public String getApellido() { return apellido; }
    public String getEquipo() { return equipo; }
    public String getNacionalidad() { return nacionalidad; }
    public int getNumero() { return numero; }
    public int getAnio() { return anio; }
    public int getPuntosTotales() { return puntosTotales; }
    public int getVictorias() { return victorias; }


    @Override
    public String toString() {
        return String.format("%d - %s %s | Equipo: %s",
                id, nombre, apellido, equipo);
    }
}
