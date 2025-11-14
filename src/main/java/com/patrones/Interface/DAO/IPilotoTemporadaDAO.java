package com.patrones.Interface.DAO;

public interface IPilotoTemporadaDAO {
    public int obtenerIdPilotoPorIdPilotoTemporada(int idPilotoTemporada);
    public void incrementarVictorias(int idPiloto);
    public void actualizarPuntosTotales(int idPilotoTemporada, int puntosNuevos);
    public int obtenerIdPilotoTemporadaPorNombre(String nombrePiloto, int anio);


}
