package com.patrones.service.dao;

import com.patrones.Interface.DAO.IConectionProvider;
import com.patrones.Interface.DAO.IPilotoTemporadaDAO;
import com.patrones.entity.PilotoTemporada;
import java.sql.*;

public class PilotoTemporadaDAO implements IPilotoTemporadaDAO {
    private final IConectionProvider conexionBD;
    public PilotoTemporadaDAO(IConectionProvider conexionBD) {
        this.conexionBD = conexionBD;
    }

    //FACTORY METHOD (GOF)
    protected PilotoTemporada crearPilotoTemporada(
            int idPilotoTemporada,
            int idPiloto,
            int idTemporada,
            int puntosTotales,
            int victorias
    ) {
        PilotoTemporada pt = new PilotoTemporada();

        pt.setId_piloto_temporada(idPilotoTemporada);
        pt.setId_piloto(idPiloto);
        pt.setId_temporada(idTemporada);
        pt.setPuntosTotales(puntosTotales);
        pt.setVictorias(victorias);

        return pt;
    }


    //Obtiene id_piloto_temporada a partir del nombre y año
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

            stmt.setString(1, nombrePiloto.toLowerCase());
            stmt.setInt(2, anio);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                idPilotoTemporada = rs.getInt("id_piloto_temporada");
            }

        } catch (SQLException e) {
            System.err.println("Error al obtener id_piloto_temporada: " + e.getMessage());
        }

        return idPilotoTemporada;
    }

    // Suma puntos al piloto en la tabla piloto_temporada
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

            if (filas > 0) {
                System.out.println("Puntos actualizados correctamente en piloto_temporada.");
            } else {
                System.out.println("No existe ese id_piloto_temporada.");
            }

        } catch (SQLException e) {
            System.err.println("Error al actualizar puntos totales: " + e.getMessage());
        }
    }

    // Incrementa en 1 las victorias
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

    // Obtiene id_piloto desde id_piloto_temporada
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

            if (rs.next()) {
                idPiloto = rs.getInt("id_piloto");
            }

        } catch (SQLException e) {
            System.err.println("Error al obtener id_piloto desde piloto_temporada: " + e.getMessage());
        }
        return idPiloto;
    }
}