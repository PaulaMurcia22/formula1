package com.patrones.entity;

import com.patrones.entity.PosicionEquipo;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 * Pruebas unitarias para la clase PosicionEquipo.
 * Basadas en la tabla de posiciones reales de los equipos.
 */
public class PosicionEquipoTest {

    @Test
    public void testCrearPosicionEquipo_RedBullRacing() {
        // Red Bull Racing Honda RBPT
        PosicionEquipo equipo = new PosicionEquipo(
                1,
                "Red Bull Racing Honda RBPT",
                "Max Verstappen, Sergio Pérez",
                589, // 437 + 152
                "1° lugar"
        );

        assertEquals(1, equipo.getIdEquipo());
        assertEquals("Red Bull Racing Honda RBPT", equipo.getNombre());
        assertEquals("Max Verstappen, Sergio Pérez", equipo.getPilotos());
        assertEquals(589, equipo.getPuntosTotales());
        assertEquals("1° lugar", equipo.getCategoriaPosicion());
    }

    @Test
    public void testCrearPosicionEquipo_McLarenMercedes() {
        // McLaren Mercedes
        PosicionEquipo equipo = new PosicionEquipo(
                2,
                "McLaren Mercedes",
                "Lando Norris, Oscar Piastri",
                666, // 374 + 292
                "2° lugar"
        );

        assertEquals(2, equipo.getIdEquipo());
        assertEquals("McLaren Mercedes", equipo.getNombre());
        assertEquals("Lando Norris, Oscar Piastri", equipo.getPilotos());
        assertEquals(666, equipo.getPuntosTotales());
        assertEquals("2° lugar", equipo.getCategoriaPosicion());
    }

    @Test
    public void testCrearPosicionEquipo_MercedesAMG() {
        // Mercedes AMG Petronas F1 Team
        PosicionEquipo equipo = new PosicionEquipo(
                3,
                "Mercedes AMG Petronas F1 Team",
                "George Russell, Lewis Hamilton",
                580, // 356 + 224
                "3° lugar"
        );

        assertEquals(3, equipo.getIdEquipo());
        assertEquals("Mercedes AMG Petronas F1 Team", equipo.getNombre());
        assertEquals("George Russell, Lewis Hamilton", equipo.getPilotos());
        assertEquals(580, equipo.getPuntosTotales());
        assertEquals("3° lugar", equipo.getCategoriaPosicion());
    }

    @Test
    public void testToStringFormatoCorrecto() {
        PosicionEquipo equipo = new PosicionEquipo(
                4,
                "Aston Martin Aramco",
                "Fernando Alonso, Lance Stroll",
                468,
                "4° lugar"
        );

        String esperado = "4° lugar | Aston Martin Aramco | Pilotos: Fernando Alonso, Lance Stroll | Puntos: 468";
        assertEquals(esperado, equipo.toString());
    }

    @Test
    public void testValoresDiferentesEquipos() {
        PosicionEquipo equipo1 = new PosicionEquipo(1, "Red Bull Racing", "Max Verstappen, Pérez", 589, "1° lugar");
        PosicionEquipo equipo2 = new PosicionEquipo(2, "Ferrari", "Leclerc, Sainz", 485, "2° lugar");

        assertNotEquals(equipo1.getNombre(), equipo2.getNombre());
        assertNotEquals(equipo1.getPuntosTotales(), equipo2.getPuntosTotales());
        assertNotEquals(equipo1.getCategoriaPosicion(), equipo2.getCategoriaPosicion());
    }
}
