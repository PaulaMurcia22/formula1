package com.patrones.entity;

public class PilotoTemporada {

    private int id_piloto_temporada;
    private int id_piloto;
    private int id_equipo;
    private int id_temporada;
    private int puntosTotales;
    private int victorias;
    private int temporada;

    public PilotoTemporada() {

    }
    public int getId_piloto_temporada() {
        return id_piloto_temporada;
    }
    public void setId_piloto_temporada(int id_piloto_temporada) {
        this.id_piloto_temporada = id_piloto_temporada;
    }
    public int getId_piloto() {
        return id_piloto;
    }
    public void setId_piloto(int id_piloto) {
        this.id_piloto = id_piloto;
    }
    public int getId_equipo() {
        return id_equipo;
    }
    public void setId_equipo(int id_equipo) {
        this.id_equipo = id_equipo;
    }
    public int getId_temporada() {
        return id_temporada;
    }
    public void setId_temporada(int id_temporada) {
        this.id_temporada = id_temporada;
    }
    public int getPuntosTotales() {
        return puntosTotales;
    }
    public void setPuntosTotales(int puntosTotales) {
        this.puntosTotales = puntosTotales;
    }
    public int getVictorias() {
        return victorias;
    }
    public void setVictorias(int victorias) {
        this.victorias = victorias;
    }
    public int getTemporada() {
        return temporada;
    }
    public void setTemporada(int temporada) {
        this.temporada = temporada;
    }


}
