package com.patrones.Interface.DAO;

import com.patrones.entity.Piloto;

import java.util.List;

public interface IPilotoDAO {

    public List<Piloto> obtenerPilotosPorTemporada(int anio);
    public Piloto obtenerPiloto(int idPiloto, int anio);
    public Piloto obtenerPilotoPorNombre(String nombrePiloto, int anio);
}
