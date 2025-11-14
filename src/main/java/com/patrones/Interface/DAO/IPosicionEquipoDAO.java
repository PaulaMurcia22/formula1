package com.patrones.Interface.DAO;

import com.patrones.entity.PosicionEquipo;

import java.util.List;

public interface IPosicionEquipoDAO {
    public List<PosicionEquipo> obtenerPosicionesEquiposTemporada(int anio);
}
