package com.patrones.entity;

import java.util.Date;


public class Carrera {

private int id_carrera;
private String nombre_gp;
private Date fecha;
private int id_circuito;
private int id_temporada;
private int num_vueltas;
private int pole_position;
private int vuelta_rapida;

    public Carrera(int id_carrera,String nombre_gp,Date fecha,int id_circuito,int id_temporada,int num_vueltas,int pole_position,int vuelta_rapida) {
        this.id_carrera = id_carrera;
        this.nombre_gp = nombre_gp;
        this.fecha = fecha;
        this.id_circuito = id_circuito;
        this.id_temporada = id_temporada;
        this.num_vueltas = num_vueltas;
        this.pole_position = pole_position;
        this.vuelta_rapida = vuelta_rapida;
    }


}
