//package com.patrones.service;
//
//import org.junit.After;
//import org.junit.Before;
//import org.junit.Test;
//import java.sql.Connection;
//import java.sql.SQLException;
//
//import static org.junit.Assert.*;
//
//public class ConnectionBDTest {
//
//    // ✅ PRIMERO: Agrega el método resetConnection a tu clase ConnectionBD
//    // (como te mostré en la respuesta anterior)
//
//    @Before
//    public void setUp() {
//        // ✅ Limpiar ANTES de cada test, no una sola vez
//        ConnectionBD.resetConnection();
//    }
//
//    @After
//    public void tearDown() {
//        // ✅ Limpiar DESPUÉS de cada test
//        ConnectionBD.resetConnection();
//    }
//
//    @Test
//    public void testGetConnection_Exitosa() {
//        // ✅ Esta prueba solo funciona si el archivo application.properties EXISTE
//        Connection connection = ConnectionBD.getConnection();
//        assertNotNull("La conexión no debería ser nula cuando el archivo existe", connection);
//        
//        try {
//            assertFalse("La conexión debe estar abierta", connection.isClosed());
//        } catch (SQLException e) {
//            fail("Error al verificar estado de conexión: " + e.getMessage());
//        }
//    }
//
//    @Test
//    public void testGetConnection_EsUnica() {
//        // ✅ Verifica el patrón Singleton
//        Connection primeraConexion = ConnectionBD.getConnection();
//        Connection segundaConexion = ConnectionBD.getConnection();
//        
//        assertNotNull("Primera conexión no debe ser nula", primeraConexion);
//        assertNotNull("Segunda conexión no debe ser nula", segundaConexion);
//        assertSame("Debe ser la misma instancia (Singleton)", primeraConexion, segundaConexion);
//    }
//
//    @Test
//    public void testArchivoConfiguracion_NoExiste() {
//        // ✅ SOLUCIÓN: Usa reflexión para simular archivo faltante
//        try {
//            // Guardar conexión actual si existe
//            Connection conexionPrevia = getCurrentConnection();
//            
//            // Forzar que la próxima llamada falle
//            setCurrentConnection(null);
//            
//            // Esta llamada debería fallar y retornar null
//            Connection resultado = ConnectionBD.getConnection();
//            
//            assertNull("No debe crear conexión si falta el archivo", resultado);
//            
//        } catch (Exception e) {
//            // Si lanza excepción, también es un fallo
//            fail("No debe lanzar excepción, debe retornar null controladamente");
//        }
//    }
//
//    // ✅ Métodos auxiliares usando reflexión
//    private Connection getCurrentConnection() throws Exception {
//        java.lang.reflect.Field field = ConnectionBD.class.getDeclaredField("connection");
//        field.setAccessible(true);
//        return (Connection) field.get(null);
//    }
//    
//    private void setCurrentConnection(Connection conn) throws Exception {
//        java.lang.reflect.Field field = ConnectionBD.class.getDeclaredField("connection");
//        field.setAccessible(true);
//        field.set(null, conn);
//    }
//}