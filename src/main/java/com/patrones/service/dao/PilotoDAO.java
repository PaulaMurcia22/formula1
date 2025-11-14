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

    //FACTORY METHODS
    // Factory Method para pilotos de lista (versión básica)
    protected Piloto crearPilotoLista(int id, String nombre, String apellido, String equipo) {
        return new Piloto(id, nombre, apellido, equipo);
    }

    // Factory Method para piloto detalle (versión completa)
    protected Piloto crearPilotoDetalle(
            int id, String nombre, String apellido,
            String nacionalidad, String equipo,
            int numero, int anio, int puntos, int victorias
    ) {
        return new Piloto(
                id, nombre, apellido,
                nacionalidad, equipo,
                numero, anio, puntos, victorias
        );
    }

    // Factory Method para piloto por nombre (sin puntos/victorias)
    protected Piloto crearPilotoPorNombre(
            int id, String nombre, String apellido,
            String nacionalidad, String equipo,
            int numero, int anio
    ) {
        return new Piloto(
                id, nombre, apellido,
                nacionalidad, equipo,
                numero, anio
        );
    }

    //MÉTODOS DEL DAO
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
                // Aplicación de Factory Method
                Piloto piloto = crearPilotoLista(
                        rs.getInt("id_piloto"),
                        rs.getString("nombre"),
                        rs.getString("apellido"),
                        rs.getString("nombre_equipo")
                );
                pilotos.add(piloto);
            }

        } catch (SQLException e) {
            System.err.println("Ocurrió un error al obtener los pilotos: " + e.getMessage());
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
                piloto = crearPilotoDetalle(
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
            System.err.println("Ocurrió un error al obtener el piloto por ID: " + e.getMessage());
        }

        return piloto;
    }

    @Override
    public Piloto obtenerPilotoPorNombre(String nombrePiloto, int anio) {
        Piloto piloto = null;

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

            stmt.setString(1, nombrePiloto);
            stmt.setInt(2, anio);

            ResultSet rs = stmt.executeQuery();

            if (rs.next()) {
                piloto = crearPilotoPorNombre(
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
            System.err.println("Ocurrió un error al obtener piloto por nombre: " + e.getMessage());
        }
        return piloto;
    }
}