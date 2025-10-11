package com.patrones.entity;

import com.patrones.entity.Carrera;
import org.junit.Test;
import static org.junit.Assert.*;

public class CarreraTest {

    @Test
    public void testCrearCarrera() {
        // Datos reales de la base de datos: id=20 corresponde al GP de México 2024
        Carrera carrera = new Carrera(20, "Gran Premio de México 2024", "2024-10-27");
        carrera.setCircuito("Autódromo Hermanos Rodríguez");

        assertEquals(20, carrera.getId());
        assertEquals("Gran Premio de México 2024", carrera.getNombreGp());
        assertEquals("Autódromo Hermanos Rodríguez", carrera.getCircuito());
    }

    @Test
    public void testSetNombre() {
        // Datos reales: id=10 corresponde al GP de España 2024
        Carrera carrera = new Carrera(10, "Gran Premio de España 2024", "2024-06-23");
        carrera.setNombreGp("Gran Premio de Barcelona-Cataluña 2024");

        assertEquals("Gran Premio de Barcelona-Cataluña 2024", carrera.getNombreGp());
    }

    @Test
    public void testCambiarFecha() {
        // Datos reales: id=3 corresponde al GP de Australia 2024
        Carrera carrera = new Carrera(3, "Gran Premio de Australia 2024", "2024-03-24");
        carrera.setFecha("2024-03-25");

        assertEquals("2024-03-25", carrera.getFecha());
    }

    @Test
    public void testCircuitoAsociado() {
        // Datos reales: id=1 corresponde al GP de Bahréin 2024
        Carrera carrera = new Carrera(1, "Gran Premio de Bahréin 2024", "2024-03-02");
        carrera.setCircuito("Sakhir International Circuit");

        assertEquals("Sakhir International Circuit", carrera.getCircuito());
    }
}
