package com.patrones.service.dao;

import com.patrones.entity.ResultadoCarrera;
import com.patrones.service.ConnectionBD;

import java.sql.Connection;
import java.sql.PreparedStatement;

import java.sql.SQLException;

public class ResultadoCarreraDAO {
    String sql = """
            Insert into resultado_carrera (id_resultado,id_carrera,id_piloto_temporada,posicion_final,estado,puntos_obtenidos) VALUES(?,?,?,?,?,?);
        """;

    public void Insertarresultado(ResultadoCarrera resultado ){

        try (Connection conn = ConnectionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)){
            stmt.setInt(1,resultado.getId_resultado());
            stmt.setInt(2,resultado.getId_carrera());
            stmt.setInt(3,resultado.getId_piloto_temporada());
            stmt.setInt(4,resultado.getPosicion_final());
            stmt.setString(5,resultado.getEstado());
            stmt.setInt(6,resultado.getPuntos_obtenidos());
            stmt.executeUpdate();

        }catch (SQLException e) {
            System.err.println("Ocurrio un error al insertar resultado de la carrera: " + e.getMessage());
        }
        }
    }


