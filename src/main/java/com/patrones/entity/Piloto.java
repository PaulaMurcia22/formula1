package com.patrones.entity;

public class Piloto {
    //atributos del piloto
    private int id;
    private String nombre;
    private String apellido;
    private String nacionalidad;
    private String equipo;
    private int numero;
    private int anio;
    private int puntosTotales;
    private int victorias;

    //constructor con todos los atributos del piloto
    public Piloto(int id, String nombre, String apellido, String nacionalidad, String equipo, int numero, int anio, int puntosTotales, int victorias) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.nacionalidad = nacionalidad;
        this.equipo = equipo;
        this.numero = numero;
        this.anio = anio;
        this.puntosTotales = puntosTotales;
        this.victorias = victorias;
    }

    //constructor para crear un piloto
    public Piloto(int id, String nombre, String apellido, String nacionalidad, String equipo, int numero, int anio) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.nacionalidad = nacionalidad;
        this.equipo = equipo;
        this.numero = numero;
        this.anio = anio;
    }

    //constructor con la información básica del piloto
    public Piloto(int id, String nombre, String apellido, String equipo) {
        this.id = id;
        this.nombre = nombre;
        this.apellido = apellido;
        this.equipo = equipo;
    }

    //Constructor privado para Builder

    private Piloto(Builder builder) {
        this.id = builder.id;
        this.nombre = builder.nombre;
        this.apellido = builder.apellido;
        this.nacionalidad = builder.nacionalidad;
        this.equipo = builder.equipo;
        this.numero = builder.numero;
        this.anio = builder.anio;
        this.puntosTotales = builder.puntosTotales;
        this.victorias = builder.victorias;
    }

    //Builder
    public static class Builder {
        private int id;
        private String nombre;
        private String apellido;
        private String nacionalidad;
        private String equipo;
        private int numero;
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

        public Builder apellido(String apellido) {
            this.apellido = apellido;
            return this;
        }

        public Builder nacionalidad(String nacionalidad) {
            this.nacionalidad = nacionalidad;
            return this;
        }

        public Builder equipo(String equipo) {
            this.equipo = equipo;
            return this;
        }

        public Builder numero(int numero) {
            this.numero = numero;
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

        //instancia de Piloto
        public Piloto build() {
            return new Piloto(this);
        }
    }

    //getters
    public int getId() { return id; }
    public String getNombre() { return nombre; }
    public String getApellido() { return apellido; }
    public String getEquipo() { return equipo; }
    public String getNacionalidad() { return nacionalidad; }
    public int getNumero() { return numero; }
    public int getAnio() { return anio; }
    public int getPuntosTotales() { return puntosTotales; }
    public int getVictorias() { return victorias; }


    //devuelve la visualización de la información del piloto para la lista
    @Override
    public String toString() {
        return String.format("%d - %s %s | Equipo: %s",
                id, nombre, apellido, equipo);
    }
}