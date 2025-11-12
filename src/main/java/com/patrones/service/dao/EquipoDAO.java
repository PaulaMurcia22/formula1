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

        public EquipoDAO (IConectionProvider conexionBD) {
            this.conexionBD = conexionBD;
        }

    // Obtiene la lista de equipos con sus pilotos en una temporada específica
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

            // Asigna el año como parámetro de búsqueda
            stmt.setInt(1, anio);
            ResultSet rs = stmt.executeQuery();

            // Recorre los resultados y crea objetos Equipo
            while (rs.next()) {
                Equipo equipo = new Equipo(
                        rs.getInt("id_equipo"),
                        rs.getString("nombre"),
                        rs.getString("pilotos")
                );
                equipos.add(equipo);
            }

        } catch (SQLException e) {
            // Si ocurre un error en la consulta o conexión
            System.err.println("Ocurrió un error al obtener los equipos: " + e.getMessage());
        }

        // Devuelve la lista de equipos encontrados
        return equipos;
    }

    // Obtiene la información detallada de un equipo según su ID y año
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

            // Se asignan los parámetros de búsqueda
            stmt.setInt(1, idEquipo);
            stmt.setInt(2, anio);
            ResultSet rs = stmt.executeQuery();

            // Si el equipo existe, se crea el objeto con su información
            if (rs.next()) {
                equipo = new Equipo(
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
            // Si ocurre un error al ejecutar la consulta
            System.err.println("Ocurrió un error al obtener el equipo por ID: " + e.getMessage());
        }

        // Retorna el equipo encontrado o null si no existe
        return equipo;
    }

}
