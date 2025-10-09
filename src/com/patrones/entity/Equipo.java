package com.patrones.entity;

public class Equipo {
    private int id;
    private String nombre;
    private String pais;
    private String pilotos;
    private String motor;
    private int anio;
    private int puntosTotales;
    private int victorias;

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

    public Equipo(int id, String nombre, String pilotos) {
        this.id = id;
        this.nombre = nombre;
        this.pilotos = pilotos;
    }

    public int getId() { return id; }
    public String getNombre() { return nombre; }
    public String getPilotos() { return pilotos; }
    public String getPais() { return pais; }
    public String getMotor() { return motor; }
    public int getAnio() { return anio; }
    public int getPuntosTotales() { return puntosTotales; }
    public int getVictorias() { return victorias; }


    @Override
    public String toString() {
        return String.format("%d - %s | Equipos: %s",
                id, nombre, pilotos);
    }
}
