//package com.patrones.service.dao;
//
//import com.patrones.entity.Carrera;
//import com.patrones.service.ConnectionBD;
//import org.junit.BeforeClass;
//import org.junit.Test;
//
//import java.sql.Connection;
//import java.sql.Statement;
//import java.util.List;
//
//import static org.junit.Assert.*;
//
//public class CarreraDAOTest {
//
//    private static CarreraDAO carreraDAO;
//
//    @BeforeClass
//    public static void setUpBeforeClass() throws Exception {
//        System.out.println("⚙️ Configurando base de datos H2 en memoria para pruebas...");
//
//        Connection connection = ConnectionBD.getConnection();
//        assertNotNull("La conexión no debería ser nula", connection);
//
//        try (Statement stmt = connection.createStatement()) {
//            stmt.execute("CREATE TABLE IF NOT EXISTS circuito (id_circuito INT PRIMARY KEY, nombre VARCHAR(50));");
//            stmt.execute("CREATE TABLE IF NOT EXISTS temporada (id_temporada INT PRIMARY KEY, anio INT);");
//            stmt.execute("CREATE TABLE IF NOT EXISTS carrera (" +
//                    "id_carrera INT PRIMARY KEY, " +
//                    "nombre_gp VARCHAR(50), " +
//                    "fecha VARCHAR(20), " +
//                    "num_vueltas INT, " +
//                    "id_circuito INT, " +
//                    "id_temporada INT, " +
//                    "FOREIGN KEY (id_circuito) REFERENCES circuito(id_circuito), " +
//                    "FOREIGN KEY (id_temporada) REFERENCES temporada(id_temporada));");
//
//            stmt.execute("INSERT INTO circuito VALUES (1, 'Monza');");
//            stmt.execute("INSERT INTO temporada VALUES (1, 2024);");
//            stmt.execute("INSERT INTO carrera VALUES (1, 'Gran Premio de Italia', '2024-09-10', 53, 1, 1);");
//            stmt.execute("INSERT INTO carrera VALUES (2, 'Gran Premio de España', '2024-05-15', 66, 1, 1);");
//        }
//
//        carreraDAO = new CarreraDAO();
//    }
//
//    @Test
//    public void testObtenerCarrerasPorTemporada() {
//        List<Carrera> carreras = carreraDAO.obtenerCarrerasPorTemporada(2024);
//        assertNotNull("La lista no debe ser nula", carreras);
//        assertFalse("Debe haber carreras en la lista", carreras.isEmpty());
//        assertEquals("Debería haber 2 carreras registradas", 2, carreras.size());
//    }
//
//    @Test
//    public void testObtenerCarreraPorId() {
//        Carrera carrera = carreraDAO.obtenerCarrera(1, 2024);
//        assertNotNull("La carrera no debería ser nula", carrera);
//        assertEquals("El nombre del GP no coincide", "Gran Premio de Italia", carrera.getNombreGp());
//    }
//
//    @Test
//    public void testObtenerCarreraPorNombre() {
//        Carrera carrera = carreraDAO.obtenerCarreraPorNombre("Gran Premio de España", 2024);
//        assertNotNull("La carrera debería existir", carrera);
////        assertEquals("El ID de la carrera debería ser 2", 2, carrera.getIdCarrera());
//    }
//
//    @Test
//    public void testObtenerCarreraInexistente() {
//        Carrera carrera = carreraDAO.obtenerCarrera(999, 2024);
//        assertNull("No debería existir una carrera con ese ID", carrera);
//    }
//}
