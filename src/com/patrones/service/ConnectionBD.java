package com.patrones.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class ConnectionBD {
    private static final String URL = "jdbc:mysql://localhost:3306/formula1";
    private static final String USER = "root";
    private static final String PASSWORD = "root";
    private static Connection connection;

    public static Connection getConnection() {
        try {
            if (connection == null || connection.isClosed()) {
                connection = DriverManager.getConnection(URL, USER, PASSWORD);
                System.out.println("Se realizo la conexión con la base de datos.");
            }
        } catch (SQLException e) {
            System.err.println("Ocurrio un error al conectar a la base de datos: " + e.getMessage());
        }
        return connection;
    }

    public static void closeConnection() {
        try {
            if (connection != null && !connection.isClosed()) {
                connection.close();
                System.out.println("La conexión se cerro correctamente.");
            }
        } catch (SQLException e) {
            System.err.println("Ocurrio un error al cerrar la conexión: " + e.getMessage());
        }
    }
}
