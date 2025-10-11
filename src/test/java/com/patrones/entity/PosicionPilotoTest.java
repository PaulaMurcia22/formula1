package com.patrones.entity;

import com.patrones.entity.PosicionPiloto;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 * Pruebas unitarias para la clase PosicionPiloto.
 * Basadas en los datos reales de pilotos y sus posiciones por temporada.
 */
public class PosicionPilotoTest {

    @Test
    public void testCrearPosicionPiloto_MaxVerstappen() {
        // Registro real: ('1', '1', '1', '1', '437', '19', '1')
        PosicionPiloto piloto = new PosicionPiloto(
                1,
                "Max",
                "Verstappen",
                "Red Bull Racing Honda RBPT",
                437,
                "1° lugar"
        );

        assertEquals(1, piloto.getIdPiloto());
        assertEquals("Max", piloto.getNombre());
        assertEquals("Verstappen", piloto.getApellido());
        assertEquals("Red Bull Racing Honda RBPT", piloto.getNombreEquipo());
        assertEquals(437, piloto.getPuntosTotales());
        assertEquals("1° lugar", piloto.getCategoriaPosicion());
    }

    @Test
    public void testCrearPosicionPiloto_LandoNorris() {
        // Registro real: ('2', '2', '2', '1', '374', '3', '2')
        PosicionPiloto piloto = new PosicionPiloto(
                2,
                "Lando",
                "Norris",
                "McLaren Mercedes",
                374,
                "2° lugar"
        );

        assertEquals(2, piloto.getIdPiloto());
        assertEquals("Lando", piloto.getNombre());
        assertEquals("Norris", piloto.getApellido());
        assertEquals("McLaren Mercedes", piloto.getNombreEquipo());
        assertEquals(374, piloto.getPuntosTotales());
        assertEquals("2° lugar", piloto.getCategoriaPosicion());
    }

    @Test
    public void testCrearPosicionPiloto_LewisHamilton() {
        // Registro real: ('3', '3', '3', '1', '356', '3', '3')
        PosicionPiloto piloto = new PosicionPiloto(
                3,
                "Lewis",
                "Hamilton",
                "Mercedes AMG Petronas F1 Team",
                356,
                "3° lugar"
        );

        assertEquals(3, piloto.getIdPiloto());
        assertEquals("Lewis", piloto.getNombre());
        assertEquals("Hamilton", piloto.getApellido());
        assertEquals("Mercedes AMG Petronas F1 Team", piloto.getNombreEquipo());
        assertEquals(356, piloto.getPuntosTotales());
        assertEquals("3° lugar", piloto.getCategoriaPosicion());
    }

    @Test
    public void testToStringFormatoCorrecto() {
        PosicionPiloto piloto = new PosicionPiloto(
                4,
                "Fernando",
                "Alonso",
                "Aston Martin Aramco",
                292,
                "4° lugar"
        );

        String esperado = "4° lugar | Fernando Alonso | Equipo: Aston Martin Aramco | Puntos: 292";
        assertEquals(esperado, piloto.toString());
    }

    @Test
    public void testCompararDiferentesPilotos() {
        PosicionPiloto p1 = new PosicionPiloto(1, "Max", "Verstappen", "Red Bull Racing", 437, "1° lugar");
        PosicionPiloto p2 = new PosicionPiloto(2, "Lando", "Norris", "McLaren", 374, "2° lugar");

        assertNotEquals(p1.getIdPiloto(), p2.getIdPiloto());
        assertNotEquals(p1.getNombre(), p2.getNombre());
        assertNotEquals(p1.getApellido(), p2.getApellido());
        assertNotEquals(p1.getNombreEquipo(), p2.getNombreEquipo());
        assertNotEquals(p1.getPuntosTotales(), p2.getPuntosTotales());
        assertNotEquals(p1.getCategoriaPosicion(), p2.getCategoriaPosicion());
    }

    @Test
    public void testPilotoSegundaTemporada_MaxVerstappen() {
        // Registro real: ('27', '1', '1', '2', '230', '3', '3')
        PosicionPiloto piloto = new PosicionPiloto(
                1,
                "Max",
                "Verstappen",
                "Red Bull Racing Honda RBPT",
                230,
                "3° lugar (Temporada 2)"
        );

        assertEquals(1, piloto.getIdPiloto());
        assertEquals("Max", piloto.getNombre());
        assertEquals("Verstappen", piloto.getApellido());
        assertEquals("Red Bull Racing Honda RBPT", piloto.getNombreEquipo());
        assertEquals(230, piloto.getPuntosTotales());
        assertEquals("3° lugar (Temporada 2)", piloto.getCategoriaPosicion());
    }
}