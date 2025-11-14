package com.patrones.entity;

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

        // 🔹 Ahora usamos el patrón Builder
        Circuito circuito = new Circuito.Builder()
                .id(1)
                .nombre("Circuito de Bahréin")
                .pais("Bahréin")
                .longitudKm("5.412")
                .curvas("15")
                .fecha(fecha)
                .nombreGp("Gran Premio de Bahréin 2024")
                .anio(2024)
                .build();

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

        Circuito circuito = new Circuito.Builder()
                .id(20)
                .nombre("Autódromo Hermanos Rodríguez")
                .pais("México")
                .longitudKm("4.421")
                .curvas("16")
                .fecha(fecha)
                .nombreGp("Gran Premio de México 2024")
                .anio(2024)
                .build();

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

        // 🔹 Versión básica usando solo campos mínimos
        Circuito circuito = new Circuito.Builder()
                .id(10)
                .nombre("Circuit de Barcelona-Catalunya")
                .pais("España")
                .fecha(fecha)
                .build();

        assertEquals(10, circuito.getId());
        assertEquals("Circuit de Barcelona-Catalunya", circuito.getNombre());
        assertEquals("España", circuito.getPais());
        assertEquals(fecha, circuito.getFecha());
    }

    @Test
    public void testToString() {
        Date fecha = convertirFecha("2024-07-07");

        Circuito circuito = new Circuito.Builder()
                .id(12)
                .nombre("Silverstone")
                .pais("Reino Unido")
                .fecha(fecha)
                .build();

        String texto = circuito.toString();
        assertTrue(texto.contains("Silverstone"));
        assertTrue(texto.contains("Reino Unido"));
    }
}