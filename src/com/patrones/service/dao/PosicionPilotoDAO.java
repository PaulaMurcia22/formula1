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
                pt.puntos_totales
            FROM piloto_temporada pt
            JOIN piloto p ON pt.id_piloto = p.id_piloto
            JOIN equipo e ON pt.id_equipo = e.id_equipo
            JOIN temporada t ON pt.id_temporada = t.id_temporada
            WHERE t.anio = ?
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
                    categoria = "\uD83E\uDD47";
                } else if (posicion == 2) {
                    categoria = "\uD83E\uDD48";
                } else if (posicion == 3) {
                    categoria = "\uD83E\uDD49";
                } else if (posicion <= 10) {
                    categoria = "\uD83D\uDD1D";
                } else {
                    categoria = "\uD83D\uDD3B";
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
