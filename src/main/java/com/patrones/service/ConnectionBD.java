package com.patrones.service;

import com.patrones.Interface.DAO.IConectionProvider;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;
import java.io.InputStream;
import java.util.Properties;

public class ConnectionBD implements IConectionProvider {


    // Variable estática para guardar la conexión a la base de datos
    private Connection connection;

    // Metodo que devuelve la conexión activa a la base de datos
    @Override
    public  Connection getConnection() {
        try {
            // Si no hay conexión o está cerrada, se crea una nueva
            if (connection == null || connection.isClosed()) {

                // Carga el archivo application.properties con los datos de conexión
                try (InputStream input = ConnectionBD.class.getClassLoader()
                        .getResourceAsStream("application.properties")) {

                    // Si no se encuentra el archivo, lanza un error
                    if (input == null) {
                        throw new RuntimeException("No se encontró el archivo application.properties");
                    }

                    // Carga las propiedades desde el archivo
                    Properties props = new Properties();
                    props.load(input);

                    // Obtiene los valores de URL, usuario y contraseña de la base de datos
                    String url = props.getProperty("db.url");
                    String user = props.getProperty("db.user");
                    String password = props.getProperty("db.password");

                    // Crea la conexión usando los datos del archivo
                    connection = DriverManager.getConnection(url, user, password);
                }
            }
        } catch (SQLException e) {
            // Error al intentar conectar con la base de datos
            System.err.println("Error al conectar a la base de datos: " + e.getMessage());
        } catch (Exception e) {
            // Error al cargar el archivo o sus propiedades
            System.err.println("Error al cargar configuración: " + e.getMessage());
        }

        // Devuelve la conexión (ya existente o recién creada)
        return connection;
    }

}
