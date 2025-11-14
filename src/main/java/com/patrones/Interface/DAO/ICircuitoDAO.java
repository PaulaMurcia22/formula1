package com.patrones.Interface.DAO;

import com.patrones.entity.Circuito;

import java.util.List;

public interface ICircuitoDAO {
    public List<Circuito> obtenerCircuitosPorTemporada(int anio);
    public Circuito obtenerCircuito(int idCircuito, int anio);
}
