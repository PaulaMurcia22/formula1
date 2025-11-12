package com.patrones.service.dao;

import com.patrones.Interface.DAO.IConectionProvider;
import com.patrones.Interface.DAO.IPilotoTemporadaDAO;
import com.patrones.entity.PilotoTemporada;
import com.patrones.service.ConnectionBD;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PilotoTemporadaDAO implements IPilotoTemporadaDAO {

    private final IConectionProvider conexionBD;

    public PilotoTemporadaDAO(IConectionProvider conexionBD) {
        this.conexionBD = conexionBD;
    }

    // Obtiene el id_piloto_temporada a partir del nombre del piloto y el año
    @Override
    public int obtenerIdPilotoTemporadaPorNombre(String nombrePiloto, int anio) {
        int idPilotoTemporada = -1;

        String sql = """
        SELECT pt.id_piloto_temporada
        FROM piloto_temporada pt
        JOIN piloto p ON pt.id_piloto = p.id_piloto
        JOIN temporada t ON pt.id_temporada = t.id_temporada
        WHERE LOWER(p.nombre) = ?
        AND t.anio = ?;
    """;

        try (Connection conn = conexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            // Se asignan los parámetros de búsqueda
            stmt.setString(1, nombrePiloto);
            stmt.setInt(2, anio);

            ResultSet rs = stmt.executeQuery();

            // Si se encuentra el piloto, se guarda su id_piloto_temporada
            if (rs.next()) {
                idPilotoTemporada = rs.getInt("id_piloto_temporada");
            }

        } catch (SQLException e) {
            System.err.println("Error al obtener id_piloto_temporada: " + e.getMessage());
        }

        return idPilotoTemporada;
    }

    // Actualiza los puntos totales sumando los nuevos puntos
    @Override
    public void actualizarPuntosTotales(int idPilotoTemporada, int puntosNuevos) {
        String sql = """
        UPDATE piloto_temporada
        SET puntos_totales = puntos_totales + ?
        WHERE id_piloto_temporada = ?;
    """;

        try (Connection conn = conexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, puntosNuevos);
            stmt.setInt(2, idPilotoTemporada);

            int filas = stmt.executeUpdate();

            // Verifica si se actualizó correctamente
            if (filas > 0) {
                System.out.println("Puntos actualizados correctamente en piloto_temporada.");
            } else {
                System.out.println("No se encontró el piloto_temporada con ese ID.");
            }

        } catch (SQLException e) {
            System.err.println("Error al actualizar puntos totales: " + e.getMessage());
        }
    }

    // Incrementa en 1 la cantidad de victorias del piloto
    @Override
    public void incrementarVictorias(int idPiloto) {
        String sql = "UPDATE piloto_temporada SET victorias = victorias + 1 WHERE id_piloto = ?";

        try (Connection conn = conexionBD.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            ps.setInt(1, idPiloto);
            ps.executeUpdate();

        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    // Obtiene el id_piloto a partir del id_piloto_temporada
    @Override
    public int obtenerIdPilotoPorIdPilotoTemporada(int idPilotoTemporada) {
        int idPiloto = -1;

        String sql = """
        SELECT id_piloto
        FROM piloto_temporada
        WHERE id_piloto_temporada = ?;
    """;

        try (Connection conn = conexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, idPilotoTemporada);

            ResultSet rs = stmt.executeQuery();

            // Si se encuentra el registro, se obtiene el id del piloto
            if (rs.next()) {
                idPiloto = rs.getInt("id_piloto");
            }

        } catch (SQLException e) {
            System.err.println("Error al obtener id_piloto desde piloto_temporada: " + e.getMessage());
        }

        return idPiloto;
    }
}
