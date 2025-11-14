package com.patrones.Interface.DAO;

import com.patrones.entity.Carrera;

import java.util.List;

public interface ICarreraDAO {
    public List<Carrera> obtenerCarrerasPorTemporada(int anio);
    public Carrera obtenerCarrera(int idCarrera, int anio);
    public void mostrarResultadosCarrera(int idCarrera);
    public Carrera obtenerCarreraPorNombre(String nombreGp, int anio);
    public List<Carrera> obtenerCarrerasPostCongelacion(int anio);
    public void actualizarEstadoPendienteATerminado(int idCarrera);
    public void eliminarResultadoExistente(int idPilotoTemporada, int idCarrera);

}
