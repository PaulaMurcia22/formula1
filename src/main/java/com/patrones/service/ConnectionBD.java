package com.patrones.service;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.io.InputStream;
import java.util.Properties;

public class ConnectionBD {

    private static Connection connection;

    public static Connection getConnection() {
        try {
            if (connection == null || connection.isClosed()) {

                try (InputStream input = ConnectionBD.class.getClassLoader()
                        .getResourceAsStream("application.properties")) {

                    if (input == null) {
                        throw new RuntimeException("No se encontró el archivo application.properties");
                    }

                    Properties props = new Properties();
                    props.load(input);

                    String url = props.getProperty("db.url");
                    String user = props.getProperty("db.user");
                    String password = props.getProperty("db.password");

                    connection = DriverManager.getConnection(url, user, password);
                }
            }
        } catch (SQLException e) {
            System.err.println("Error al conectar a la base de datos: " + e.getMessage());
        } catch (Exception e) {
            System.err.println("Error al cargar configuración: " + e.getMessage());
        }

        return connection;
    }

}
