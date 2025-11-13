package com.patrones.entity;

public class Carrera {
    //atributos de la carrera
    private int id;
    private String nombreGp;
    private String fecha;
    private String circuito;
    private int numVueltas;
    private int anio;

    //constructor con todos los atributos de la carrera
    public Carrera(int id, String nombreGp, String fecha, String circuito, int numVueltas, int anio) {
        this.id = id;
        this.nombreGp = nombreGp;
        this.fecha = fecha;
        this.circuito = circuito;
        this.numVueltas = numVueltas;
        this.anio = anio;
    }

    //BUILDER
    private Carrera(Builder builder) {
        this.id = builder.id;
        this.nombreGp = builder.nombreGp;
        this.fecha = builder.fecha;
        this.circuito = builder.circuito;
        this.numVueltas = builder.numVueltas;
        this.anio = builder.anio;
    }

    public static class Builder {
        private int id;
        private String nombreGp;
        private String fecha;
        private String circuito;
        private int numVueltas;
        private int anio;

        public Builder id(int id) {
            this.id = id;
            return this;
        }

        public Builder nombreGp(String nombreGp) {
            this.nombreGp = nombreGp;
            return this;
        }

        public Builder fecha(String fecha) {
            this.fecha = fecha;
            return this;
        }

        public Builder circuito(String circuito) {
            this.circuito = circuito;
            return this;
        }

        public Builder numVueltas(int numVueltas) {
            this.numVueltas = numVueltas;
            return this;
        }

        public Builder anio(int anio) {
            this.anio = anio;
            return this;
        }

        public Carrera build() {
            return new Carrera(this);
        }
    }

    //getters
    public int getId() { return id; }
    public String getNombreGp() { return nombreGp; }
    public String getFecha() { return fecha; }
    public String getCircuito() { return circuito; }
    public int getAnio() { return anio; }

    //devuelve la visualización de la información de la carrera para la lista
    @Override
    public String toString() {
        return String.format("%d - %s | Fecha: %s | Circuito: %s",
                id, nombreGp, fecha, circuito);
    }
}
