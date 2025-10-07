package com.patrones.entity;

public class Circuito {

    private int id_circuito;
 private String nombre;
 private String pais;
 private double longitud_km;
 private int curvas;

    public Circuito(int id_circuito, String nombre, String pais, double longitud_km, int curvas) {
        this.id_circuito = id_circuito;
        this.nombre = nombre;
        this.pais = pais;
        this.longitud_km = longitud_km;
        this.curvas = curvas;
    }
}
