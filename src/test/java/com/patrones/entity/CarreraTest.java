package com.patrones.service.dao;

import com.patrones.Interface.DAO.IConectionProvider;
import com.patrones.entity.Carrera;
import com.patrones.service.ConnectionBD;
import org.junit.Test;
import java.util.List;
import static org.junit.Assert.*;


public class CarreraTest {
    private final IConectionProvider conexionBD = new ConnectionBD();
    private final CarreraDAO carreraDAO = new CarreraDAO(conexionBD);


    @Test // Validar que se obtenga la lista de carreras desde la base de datos
    public void testObtenerCarrerasPorTemporada() {
        List<Carrera> carreras = carreraDAO.obtenerCarrerasPorTemporada(2024);
        assertNotNull("La lista de carreras no debe ser nula", carreras);
        assertTrue("Debe haber al menos una carrera en la temporada 2024", !carreras.isEmpty());

        // Se imprime para verificar visualmente los resultados
        carreras.forEach(c -> System.out.println(c.toString()));
    }

    @Test //valida que se obtenga una carrera consultando por su id
    public void testObtenerCarreraPorId() {
        Carrera carrera = carreraDAO.obtenerCarrera(1, 2024);
        assertNotNull("La carrera con ID 1 debe existir para el año 2024", carrera);

        System.out.println("Carrera encontrada: " + carrera);
        assertEquals(1, carrera.getId());
        assertEquals(2024, carrera.getAnio());
    }


    @Test //valida que se obtenga una carrera consultando por su nombre
    public void testObtenerCarreraPorNombre() {
        Carrera carrera = carreraDAO.obtenerCarreraPorNombre("Gran Premio de México", 2024);
        assertNotNull("Debe existir una carrera llamada 'Gran Premio de México' en 2024", carrera);

        System.out.println("Carrera encontrada por nombre: " + carrera.getNombreGp());
        assertTrue(carrera.getNombreGp().toLowerCase().contains("méxico"));
    }


    @Test //valida la visualizacion de resultados de una carrera
    public void testMostrarResultadosCarrera() {
        try {
            carreraDAO.mostrarResultadosCarrera(1);
        } catch (Exception e) {
            fail("No se debería lanzar excepción al mostrar los resultados de una carrera: " + e.getMessage());
        }
    }
}