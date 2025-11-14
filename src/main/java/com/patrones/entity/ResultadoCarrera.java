package com.patrones.entity;

public class ResultadoCarrera {
    //atributos de ResultadoCarrera
    private int id_resultado;
    private int id_carrera;
    private int id_piloto_temporada;
    private int posicion_final;
    private String estado;
    private int puntosObtenidos;

    //constructor vacio
    public ResultadoCarrera () {

    };

    //Constructor privado para el Builder
    private ResultadoCarrera(Builder builder) {
        this.id_resultado = builder.id_resultado;
        this.id_carrera = builder.id_carrera;
        this.id_piloto_temporada = builder.id_piloto_temporada;
        this.posicion_final = builder.posicion_final;
        this.estado = builder.estado;
        this.puntosObtenidos = builder.puntosObtenidos;
    }

    //Builder
    public static class Builder {
        private int id_resultado;
        private int id_carrera;
        private int id_piloto_temporada;
        private int posicion_final;
        private String estado;
        private int puntosObtenidos;

        public Builder idResultado(int id_resultado) {
            this.id_resultado = id_resultado;
            return this;
        }

        public Builder idCarrera(int id_carrera) {
            this.id_carrera = id_carrera;
            return this;
        }

        public Builder idPilotoTemporada(int id_piloto_temporada) {
            this.id_piloto_temporada = id_piloto_temporada;
            return this;
        }

        public Builder posicionFinal(int posicion_final) {
            this.posicion_final = posicion_final;
            return this;
        }

        public Builder estado(String estado) {
            this.estado = estado;
            return this;
        }

        public Builder puntosObtenidos(int puntosObtenidos) {
            this.puntosObtenidos = puntosObtenidos;
            return this;
        }

        public ResultadoCarrera build() {
            return new ResultadoCarrera(this);
        }
    }

    //Patrón Prototype
    @Override
    public ResultadoCarrera clone() {
        try {
            return (ResultadoCarrera) super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException("Error al clonar ResultadoCarrera: " + e.getMessage());
        }
    }

    //getters y setters
    public int getId_resultado() {
        return id_resultado;
    }
    public void setId_resultado(int id_resultado) {
        this.id_resultado = id_resultado;
    }
    public int getId_carrera() {
        return id_carrera;
    }
    public void setId_carrera(int id_carrera) {
        this.id_carrera = id_carrera;
    }
    public int getId_piloto_temporada() {
        return id_piloto_temporada;
    }
    public void setId_piloto_temporada(int id_piloto_temporada) {
        this.id_piloto_temporada = id_piloto_temporada;
    }
    public int getPosicion_final() {
        return posicion_final;
    }
    public void setPosicion_final(int posicion_final) {
        this.posicion_final = posicion_final;
    }
    public String getEstado() {
        return estado;
    }
    public void setEstado(String estado) {
        this.estado = estado;
    }
    public int getPuntosObtenidos() {
        return puntosObtenidos;
    }
    public void setPuntosObtenidos(int puntosObtenidos) {
        this.puntosObtenidos = puntosObtenidos;
    }

    //devuelve la visualización de la información de ResultadoCarrera para la lista
    @Override
    public String toString() {
        return String.format(
                "CarreraID: %d, PilotoTemporadaID: %d, Estado: %s, Posición: %d, Puntos: %d",
                id_carrera, id_piloto_temporada, estado, posicion_final, puntosObtenidos
        );
    }
}
