package com.patrones.Interface.DAO;

import com.patrones.entity.ResultadoCarrera;

public interface IResultadoCarreraDAO {
    public void InsertarResultadosCarrera(ResultadoCarrera resultadoCarrera);
    public boolean existeResultado(int idPilotoTemporada, int idCarrera);
}
