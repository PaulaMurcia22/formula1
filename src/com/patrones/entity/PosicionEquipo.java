package com.patrones.entity;

public class PosicionEquipo {
    private int idEquipo;
    private String nombre;
    private String pilotos;
    private int puntosTotales;
    private String categoriaPosicion;

    public PosicionEquipo(int idEquipo, String nombre, String pilotos, int puntosTotales, String categoriaPosicion) {
        this.idEquipo = idEquipo;
        this.nombre = nombre;
        this.pilotos = pilotos;
        this.puntosTotales = puntosTotales;
        this.categoriaPosicion = categoriaPosicion;
    }

    public int getIdEquipo() {
        return idEquipo;
    }

    public String getNombre() {
        return nombre;
    }

    public String getPilotos() {
        return pilotos;
    }

    public int getPuntosTotales() {
        return puntosTotales;
    }

    public String getCategoriaPosicion() {
        return categoriaPosicion;
    }

    @Override
    public String toString() {
        return String.format(
                "%s | %s | Pilotos: %s | Puntos: %d",
                categoriaPosicion, nombre, pilotos, puntosTotales
        );
    }
}
