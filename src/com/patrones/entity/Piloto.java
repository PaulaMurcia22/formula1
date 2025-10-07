package com.patrones.entity;

public class Piloto {
    private int id;
    private String nombre;
    private String apellido;
    private String nacionalidad;
    private String equipo;
    private int anio;

    public Piloto(int id, String nombre, String apellido, String nacionalidad, String equipo, int anio) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.nacionalidad = nacionalidad;
        this.equipo = equipo;
        this.anio = anio;
    }

    @Override
    public String toString() {
        return String.format("%d - %s %s (%s) | Equipo: %s | Temporada: %d",
                id, nombre, apellido, nacionalidad, equipo, anio);
    }
}
