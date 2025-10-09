package com.patrones.entity;

public class Carrera {
    private int id;
    private String nombreGp;
    private String fecha;
    private String circuito;
    private int numVueltas;
    private int anio;

    public Carrera(int id, String nombreGp, String fecha, String circuito, int numVueltas, int anio) {
        this.id = id;
        this.nombreGp = nombreGp;
        this.fecha = fecha;
        this.circuito = circuito;
        this.numVueltas = numVueltas;
        this.anio = anio;
    }

    public int getId() { return id; }
    public String getNombreGp() { return nombreGp; }
    public String getFecha() { return fecha; }
    public String getCircuito() { return circuito; }
    public int getNumVueltas() { return numVueltas; }
    public int getAnio() { return anio; }

    @Override
    public String toString() {
        return String.format("%d - %s | Fecha: %s | Circuito: %s",
                id, nombreGp, fecha, circuito);
    }
}
