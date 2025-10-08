package com.patrones.service.dao;

import com.patrones.entity.PosicionPiloto;
import com.patrones.service.ConnectionBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PosicionPilotoDAO {

    public List<PosicionPiloto> obtenerPosicionesPilotosTemporada(int anio) {
        List<PosicionPiloto> posiciones = new ArrayList<>();

        String sql = """
            SELECT
                p.id_piloto,
                p.nombre,
                p.apellido,
                e.nombre AS nombre_equipo,
                COALESCE(SUM(rc.puntos_obtenidos), 0) AS puntos_totales
            FROM piloto_temporada pt
            JOIN piloto p ON pt.id_piloto = p.id_piloto
            JOIN equipo e ON pt.id_equipo = e.id_equipo
            JOIN temporada t ON pt.id_temporada = t.id_temporada
            LEFT JOIN resultado_carrera rc ON rc.id_piloto_temporada = pt.id_piloto_temporada
            WHERE t.anio = ?
            GROUP BY p.id_piloto, p.nombre, p.apellido, e.nombre
            ORDER BY puntos_totales DESC;
        """;

        try (Connection conn = ConnectionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, anio);
            ResultSet rs = stmt.executeQuery();

            int posicion = 0;
            while (rs.next()) {
                posicion++;

                int idPiloto = rs.getInt("id_piloto");
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                String equipo = rs.getString("nombre_equipo");
                int puntos = rs.getInt("puntos_totales");

                String categoria;
                if (posicion == 1) {
                    categoria = "1° (Podio)";
                } else if (posicion == 2) {
                    categoria = "2° (Podio)";
                } else if (posicion == 3) {
                    categoria = "3° (Podio)";
                } else if (posicion <= 10) {
                    categoria = "Top 10";
                } else {
                    categoria = "Fuera del Top 10";
                }

                PosicionPiloto posicionPiloto = new PosicionPiloto(
                        idPiloto,
                        nombre,
                        apellido,
                        equipo,
                        puntos,
                        categoria
                );
                posiciones.add(posicionPiloto);
            }

        } catch (SQLException e) {
            System.err.println("Ocurrió un error al obtener las posiciones de los pilotos: " + e.getMessage());
        }

        return posiciones;
    }
}
