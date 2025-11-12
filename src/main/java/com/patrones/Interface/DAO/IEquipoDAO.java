package com.patrones.Interface.DAO;

import com.patrones.entity.Equipo;

import java.util.List;

public interface IEquipoDAO {
    public List<Equipo> obtenerEquiposPorTemporada(int anio);
    public Equipo obtenerEquipo(int idEquipo, int anio);
}
