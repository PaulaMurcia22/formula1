package com.patrones.service.dao;

import com.patrones.Interface.DAO.ICircuitoDAO;
import com.patrones.Interface.DAO.IConectionProvider;
import com.patrones.entity.Circuito;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CircuitoDAO implements ICircuitoDAO {

    private final IConectionProvider conexionBD;

    public CircuitoDAO(IConectionProvider connectionProvider) {
        this.conexionBD = connectionProvider;
    }

    // Obtiene la lista de circuitos correspondientes a una temporada específica
    @Override
    public List<Circuito> obtenerCircuitosPorTemporada(int anio) {
        List<Circuito> circuitos = new ArrayList<>();

        String sql = """
        SELECT
            c.id_circuito,
            c.nombre,
            c.pais,
            ca.fecha
        FROM circuito c
        JOIN carrera ca ON c.id_circuito = ca.id_circuito
        JOIN temporada t ON ca.id_temporada = t.id_temporada
        WHERE t.anio = ?
        ORDER BY ca.fecha;
        """;

        try (Connection conn = conexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            // Se pasa el año de la temporada como parámetro
            stmt.setInt(1, anio);
            ResultSet rs = stmt.executeQuery();

            // Recorre los resultados y crea objetos Circuito
            while (rs.next()) {
                Circuito circuito = new Circuito(
                        rs.getInt("id_circuito"),
                        rs.getString("nombre"),
                        rs.getString("pais"),
                        rs.getDate("fecha")
                );
                circuitos.add(circuito);
            }

        } catch (SQLException e) {
            System.err.println("Ocurrió un error al obtener los circuitos: " + e.getMessage());
        }

        return circuitos;
    }

    // Obtiene la información detallada de un circuito específico en una temporada
    @Override
    public Circuito obtenerCircuito(int idCircuito, int anio) {
        Circuito circuito = null;

        String sql = """
        SELECT
            c.id_circuito,
            c.nombre,
            c.pais,
            c.longitud_km,
            c.curvas,
            ca.fecha,
            ca.nombre_gp,
            t.anio
        FROM circuito c
        JOIN carrera ca ON c.id_circuito = ca.id_circuito
        JOIN temporada t ON ca.id_temporada = t.id_temporada
        WHERE c.id_circuito = ?
        AND t.anio = ?
        ORDER BY ca.fecha;
        """;

        try (Connection conn = conexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            // Se establecen los parámetros del circuito y la temporada
            stmt.setInt(1, idCircuito);
            stmt.setInt(2, anio);
            ResultSet rs = stmt.executeQuery();

            // Si se encuentra, se crea el objeto Circuito con los datos obtenidos
            if (rs.next()) {
                circuito = new Circuito(
                        rs.getInt("id_circuito"),
                        rs.getString("nombre"),
                        rs.getString("pais"),
                        rs.getString("longitud_km"),
                        rs.getString("curvas"),
                        rs.getDate("fecha"),
                        rs.getString("nombre_gp"),
                        rs.getInt("anio")
                );
            }

        } catch (SQLException e) {
            System.err.println("Ocurrió un error al obtener el circuito por ID: " + e.getMessage());
        }

        return circuito;
    }
}
