package com.patrones.service.dao;

import com.patrones.Interface.DAO.IConectionProvider;
import com.patrones.Interface.DAO.IResultadoCarreraDAO;
import com.patrones.entity.ResultadoCarrera;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ResultadoCarreraDAO implements IResultadoCarreraDAO {
    private final IConectionProvider conexionBD;
    public ResultadoCarreraDAO(IConectionProvider conexionBD) {
        this.conexionBD = conexionBD;
    }

    // FACTORY METHOD
    protected ResultadoCarrera crearResultadoCarrera(
            int idCarrera,
            int idPilotoTemporada,
            int posicionFinal,
            String estado,
            int puntos
    ) {
        return new ResultadoCarrera.Builder()
                .idCarrera(idCarrera)
                .idPilotoTemporada(idPilotoTemporada)
                .posicionFinal(posicionFinal)
                .estado(estado)
                .puntosObtenidos(puntos)
                .build();
    }

    // Inserción de un resultado (usa Factory Method si lo deseas)

    @Override
    public void InsertarResultadosCarrera(ResultadoCarrera resultadoCarrera) {
        String sql = """
            INSERT INTO resultado_carrera 
            (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
            VALUES (?, ?, ?, ?, ?);
        """;

        try (Connection conn = conexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {
            stmt.setInt(1, resultadoCarrera.getId_carrera());
            stmt.setInt(2, resultadoCarrera.getId_piloto_temporada());
            stmt.setInt(3, resultadoCarrera.getPosicion_final());
            stmt.setString(4, resultadoCarrera.getEstado());
            stmt.setInt(5, resultadoCarrera.getPuntosObtenidos());
            stmt.executeUpdate();

            System.out.println("Resultado de carrera insertado correctamente.");

        } catch (SQLException e) {
            System.err.println("Error al insertar el resultado de carrera: " + e.getMessage());
        }
    }

    // Verificar si ya existe un resultado para una carrera/piloto

    @Override

    public boolean existeResultado(int idPilotoTemporada, int idCarrera) {
        String sql = """
            SELECT COUNT(*) 
            FROM resultado_carrera 
            WHERE id_piloto_temporada = ? AND id_carrera = ?
        """;

        try (Connection conn = conexionBD.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {
            ps.setInt(1, idPilotoTemporada);
            ps.setInt(2, idCarrera);
            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                return rs.getInt(1) > 0;

            }

        } catch (SQLException e) {
            System.err.println("Error verificando existencia de resultado: " + e.getMessage());

        }

        return false;
    }

}

