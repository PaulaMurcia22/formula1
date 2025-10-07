package com.patrones.entity;

public class Piloto {
    private int id;
    private String nombre;
    private String apellido;
    private String nacionalidad;
    private String equipo;
    private int numero;
    private int anio;

    public Piloto(int id, String nombre, String apellido, String nacionalidad, String equipo, int numero,int anio) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.nacionalidad = nacionalidad;
        this.equipo = equipo;
        this.numero = numero;
        this.anio = anio;
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


    @Override
    public String toString() {
        return String.format("%d - %s %s | Equipo: %s",
                id, nombre, apellido, equipo);
    }
}
