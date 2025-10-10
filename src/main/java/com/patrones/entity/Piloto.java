package com.patrones.entity;

public class Piloto {
    //atributos del piloto
    private int id;
    private String nombre;
    private String apellido;
    private String nacionalidad;
    private String equipo;
    private int numero;
    private int anio;
    private int puntosTotales;
    private int victorias;

    //constructor con todos los atributos del piloto
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

    //constructor para crear un piloto
    public Piloto(int id, String nombre, String apellido, String nacionalidad, String equipo, int numero, int anio) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.nacionalidad = nacionalidad;
        this.equipo = equipo;
        this.numero = numero;
        this.anio = anio;
    }

    //constructor con la información básica del piloto
    public Piloto(int id, String nombre, String apellido, String equipo) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.equipo = equipo;
    }

    //getters
    public int getId() { return id; }
    public String getNombre() { return nombre; }
    public String getApellido() { return apellido; }
    public String getEquipo() { return equipo; }
    public String getNacionalidad() { return nacionalidad; }
    public int getNumero() { return numero; }
    public int getAnio() { return anio; }
    public int getPuntosTotales() { return puntosTotales; }
    public int getVictorias() { return victorias; }


    //devuelve la visualización de la información del piloto para la lista
    @Override
    public String toString() {
        return String.format("%d - %s %s | Equipo: %s",
                id, nombre, apellido, equipo);
    }
}
