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
    public void setId_resultado(int id_resultado) {
        this.id_resultado = id_resultado;
    }
    public void setId_carrera(int id_carrera) {
        this.id_carrera = id_carrera;
    }
    public void setId_piloto_temporada(int id_piloto_temporada) {
        this.id_piloto_temporada = id_piloto_temporada;
    }
    public void setPosicion_final(int posicion_final) {
        this.posicion_final = posicion_final;
    }
    public void setEstado(String estado) {
        this.estado = estado;
    }
    public void setPuntos_obtenidos(int puntos_obtenidos) {
        this.puntos_obtenidos = puntos_obtenidos;
    }

}
