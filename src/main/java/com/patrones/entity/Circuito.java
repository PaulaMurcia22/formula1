package com.patrones.entity;

import java.util.Date;

public class Circuito{
    //atributos del circuito
    private int id;
    private String nombre;
    private String pais;
    private Date fecha;
    private String longitud_km;
    private String curvas;
    private String nombre_gp;
    private int anio;

    //constructor con todos los atributos del circuito
    private Circuito(Builder builder) {
        this.id = builder.id;
        this.nombre = builder.nombre;
        this.pais = builder.pais;
        this.fecha = builder.fecha;
        this.longitud_km = builder.longitud_km;
        this.curvas = builder.curvas;
        this.nombre_gp = builder.nombre_gp;
        this.anio = builder.anio;
    }

    // ====== Builder (GoF) ======
    public static class Builder {
        private int id;
        private String nombre;
        private String pais;
        private Date fecha;
        private String longitud_km;
        private String curvas;
        private String nombre_gp;
        private int anio;

        public Builder id(int id) {
            this.id = id;
            return this;
        }

        public Builder nombre(String nombre) {
            this.nombre = nombre;
            return this;
        }

        public Builder pais(String pais) {
            this.pais = pais;
            return this;
        }

        public Builder fecha(Date fecha) {
            this.fecha = fecha;
            return this;
        }

        public Builder longitudKm(String longitud_km) {
            this.longitud_km = longitud_km;
            return this;
        }

        public Builder curvas(String curvas) {
            this.curvas = curvas;
            return this;
        }

        public Builder nombreGp(String nombre_gp) {
            this.nombre_gp = nombre_gp;
            return this;
        }

        public Builder anio(int anio) {
            this.anio = anio;
            return this;
        }

        /**
         *El Builder se encarga de la construcción
         */
        public Circuito build() {
            return new Circuito(this);
        }
    }

    //getters
    public int getId() { return id; }
    public String getNombre() { return nombre; }
    public String getPais() { return pais; }
    public String getLongitudKm() { return longitud_km; }
    public String getCurvas() { return curvas; }
    public Date getFecha() { return fecha; }
    public String getNombreGp() { return nombre_gp; }
    public int getAnio() { return anio; }

    //devuelve la visualización de la información del circuito para la lista
    @Override
    public String toString() {
        return String.format("%d - %s | País: %s | Fecha: %s",
                id, nombre, pais, fecha);
    }
}
