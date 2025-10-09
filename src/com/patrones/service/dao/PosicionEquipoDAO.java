package com.patrones.service.dao;

import com.patrones.entity.PosicionEquipo;
import com.patrones.service.ConnectionBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PosicionEquipoDAO {
    public List<PosicionEquipo> obtenerPosicionesEquiposTemporada(int anio) {
        List<PosicionEquipo> posiciones = new ArrayList<>();

        String sql = """
            SELECT
                e.id_equipo,
                e.nombre,
                GROUP_CONCAT(DISTINCT CONCAT(p.nombre, ' ', p.apellido) SEPARATOR ', ') AS pilotos,
                COALESCE(SUM(pt.puntos_totales), 0) AS puntos_totales
            FROM piloto_temporada pt
            JOIN equipo e ON pt.id_equipo = e.id_equipo
            JOIN piloto p ON pt.id_piloto = p.id_piloto
            JOIN temporada t ON pt.id_temporada = t.id_temporada
            WHERE t.anio = ?
            GROUP BY e.id_equipo, e.nombre
            ORDER BY puntos_totales DESC;               
        """;

        try (Connection conn = ConnectionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, anio);
            ResultSet rs = stmt.executeQuery();

            int posicion = 0;
            while (rs.next()) {
                posicion++;

                int idEquipo = rs.getInt("id_equipo");
                String nombre = rs.getString("nombre");
                String pilotos = rs.getString("pilotos");
                int puntos = rs.getInt("puntos_totales");

                String categoria;
                if (posicion == 1) {
                    categoria = "\uD83E\uDD47";
                } else if (posicion == 2) {
                    categoria = "\uD83E\uDD48";
                } else if (posicion == 3) {
                    categoria = "\uD83E\uDD49";
                } else {
                    categoria = "\uD83D\uDD3B";
                }

                PosicionEquipo posicionEquipo = new PosicionEquipo(
                        idEquipo,
                        nombre,
                        pilotos,
                        puntos,
                        categoria
                );
                posiciones.add(posicionEquipo);
            }

        } catch (SQLException e) {
            System.err.println("Ocurrió un error al obtener las posiciones de los equipos: " + e.getMessage());
        }

        return posiciones;
    }
}
