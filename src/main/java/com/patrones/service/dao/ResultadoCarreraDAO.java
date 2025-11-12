package com.patrones.service.dao;

import com.patrones.Interface.DAO.IConectionProvider;
import com.patrones.Interface.DAO.IResultadoCarreraDAO;
import com.patrones.entity.ResultadoCarrera;
import com.patrones.service.ConnectionBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

public class ResultadoCarreraDAO implements IResultadoCarreraDAO {
    private  final IConectionProvider conexionBD;

    public ResultadoCarreraDAO (IConectionProvider conexionBD) {
        this.conexionBD = conexionBD;
    }

    // Metodo para insertar un nuevo resultado de carrera en la base de datos
    @Override
    public void InsertarResultadosCarrera(ResultadoCarrera resultadoCarrera) {
        // Consulta SQL para insertar los datos en la tabla resultado_carrera
        String sql = """
            INSERT INTO resultado_carrera (id_carrera, id_piloto_temporada, posicion_final, estado, puntos_obtenidos)
            VALUES (?, ?, ?, ?, ?);
        """;

        // Se usa try-with-resources para cerrar automáticamente la conexión y el PreparedStatement
        try (Connection conn = conexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            // Asigna los valores del objeto resultadoCarrera a los parámetros del SQL
            stmt.setInt(1, resultadoCarrera.getId_carrera());
            stmt.setInt(2, resultadoCarrera.getId_piloto_temporada());
            stmt.setInt(3, resultadoCarrera.getPosicion_final());
            stmt.setString(4, resultadoCarrera.getEstado());
            stmt.setInt(5, resultadoCarrera.getPuntosObtenidos());

            // Ejecuta la instrucción INSERT
            stmt.executeUpdate();
            System.out.println("Resultado de carrera insertado correctamente.");

        } catch (SQLException e) {
            // Si ocurre un error en la base de datos, se muestra el mensaje
            System.err.println("Error al insertar el resultado de carrera: " + e.getMessage());
        }
    }

    // Metodo para verificar si ya existe un resultado para un piloto en una carrera
    @Override
    public boolean existeResultado(int idPilotoTemporada, int idCarrera) {
        String sql = "SELECT COUNT(*) FROM resultado_carrera WHERE id_piloto_temporada = ? AND id_carrera = ?";

        try (Connection conn = conexionBD.getConnection();
             PreparedStatement ps = conn.prepareStatement(sql)) {

            // Asigna los valores a los parámetros del SQL
            ps.setInt(1, idPilotoTemporada);
            ps.setInt(2, idCarrera);

            // Ejecuta la consulta
            ResultSet rs = ps.executeQuery();

            // Si hay al menos un registro, significa que ya existe el resultado
            if (rs.next()) {
                int count = rs.getInt(1);
                return count > 0;
            }
        } catch (SQLException e) {
            // Muestra el error si algo falla en la consulta
            e.printStackTrace();
        }

        // Retorna false si no existe el resultado o hubo un error
        return false;
    }

}
