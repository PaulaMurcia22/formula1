package com.patrones.entity;

import com.patrones.entity.Circuito;
import org.junit.Test;
import static org.junit.Assert.*;
import java.text.SimpleDateFormat;
import java.util.Date;

public class CircuitoTest {

    // Método auxiliar para convertir String a Date
    private Date convertirFecha(String fechaStr) {
        try {
            return new SimpleDateFormat("yyyy-MM-dd").parse(fechaStr);
        } catch (Exception e) {
            return null;
        }
    }

    @Test
    public void testCrearCircuitoBahrain() {
        Date fecha = convertirFecha("2024-03-02");
        Circuito circuito = new Circuito(
                1,
                "Circuito de Bahréin",
                "Bahréin",
                "5.412",
                "15",
                fecha,
                "Gran Premio de Bahréin 2024",
                2024
        );

        assertEquals(1, circuito.getId());
        assertEquals("Circuito de Bahréin", circuito.getNombre());
        assertEquals("Bahréin", circuito.getPais());
        assertEquals("5.412", circuito.getLongitudKm());
        assertEquals("15", circuito.getCurvas());
        assertEquals("Gran Premio de Bahréin 2024", circuito.getNombreGp());
        assertEquals(2024, circuito.getAnio());
        assertEquals(fecha, circuito.getFecha());
    }

    @Test
    public void testCrearCircuitoMexico() {
        Date fecha = convertirFecha("2024-10-27");
        Circuito circuito = new Circuito(
                20,
                "Autódromo Hermanos Rodríguez",
                "México",
                "4.421",
                "16",
                fecha,
                "Gran Premio de México 2024",
                2024
        );

        assertEquals(20, circuito.getId());
        assertEquals("Autódromo Hermanos Rodríguez", circuito.getNombre());
        assertEquals("México", circuito.getPais());
        assertEquals("4.421", circuito.getLongitudKm());
        assertEquals("16", circuito.getCurvas());
        assertEquals("Gran Premio de México 2024", circuito.getNombreGp());
    }

    @Test
    public void testCrearCircuitoSimple() {
        Date fecha = convertirFecha("2024-06-23");
        Circuito circuito = new Circuito(10, "Circuit de Barcelona-Catalunya", "España", fecha);

        assertEquals(10, circuito.getId());
        assertEquals("Circuit de Barcelona-Catalunya", circuito.getNombre());
        assertEquals("España", circuito.getPais());
        assertEquals(fecha, circuito.getFecha());
    }

    @Test
    public void testToString() {
        Date fecha = convertirFecha("2024-07-07");
        Circuito circuito = new Circuito(12, "Silverstone", "Reino Unido", fecha);

        String texto = circuito.toString();
        assertTrue(texto.contains("Silverstone"));
        assertTrue(texto.contains("Reino Unido"));
    }
}