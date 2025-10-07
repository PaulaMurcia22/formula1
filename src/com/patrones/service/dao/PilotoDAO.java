package com.patrones.service.dao;

import com.patrones.entity.Piloto;
import com.patrones.service.ConnectionBD;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PilotoDAO {

    public List<Piloto> obtenerPilotosPorTemporada(int anio) {
        List<Piloto> pilotos = new ArrayList<>();

        String sql = """
            SELECT 
                p.id_piloto,
                p.nombre,
                p.apellido,
                p.nacionalidad,
                e.nombre AS nombre_equipo,
                t.anio
            FROM piloto p
            JOIN piloto_temporada pt ON p.id_piloto = pt.id_piloto
            JOIN equipo e ON pt.id_equipo = e.id_equipo
            JOIN temporada t ON pt.id_temporada = t.id_temporada
            WHERE t.anio = ?;
        """;

        try (Connection conn = ConnectionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, anio);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Piloto piloto = new Piloto(
                        rs.getInt("id_piloto"),
                        rs.getString("nombre"),
                        rs.getString("apellido"),
                        rs.getString("nacionalidad"),
                        rs.getString("nombre_equipo"),
                        rs.getInt("anio")
                );
                pilotos.add(piloto);
            }

        } catch (SQLException e) {
            System.err.println("Ocurrio un error al obtener los pilotos: " + e.getMessage());
        }

        return pilotos;
    }
}
