package com.patrones.service.dao;

import com.patrones.Interface.DAO.IConectionProvider;
import com.patrones.Interface.DAO.IPosicionPilotoDAO;
import com.patrones.entity.PosicionPiloto;
import com.patrones.service.ConnectionBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PosicionPilotoDAO implements IPosicionPilotoDAO {
    private final IConectionProvider conexionBD;

    public PosicionPilotoDAO (IConectionProvider conexionBD) {
        this.conexionBD = conexionBD;
    }

    // Metodo que obtiene la lista de posiciones de los pilotos en una temporada específica
   @Override
    public List<PosicionPiloto> obtenerPosicionesPilotosTemporada(int anio) {
        // Lista donde se guardarán las posiciones de los pilotos
        List<PosicionPiloto> posiciones = new ArrayList<>();

        // Consulta SQL que obtiene los datos del piloto, su equipo y los puntos totales
        String sql = """
            SELECT
                p.id_piloto,
                p.nombre,
                p.apellido,
                e.nombre AS nombre_equipo,
                pt.puntos_totales
            FROM piloto_temporada pt
            JOIN piloto p ON pt.id_piloto = p.id_piloto
            JOIN equipo e ON pt.id_equipo = e.id_equipo
            JOIN temporada t ON pt.id_temporada = t.id_temporada
            WHERE t.anio = ?
            ORDER BY puntos_totales DESC;
        """;

        // Se usa try-with-resources para cerrar la conexión y el PreparedStatement automáticamente
        try (Connection conn = conexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            // Asigna el año (temporada) al parámetro de la consulta
            stmt.setInt(1, anio);

            // Ejecuta la consulta
            ResultSet rs = stmt.executeQuery();

            int posicion = 0; // contador para la posición en la tabla
            while (rs.next()) {
                posicion++;

                // Obtiene los valores de cada columna del resultado
                int idPiloto = rs.getInt("id_piloto");
                String nombre = rs.getString("nombre");
                String apellido = rs.getString("apellido");
                String equipo = rs.getString("nombre_equipo");
                int puntos = rs.getInt("puntos_totales");

                // Determina el ícono o "categoría" según la posición del piloto
                String categoria;
                if (posicion == 1) {
                    categoria = "\uD83E\uDD47"; // Primer lugar
                } else if (posicion == 2) {
                    categoria = "\uD83E\uDD48"; // Segundo lugar
                } else if (posicion == 3) {
                    categoria = "\uD83E\uDD49"; // Tercer lugar
                } else if (posicion <= 10) {
                    categoria = "\uD83D\uDD1D"; // Top 10
                } else {
                    categoria = "\uD83D\uDD3B"; // Resto de posiciones
                }

                // Crea un objeto con la información del piloto
                PosicionPiloto posicionPiloto = new PosicionPiloto(
                        idPiloto,
                        nombre,
                        apellido,
                        equipo,
                        puntos,
                        categoria
                );

                // Lo agrega a la lista
                posiciones.add(posicionPiloto);
            }

        } catch (SQLException e) {
            // Si ocurre un error con la base de datos, se muestra el mensaje
            System.err.println("Ocurrió un error al obtener las posiciones de los pilotos: " + e.getMessage());
        }

        // Devuelve la lista de posiciones con los pilotos ordenados por puntos
        return posiciones;
    }
}
