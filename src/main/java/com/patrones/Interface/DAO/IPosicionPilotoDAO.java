package com.patrones.Interface.DAO;

import com.patrones.entity.PosicionPiloto;

import java.util.List;

public interface IPosicionPilotoDAO {
    public List<PosicionPiloto> obtenerPosicionesPilotosTemporada(int anio);
}
