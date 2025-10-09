package com.patrones.service.dao;

import com.patrones.entity.ResultadoCarrera;
import com.patrones.service.ConnectionBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ResultadoCarreraDAO {
    public void InsertarResultadosCarrera(ResultadoCarrera resultadoCarrera) {
        String sql="""
            INSERT into resultado_carrera (id_carrera,id_piloto_temporada,posicion_final,estado,puntos_obtenidos)values (?,?,?,?,?);
          
            """;

        try (Connection conn = ConnectionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {


            stmt.setInt(1, resultadoCarrera.getId_carrera());
            stmt.setInt(2, resultadoCarrera.getId_piloto_temporada());
            stmt.setInt(3, resultadoCarrera.getPosicion_final());
            stmt.setString(4, resultadoCarrera.getEstado());
            stmt.setInt(5, resultadoCarrera.getPuntosObtenidos());

            stmt.executeUpdate();
            System.out.println("✅ Resultado de carrera insertado correctamente.");


        } catch (SQLException e) {
            System.err.println("Error al obtener id_piloto_temporada: " + e.getMessage());
        }

    }

    public boolean existeResultado(int idPilotoTemporada, int idCarrera) {
        String sql = "SELECT COUNT(*) FROM resultado_carrera WHERE id_piloto_temporada = ? AND id_carrera = ?";

        try (Connection conn = ConnectionBD.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, idPilotoTemporada);
            ps.setInt(2, idCarrera);

            ResultSet rs = ps.executeQuery();
            if (rs.next()) {
                int count = rs.getInt(1);
                return count > 0; // si hay algún registro, ya existe
            }
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return false; // no existe
    }

}
