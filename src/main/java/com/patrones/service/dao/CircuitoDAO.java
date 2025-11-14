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

    //FACTORY METHODS
    // Factory Method para circuitos de lista
    protected Circuito crearCircuitoLista(

            int id, String nombre, String pais, java.util.Date fecha

    ) {

        return new Circuito.Builder()

                .id(id)
                .nombre(nombre)
                .pais(pais)
                .fecha(fecha)
                .build();

    }

    // Factory Method para circuito detallado
    protected Circuito crearCircuitoDetalle(

            int id, String nombre, String pais,
            String longitudKm, String curvas,
            java.util.Date fecha, String nombreGp, int anio

    ) {

        return new Circuito.Builder()

                .id(id)
                .nombre(nombre)
                .pais(pais)
                .longitudKm(longitudKm)
                .curvas(curvas)
                .fecha(fecha)
                .nombreGp(nombreGp)
                .anio(anio)
                .build();

    }

    //MÉTODOS DEL DAO
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
            stmt.setInt(1, anio);

            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {

                // Aplicación del Factory Method
                Circuito circuito = crearCircuitoLista(

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
            stmt.setInt(1, idCircuito);
            stmt.setInt(2, anio);

            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {

                // Factory Method aplicado
                circuito = crearCircuitoDetalle(
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