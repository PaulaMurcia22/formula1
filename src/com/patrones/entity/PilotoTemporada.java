package com.patrones.entity;

public class PilotoTemporada {
    private int id_piloto_temporada;
    private int id_piloto;
    private int id_equipo;
    private int id_temporada;
    private int puntos_totales;
    private int victorias;
    private int posicion_final;

    public PilotoTemporada(int id_piloto_temporada,int id_piloto,int id_equipo,int id_temporada,int puntos_totales,int victorias,int posicion_final) {
        this.id_piloto_temporada = id_piloto_temporada;
        this.id_piloto = id_piloto;
        this.id_equipo = id_equipo;
        this.id_temporada = id_temporada;
        this.puntos_totales = puntos_totales;
        this.victorias = victorias;
        this.posicion_final = posicion_final;

    }
}
