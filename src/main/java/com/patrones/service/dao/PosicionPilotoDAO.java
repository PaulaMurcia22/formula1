package com.patrones.service.dao;

import com.patrones.Interface.DAO.IConectionProvider;
import com.patrones.Interface.DAO.IPosicionPilotoDAO;
import com.patrones.entity.PosicionPiloto;
import com.patrones.service.ConnectionBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PosicionPilotoDAO implements IPosicionPilotoDAO {
    private final IConectionProvider conexionBD;

    public PosicionPilotoDAO(IConectionProvider conexionBD) {
        this.conexionBD = conexionBD;
    }

    @Override
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

        try (Connection conn = conexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, anio);
            ResultSet rs = stmt.executeQuery();

            int posicion = 0;

            while (rs.next()) {
                posicion++;

                // Factory Method que crea el objeto PosicionPiloto
                PosicionPiloto piloto = crearPosicionPiloto(
                        posicion,
                        rs.getInt("id_piloto"),
                        rs.getString("nombre"),
                        rs.getString("apellido"),
                        rs.getString("nombre_equipo"),
                        rs.getInt("puntos_totales")
                );

                posiciones.add(piloto);
            }

        } catch (SQLException e) {
            System.err.println("Error obteniendo posiciones de pilotos: " + e.getMessage());
        }

        return posiciones;
    }

    // FACTORY METHOD
    protected PosicionPiloto crearPosicionPiloto(
            int posicion,
            int idPiloto,
            String nombre,
            String apellido,
            String equipo,
            int puntos
    ) {
        String categoria;

        if (posicion == 1) {
            categoria = "\uD83E\uDD47"; // 1°
        } else if (posicion == 2) {
            categoria = "\uD83E\uDD48"; // 2°
        } else if (posicion == 3) {
            categoria = "\uD83E\uDD49"; // 3°
        } else if (posicion <= 10) {
            categoria = "\uD83D\uDD1D"; // Top 10
        } else {
            categoria = "\uD83D\uDD3B"; // Resto
        }

        return new PosicionPiloto(
                idPiloto,
                nombre,
                apellido,
                equipo,
                puntos,
                categoria
        );
    }
}