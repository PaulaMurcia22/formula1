package com.patrones.service.dao;

import com.patrones.Interface.DAO.IPilotoDAO;
import com.patrones.Interface.DAO.IConectionProvider;
import com.patrones.entity.Piloto;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class PilotoDAO implements IPilotoDAO {
    private final IConectionProvider conexionBD;

    public PilotoDAO(IConectionProvider conexionBD) {
        this.conexionBD = conexionBD;
    }

    @Override
    public List<Piloto> obtenerPilotosPorTemporada(int anio) {
        List<Piloto> pilotos = new ArrayList<>();

        String sql = """
            SELECT 
                p.id_piloto,
                p.nombre,
                p.apellido,
                e.nombre AS nombre_equipo
            FROM piloto p
            JOIN piloto_temporada pt ON p.id_piloto = pt.id_piloto
            JOIN equipo e ON pt.id_equipo = e.id_equipo
            JOIN temporada t ON pt.id_temporada = t.id_temporada
            WHERE t.anio = ?
            ORDER BY p.id_piloto ASC;
        """;

        try (Connection conn = conexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, anio);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Piloto piloto = new Piloto(
                        rs.getInt("id_piloto"),
                        rs.getString("nombre"),
                        rs.getString("apellido"),
                        rs.getString("nombre_equipo")
                );
                pilotos.add(piloto);
            }

        } catch (SQLException e) {
            System.err.println("Ocurrio un error al obtener los pilotos: " + e.getMessage());
        }

        return pilotos;
    }

    @Override
    public Piloto obtenerPiloto(int idPiloto, int anio) {
        Piloto piloto = null;

        String sql = """
        SELECT 
            p.id_piloto,
            p.nombre,
            p.apellido,
            p.nacionalidad,
            p.numero,
            e.nombre AS nombre_equipo,
            t.anio,
            pt.puntos_totales,
            pt.victorias
        FROM piloto p
        JOIN piloto_temporada pt ON p.id_piloto = pt.id_piloto
        JOIN equipo e ON pt.id_equipo = e.id_equipo
        JOIN temporada t ON pt.id_temporada = t.id_temporada
        WHERE p.id_piloto = ?
        AND t.anio = ?;
    """;

        try (Connection conn = conexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, idPiloto);
            stmt.setInt(2, anio);
            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                piloto = new Piloto(
                        rs.getInt("id_piloto"),
                        rs.getString("nombre"),
                        rs.getString("apellido"),
                        rs.getString("nacionalidad"),
                        rs.getString("nombre_equipo"),
                        rs.getInt("numero"),
                        rs.getInt("anio"),
                        rs.getInt("puntos_totales"),
                        rs.getInt("victorias")
                );
            }

        } catch (SQLException e) {
            System.err.println("Ocurrio un error al obtener el piloto por ID: " + e.getMessage());
        }

        return piloto;
    }

    @Override
    public Piloto obtenerPilotoPorNombre(String nombrePiloto, int anio) {
        Piloto piloto = null; // Variable donde se guardará el piloto encontrado

        // Consulta SQL para obtener los datos del piloto según su nombre y año de temporada
        String sql = """
        SELECT
            p.id_piloto,
            p.nombre,
            p.apellido,
            p.nacionalidad,
            p.numero,
            e.nombre AS nombre_equipo,
            t.anio
        FROM piloto p
        JOIN piloto_temporada pt ON p.id_piloto = pt.id_piloto
        JOIN equipo e ON pt.id_equipo = e.id_equipo
        JOIN temporada t ON pt.id_temporada = t.id_temporada
        WHERE LOWER(p.nombre) = LOWER(?)
        AND t.anio = ?;
    """;

        try (Connection conn = conexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            // Se asignan los parámetros de búsqueda
            stmt.setString(1, nombrePiloto);
            stmt.setInt(2, anio);

            // Ejecuta la consulta
            ResultSet rs = stmt.executeQuery();

            // Si el piloto existe, se crea el objeto con sus datos
            if (rs.next()) {
                piloto = new Piloto(
                        rs.getInt("id_piloto"),
                        rs.getString("nombre"),
                        rs.getString("apellido"),
                        rs.getString("nacionalidad"),
                        rs.getString("nombre_equipo"),
                        rs.getInt("numero"),
                        rs.getInt("anio")
                );
            }

        } catch (SQLException e) {
            // Si ocurre un error en la conexión o consulta, se muestra el mensaje
            System.err.println("Ocurrió un error al obtener el piloto por nombre: " + e.getMessage());
        }

        // Retorna el piloto encontrado o null si no existe
        return piloto;
    }



}
