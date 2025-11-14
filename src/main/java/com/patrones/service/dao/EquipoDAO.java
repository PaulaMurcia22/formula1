package com.patrones.service.dao;

import com.patrones.Interface.DAO.IConectionProvider;
import com.patrones.Interface.DAO.IEquipoDAO;
import com.patrones.entity.Equipo;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class EquipoDAO implements IEquipoDAO {

    public final IConectionProvider conexionBD;

    public EquipoDAO(IConectionProvider conexionBD) {
        this.conexionBD = conexionBD;
    }

    //FACTORY METHODS (GOF)
    // Factory Method para equipos en lista
    protected Equipo crearEquipoLista(int id, String nombre, String pilotos) {
        return new Equipo(id, nombre, pilotos);
    }

    // Factory Method para equipo detalle completo
    protected Equipo crearEquipoDetalle(
            int id, String nombre, String pais,
            String pilotos, String motor,
            int anio, int puntos, int victorias
    ) {
        return new Equipo(id, nombre, pais, pilotos, motor, anio, puntos, victorias);
    }

    //MÉTODOS DEL DAO
    @Override
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

        try (Connection conn = conexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, anio);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                // Usamos Factory Method
                Equipo equipo = crearEquipoLista(
                        rs.getInt("id_equipo"),
                        rs.getString("nombre"),
                        rs.getString("pilotos")
                );

                equipos.add(equipo);
            }

        } catch (SQLException e) {
            System.err.println("Ocurrió un error al obtener los equipos: " + e.getMessage());
        }

        return equipos;
    }

    @Override
    public Equipo obtenerEquipo(int idEquipo, int anio) {
        Equipo equipo = null;

        String sql = """
        SELECT 
            e.id_equipo,
            e.nombre,
            e.pais,
            e.motor,
            t.anio,
            GROUP_CONCAT(CONCAT(p.nombre, ' ', p.apellido) SEPARATOR ', ') AS pilotos,
            COALESCE(SUM(pt.puntos_totales), 0) AS puntos_totales,
            COALESCE(SUM(pt.victorias), 0) AS victorias
        FROM equipo e
        JOIN piloto_temporada pt ON e.id_equipo = pt.id_equipo
        JOIN piloto p ON pt.id_piloto = p.id_piloto
        JOIN temporada t ON pt.id_temporada = t.id_temporada
        WHERE e.id_equipo = ?
        AND t.anio = ?
        GROUP BY e.id_equipo, e.nombre, e.pais, e.motor, t.anio;
        """;

        try (Connection conn = conexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, idEquipo);
            stmt.setInt(2, anio);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                // Factory Method aplicado
                equipo = crearEquipoDetalle(
                        rs.getInt("id_equipo"),
                        rs.getString("nombre"),
                        rs.getString("pais"),
                        rs.getString("pilotos"),
                        rs.getString("motor"),
                        rs.getInt("anio"),
                        rs.getInt("puntos_totales"),
                        rs.getInt("victorias")
                );
            }

        } catch (SQLException e) {
            System.err.println("Ocurrió un error al obtener el equipo por ID: " + e.getMessage());
        }

        return equipo;
    }

}