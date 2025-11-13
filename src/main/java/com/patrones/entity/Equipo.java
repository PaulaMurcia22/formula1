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
    public Equipo(int id, String nombre, String pais, String pilotos, String motor, int anio, int puntosTotales, int victorias) {
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

    // ====== Constructor privado para Builder ======
    private Equipo(Builder builder) {
        this.id = builder.id;
        this.nombre = builder.nombre;
        this.pais = builder.pais;
        this.pilotos = builder.pilotos;
        this.motor = builder.motor;
        this.anio = builder.anio;
        this.puntosTotales = builder.puntosTotales;
        this.victorias = builder.victorias;
    }

    //Builder
    public static class Builder {
        private int id;
        private String nombre;
        private String pais;
        private String pilotos;
        private String motor;
        private int anio;
        private int puntosTotales;
        private int victorias;

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

        public Builder pilotos(String pilotos) {
            this.pilotos = pilotos;
            return this;
        }

        public Builder motor(String motor) {
            this.motor = motor;
            return this;
        }

        public Builder anio(int anio) {
            this.anio = anio;
            return this;
        }

        public Builder puntosTotales(int puntosTotales) {
            this.puntosTotales = puntosTotales;
            return this;
        }

        public Builder victorias(int victorias) {
            this.victorias = victorias;
            return this;
        }

        //Instancia del objeto Equipo.
        public Equipo build() {
            return new Equipo(this);
        }
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

    // ====== toString ======
    @Override
    public String toString() {
        return String.format("%d - %s | Pilotos: %s", id, nombre, pilotos);
    }
}
