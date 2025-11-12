package com.patrones.service.dao;

import com.patrones.Interface.DAO.IConectionProvider;
import com.patrones.Interface.DAO.IEquipoDAO;
import com.patrones.Interface.DAO.IPosicionEquipoDAO;
import com.patrones.entity.PosicionEquipo;
import com.patrones.service.ConnectionBD;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class PosicionEquipoDAO implements IPosicionEquipoDAO {
    private final IConectionProvider conexionBD;

    public PosicionEquipoDAO (IConectionProvider conexionBD) {
        this.conexionBD =conexionBD ;
    }

    @Override
    public List<PosicionEquipo> obtenerPosicionesEquiposTemporada(int anio) {
        // Lista donde se guardarán las posiciones de los equipos
        List<PosicionEquipo> posiciones = new ArrayList<>();

        // Consulta SQL que obtiene los equipos con sus pilotos y puntos totales en una temporada
        String sql = """
        SELECT
            e.id_equipo,
            e.nombre,
            GROUP_CONCAT(DISTINCT CONCAT(p.nombre, ' ', p.apellido) SEPARATOR ', ') AS pilotos,
            COALESCE(SUM(pt.puntos_totales), 0) AS puntos_totales
        FROM piloto_temporada pt
        JOIN equipo e ON pt.id_equipo = e.id_equipo
        JOIN piloto p ON pt.id_piloto = p.id_piloto
        JOIN temporada t ON pt.id_temporada = t.id_temporada
        WHERE t.anio = ?
        GROUP BY e.id_equipo, e.nombre
        ORDER BY puntos_totales DESC;               
    """;

        // try-with-resources para cerrar la conexión y el PreparedStatement automáticamente
        try (Connection conn = conexionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            // Se asigna el año de la temporada al parámetro de la consulta
            stmt.setInt(1, anio);

            // Ejecuta la consulta
            ResultSet rs = stmt.executeQuery();

            int posicion = 0; // contador de posiciones (1°, 2°, 3°, etc.)
            while (rs.next()) {
                posicion++;

                // Obtiene los datos de cada equipo
                int idEquipo = rs.getInt("id_equipo");
                String nombre = rs.getString("nombre");
                String pilotos = rs.getString("pilotos");
                int puntos = rs.getInt("puntos_totales");

                // Asigna un ícono o categoría según la posición del equipo
                String categoria;
                if (posicion == 1) {
                    categoria = "\uD83E\uDD47"; // 🥇 primer lugar
                } else if (posicion == 2) {
                    categoria = "\uD83E\uDD48"; // 🥈 segundo lugar
                } else if (posicion == 3) {
                    categoria = "\uD83E\uDD49"; // 🥉 tercer lugar
                } else {
                    categoria = "\uD83D\uDD3B"; // 🔻 demás posiciones
                }

                // Crea un objeto con los datos del equipo
                PosicionEquipo posicionEquipo = new PosicionEquipo(
                        idEquipo,
                        nombre,
                        pilotos,
                        puntos,
                        categoria
                );

                // Agrega el equipo a la lista de posiciones
                posiciones.add(posicionEquipo);
            }

        } catch (SQLException e) {
            // Si ocurre un error con la base de datos, se muestra el mensaje en consola
            System.err.println("Ocurrió un error al obtener las posiciones de los equipos: " + e.getMessage());
        }

        // Devuelve la lista de equipos ordenada por puntos
        return posiciones;
    }
}
