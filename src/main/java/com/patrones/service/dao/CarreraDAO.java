package com.patrones.service.dao;

import com.patrones.Interface.DAO.ICarreraDAO;
import com.patrones.Interface.DAO.IConectionProvider;
import com.patrones.entity.Carrera;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

public class CarreraDAO implements ICarreraDAO {

    private final IConectionProvider conexionBD;

    public CarreraDAO(IConectionProvider connectionProvider) {
        this.conexionBD = connectionProvider;
    }

    //FACTORY METHOD
    protected Carrera crearCarrera(
            int id,
            String nombreGp,
            String fecha,
            String circuito,
            int numVueltas,
            int anio
    ) {
        return new Carrera(id, nombreGp, fecha, circuito, numVueltas, anio);
    }

    //MÉTODOS DEL DAO
    @Override
    public List<Carrera> obtenerCarrerasPorTemporada(int anio) {
        List<Carrera> carreras = new ArrayList<>();

        String sql = """
            SELECT 
                c.id_carrera,
                c.nombre_gp,
                c.fecha,
                cir.nombre AS circuito,
                c.num_vueltas,
                t.anio
            FROM carrera c
            JOIN circuito cir ON c.id_circuito = cir.id_circuito
            JOIN temporada t ON c.id_temporada = t.id_temporada
            WHERE t.anio = ?
            ORDER BY c.fecha ASC;
        """;

        try (Connection conn = conexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            // Se pasa el año como parámetro
            stmt.setInt(1, anio);
            ResultSet rs = stmt.executeQuery();

            // Recorre los resultados y crea objetos Carrera
            while (rs.next()) {
                Carrera carrera = crearCarrera(
                        rs.getInt("id_carrera"),
                        rs.getString("nombre_gp"),
                        rs.getString("fecha"),
                        rs.getString("circuito"),
                        rs.getInt("num_vueltas"),
                        rs.getInt("anio")
                );
                carreras.add(carrera);
            }

        } catch (SQLException e) {
            System.err.println("Error al obtener las carreras: " + e.getMessage());
        }

        return carreras;
    }

    // Obtiene una carrera específica por su ID y año
    @Override
    public Carrera obtenerCarrera(int idCarrera, int anio) {
        Carrera carrera = null;

        String sql = """
            SELECT 
                c.id_carrera,
                c.nombre_gp,
                c.fecha,
                cir.nombre AS circuito,
                c.num_vueltas,
                t.anio
            FROM carrera c
            JOIN circuito cir ON c.id_circuito = cir.id_circuito
            JOIN temporada t ON c.id_temporada = t.id_temporada
            WHERE c.id_carrera = ? AND t.anio = ?;
        """;

        try (Connection conn = conexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            // Se establecen los parámetros de búsqueda
            stmt.setInt(1, idCarrera);
            stmt.setInt(2, anio);
            ResultSet rs = stmt.executeQuery();

            // Si se encuentra, se crea el objeto Carrera
            if (rs.next()) {
                carrera = crearCarrera(
                        rs.getInt("id_carrera"),
                        rs.getString("nombre_gp"),
                        rs.getString("fecha"),
                        rs.getString("circuito"),
                        rs.getInt("num_vueltas"),
                        rs.getInt("anio")
                );
            }

        } catch (SQLException e) {
            System.err.println("Error al obtener la carrera: " + e.getMessage());
        }

        return carrera;
    }

    // Muestra los resultados de una carrera con nombre, equipo, posición y puntos
    @Override
    public void mostrarResultadosCarrera(int idCarrera) {
        String sql = """
            SELECT DISTINCT
                p.nombre,
                p.apellido,
                e.nombre AS equipo,
                rc.posicion_final,
                CASE rc.posicion_final
                    WHEN 1 THEN 25
                    WHEN 2 THEN 18
                    WHEN 3 THEN 15
                    ELSE 0
                END AS puntos_obtenidos
            FROM resultado_carrera rc
            JOIN piloto_temporada pt ON rc.id_piloto_temporada = pt.id_piloto_temporada
            JOIN piloto p ON pt.id_piloto = p.id_piloto
            JOIN equipo e ON pt.id_equipo = e.id_equipo
            WHERE rc.id_carrera = ?
            ORDER BY rc.posicion_final ASC;
        """;

        try (Connection conn = conexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            // Se pasa el ID de la carrera
            stmt.setInt(1, idCarrera);
            ResultSet rs = stmt.executeQuery();

            // Se muestran los resultados con emojis según la posición
            while (rs.next()) {
                int posicion = rs.getInt("posicion_final");
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                String equipo = rs.getString("equipo");
                int puntos = rs.getInt("puntos_obtenidos");

                String emoji = switch (posicion) {
                    case 1 -> "\uD83E\uDD47"; // 🥇
                    case 2 -> "\uD83E\uDD48"; // 🥈
                    case 3 -> "\uD83E\uDD49"; // 🥉
                    default -> "\uD83D\uDD1D"; // 🔝
                };

                System.out.printf("%s %s %s | Equipo: %s | Puntos: %d%n",
                        emoji, nombre, apellido, equipo, puntos);
            }

        } catch (SQLException e) {
            System.err.println("Error al obtener resultados de la carrera: " + e.getMessage());
        }
    }

    // Obtiene una carrera por su nombre y año de temporada
    @Override
    public Carrera obtenerCarreraPorNombre(String nombreGp, int anio) {
        Carrera carrera = null;

        String sql = """
        SELECT 
            c.id_carrera,
            c.nombre_gp,
            c.fecha,
            cir.nombre AS circuito,
            c.num_vueltas,
            t.anio
        FROM carrera c
        JOIN circuito cir ON c.id_circuito = cir.id_circuito
        JOIN temporada t ON c.id_temporada = t.id_temporada
        WHERE LOWER(c.nombre_gp) = LOWER(?) 
        AND t.anio = ?;
        """;

        try (Connection conn = conexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            // Se establecen los parámetros de búsqueda
            stmt.setString(1, nombreGp);
            stmt.setInt(2, anio);

            ResultSet rs = stmt.executeQuery();

            // Si existe, se construye el objeto Carrera
            if (rs.next()) {
                carrera = crearCarrera(
                        rs.getInt("id_carrera"),
                        rs.getString("nombre_gp"),
                        rs.getString("fecha"),
                        rs.getString("circuito"),
                        rs.getInt("num_vueltas"),
                        rs.getInt("anio")
                );
            }

        } catch (SQLException e) {
            System.err.println("Error al obtener la carrera por nombre: " + e.getMessage());
        }

        return carrera;
    }

    @Override
    public List<Carrera> obtenerCarrerasPostCongelacion(int anio) {
        List<Carrera> carreras = new ArrayList<>();

        String sql = """
        SELECT 
            c.id_carrera, 
            c.nombre_gp, 
            c.fecha, 
            c.id_circuito,
            cir.nombre as nombre_circuito, 
            c.num_vueltas, 
            t.anio
        FROM carrera c
        JOIN circuito cir ON c.id_circuito = cir.id_circuito
        JOIN temporada t ON c.id_temporada = t.id_temporada
        WHERE t.anio = ?
        AND c.id_carrera IN (
            SELECT DISTINCT id_carrera
            FROM resultado_carrera
            WHERE estado = 'pendiente'
        )
        ORDER BY c.fecha ASC
        LIMIT 2;
        """;

        try (Connection conn = conexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, anio);
            ResultSet rs = stmt.executeQuery();

            while (rs.next()) {
                Carrera carrera = crearCarrera(
                        rs.getInt("id_carrera"),
                        rs.getString("nombre_gp"),
                        rs.getString("fecha"),
                        rs.getString("nombre_circuito"),
                        rs.getInt("num_vueltas"),
                        rs.getInt("anio")
                );
                carreras.add(carrera);
            }

        } catch (SQLException e) {
            System.err.println("Error al obtener las carreras: " + e.getMessage());
        }

        return carreras;
    }

    @Override
    public void actualizarEstadoPendienteATerminado(int idCarrera) {
        String sql = """
            UPDATE resultado_carrera 
            SET estado = 'terminado'
            WHERE id_carrera = ? 
            AND estado = 'pendiente';
        """;

        try (Connection conn = conexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, idCarrera);
            int filas = stmt.executeUpdate();

            System.out.println("Se actualizaron " + filas + " registros.");

        } catch (SQLException e) {
            System.err.println("Error al actualizar estado pendiente: " + e.getMessage());
        }
    }

    @Override
    public void eliminarResultadoExistente(int idPilotoTemporada, int idCarrera) {
        String sql = "DELETE FROM resultado_carrera WHERE id_piloto_temporada = ? AND id_carrera = ?";

        try (Connection conn = conexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, idPilotoTemporada);
            stmt.setInt(2, idCarrera);
            stmt.executeUpdate();

        } catch (SQLException e) {
            System.err.println("Error al eliminar resultado existente: " + e.getMessage());
        }
    }
}
