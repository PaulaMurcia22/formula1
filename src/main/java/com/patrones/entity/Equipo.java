package com.patrones.entity;

public class Equipo {
    //atributos del equipo
    private int id;
    private String nombre;
    private String pais;
    private String pilotos;
    private String motor;
    private int anio;
    private int puntosTotales;
    private int victorias;

    //constructor con todos los atributos del equipo
    public Equipo(int id, String nombre, String pais, String pilotos, String motor,int anio, int puntosTotales, int victorias) {
        this.id = id;
        this.nombre = nombre;
        this.pais = pais;
        this.pilotos = pilotos;
        this.motor = motor;
        this.anio = anio;
        this.puntosTotales = puntosTotales;
        this.victorias = victorias;
    }

    //constructor con la información básica del equipo
    public Equipo(int id, String nombre, String pilotos) {
        this.id = id;
        this.nombre = nombre;
        this.pilotos = pilotos;
    }

    //getters
    public int getId() { return id; }
    public String getNombre() { return nombre; }
    public String getPilotos() { return pilotos; }
    public String getPais() { return pais; }
    public String getMotor() { return motor; }
    public int getAnio() { return anio; }
    public int getPuntosTotales() { return puntosTotales; }
    public int getVictorias() { return victorias; }

    //devuelve la visualización de la información del equipo para la lista
    @Override
    public String toString() {
        return String.format("%d - %s | Pilotos: %s",
                id, nombre, pilotos);
    }
}
