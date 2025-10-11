package com.patrones.entity;

import com.patrones.entity.Equipo;
import org.junit.Test;
import static org.junit.Assert.*;

public class EquipoTest {

    @Test
    public void testCrearEquipoRedBull() {
        Equipo equipo = new Equipo(
                1,
                "Red Bull Racing Honda RBPT",
                "Austria",
                "Max Verstappen y Sergio Pérez",
                "Honda RBPT",
                2024,
                860,
                21
        );

        assertEquals(1, equipo.getId());
        assertEquals("Red Bull Racing Honda RBPT", equipo.getNombre());
        assertEquals("Austria", equipo.getPais());
        assertEquals("Honda RBPT", equipo.getMotor());
        assertEquals(2024, equipo.getAnio());
        assertEquals(860, equipo.getPuntosTotales());
        assertEquals(21, equipo.getVictorias());
    }

    @Test
    public void testCrearEquipoFerrari() {
        Equipo equipo = new Equipo(
                3,
                "Ferrari",
                "Italia",
                "Charles Leclerc y Carlos Sainz",
                "Ferrari",
                2024,
                530,
                5
        );

        assertEquals(3, equipo.getId());
        assertEquals("Ferrari", equipo.getNombre());
        assertEquals("Italia", equipo.getPais());
        assertEquals("Ferrari", equipo.getMotor());
        assertEquals("Charles Leclerc y Carlos Sainz", equipo.getPilotos());
        assertEquals(2024, equipo.getAnio());
        assertEquals(530, equipo.getPuntosTotales());
        assertEquals(5, equipo.getVictorias());
    }

    @Test
    public void testCrearEquipoMercedes() {
        Equipo equipo = new Equipo(
                4,
                "Mercedes",
                "Alemania",
                "Lewis Hamilton y George Russell",
                "Mercedes",
                2024,
                480,
                4
        );

        assertEquals(4, equipo.getId());
        assertEquals("Mercedes", equipo.getNombre());
        assertEquals("Alemania", equipo.getPais());
        assertEquals("Mercedes", equipo.getMotor());
        assertEquals(480, equipo.getPuntosTotales());
        assertEquals(4, equipo.getVictorias());
    }

    @Test
    public void testConstructorReducido() {
        Equipo equipo = new Equipo(2, "McLaren Mercedes", "Lando Norris y Oscar Piastri");

        assertEquals(2, equipo.getId());
        assertEquals("McLaren Mercedes", equipo.getNombre());
        assertEquals("Lando Norris y Oscar Piastri", equipo.getPilotos());
        assertNull(equipo.getPais());
        assertEquals(0, equipo.getAnio());
    }

    @Test
    public void testToString() {
        Equipo equipo = new Equipo(5, "Aston Martin Aramco Mercedes", "Fernando Alonso y Lance Stroll");

        String texto = equipo.toString();
        assertTrue(texto.contains("Aston Martin Aramco Mercedes"));
        assertTrue(texto.contains("Fernando Alonso"));
        assertTrue(texto.startsWith("5 -"));
    }
}
