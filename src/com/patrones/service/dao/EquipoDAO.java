package com.patrones.service.dao;

import com.patrones.entity.Equipo;
import com.patrones.entity.Piloto;
import com.patrones.service.ConnectionBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EquipoDAO {
    public List<Equipo> obtenerEquiposPorTemporada(int anio) {
        List<Equipo> equipos = new ArrayList<>();

        String sql = """
            SELECT 
                e.id_equipo,
                e.nombre,
                GROUP_CONCAT(CONCAT(p.nombre, ' ', p.apellido) SEPARATOR ', ') AS pilotos
            FROM equipo e
            JOIN piloto_temporada pt ON e.id_equipo = pt.id_equipo
            JOIN piloto p ON pt.id_piloto = p.id_piloto
            JOIN temporada t ON pt.id_temporada = t.id_temporada
            WHERE t.anio = ?
            GROUP BY e.id_equipo, e.nombre, t.anio
            ORDER BY e.id_equipo ASC;
        """;

        try (Connection conn = ConnectionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, anio);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Equipo equipo = new Equipo(
                        rs.getInt("id_equipo"),
                        rs.getString("nombre"),
                        rs.getString("pilotos")
                );
                equipos.add(equipo);
            }

        } catch (SQLException e) {
            System.err.println("Ocurrio un error al obtener los equipos: " + e.getMessage());
        }

        return equipos;
    }

}
