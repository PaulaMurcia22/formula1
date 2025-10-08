package com.patrones.entity;

public class ResultadoCarrera {
    private int id_resultado;
    private int id_carrera;
    private int id_piloto_temporada;
    private int posicion_final;
    private String estado;
    private int puntos_obtenidos;

    public ResultadoCarrera(int id_resultado,int id_carrera,int id_piloto_temporada,int posicion_final,String estado,int puntos_obtenidos){
        this.id_resultado=id_resultado;
        this.id_carrera=id_carrera;
        this.id_piloto_temporada = id_piloto_temporada;
        this.posicion_final=posicion_final;
        this.estado=estado;
        this.puntos_obtenidos=puntos_obtenidos;
    }

    public int getId_resultado() {
        return id_resultado;
    }
    public int getId_carrera() {
        return id_carrera;
    }
    public int getId_piloto_temporada() {
        return id_piloto_temporada;
    }
    public int getPosicion_final() {
        return posicion_final;
    }
    public String getEstado() {
        return estado;
    }
    public int getPuntos_obtenidos() {
        return puntos_obtenidos;
    }
}
