package com.patrones.entity;

public class Equipo {
    private int id;
    private String nombre;
    private String nacionalidad;
    private String pilotos;
    private int numero;
    private int anio;

    public Equipo(int id, String nombre, String nacionalidad, String pilotos, int numero,int anio) {
        this.id = id;
        this.nombre = nombre;
        this.nacionalidad = nacionalidad;
        this.pilotos = pilotos;
        this.numero = numero;
        this.anio = anio;
    }

    public Equipo(int id, String nombre, String pilotos) {
        this.id = id;
        this.nombre = nombre;
        this.pilotos = pilotos;
    }

    public int getId() { return id; }
    public String getNombre() { return nombre; }
    public String getPilotos() { return pilotos; }
    public String getNacionalidad() { return nacionalidad; }
    public int getNumero() { return numero; }
    public int getAnio() { return anio; }


    @Override
    public String toString() {
        return String.format("%d - %s | Pilotos: %s",
                id, nombre, pilotos);
    }
}
