package com.patrones.entity;

import com.patrones.entity.PilotoTemporada;
import org.junit.Test;
import static org.junit.Assert.*;

/**
 * Pruebas unitarias para la clase PilotoTemporada.
 * Basadas en los datos reales de las temporadas 2024 y 2025.
 */
public class PilotoTemporadaTest {

    @Test
    public void testCrearPilotoTemporada_2024_MaxVerstappen() {
        // Registro real: ('1', '1', '1', '1', '437', '19', '1')
        PilotoTemporada pt = new PilotoTemporada();

        pt.setId_piloto_temporada(1);
        pt.setId_piloto(1);      // Max Verstappen
        pt.setId_equipo(1);      // Red Bull Racing Honda RBPT
        pt.setId_temporada(1);   // Temporada 2024
        pt.setPuntosTotales(437);
        pt.setVictorias(19);
        pt.setTemporada(1);

        assertEquals(1, pt.getId_piloto_temporada());
        assertEquals(1, pt.getId_piloto());
        assertEquals(1, pt.getId_equipo());
        assertEquals(1, pt.getId_temporada());
        assertEquals(437, pt.getPuntosTotales());
        assertEquals(19, pt.getVictorias());
        assertEquals(1, pt.getTemporada());
    }

    @Test
    public void testCrearPilotoTemporada_2024_LandoNorris() {
        // Registro real: ('2', '2', '2', '1', '374', '3', '2')
        PilotoTemporada pt = new PilotoTemporada();

        pt.setId_piloto_temporada(2);
        pt.setId_piloto(2);      // Lando Norris
        pt.setId_equipo(2);      // McLaren Mercedes
        pt.setId_temporada(1);   // Temporada 2024
        pt.setPuntosTotales(374);
        pt.setVictorias(3);
        pt.setTemporada(2);

        assertEquals(2, pt.getId_piloto_temporada());
        assertEquals(2, pt.getId_piloto());
        assertEquals(2, pt.getId_equipo());
        assertEquals(1, pt.getId_temporada());
        assertEquals(374, pt.getPuntosTotales());
        assertEquals(3, pt.getVictorias());
        assertEquals(2, pt.getTemporada());
    }

    @Test
    public void testCrearPilotoTemporada_2024_CharlesLeclerc() {
        // Registro real: ('3', '3', '3', '1', '356', '3', '3')
        PilotoTemporada pt = new PilotoTemporada();

        pt.setId_piloto_temporada(3);
        pt.setId_piloto(3);      // Charles Leclerc
        pt.setId_equipo(3);      // Ferrari
        pt.setId_temporada(1);
        pt.setPuntosTotales(356);
        pt.setVictorias(3);
        pt.setTemporada(3);

        assertEquals(3, pt.getId_piloto_temporada());
        assertEquals(3, pt.getId_piloto());
        assertEquals(3, pt.getId_equipo());
        assertEquals(1, pt.getId_temporada());
        assertEquals(356, pt.getPuntosTotales());
        assertEquals(3, pt.getVictorias());
        assertEquals(3, pt.getTemporada());
    }

    @Test
    public void testActualizarPuntosYVictorias() {
        PilotoTemporada pt = new PilotoTemporada();

        pt.setPuntosTotales(245);
        pt.setVictorias(1);
        assertEquals(245, pt.getPuntosTotales());
        assertEquals(1, pt.getVictorias());

        // Actualización de valores
        pt.setPuntosTotales(250);
        pt.setVictorias(2);
        assertEquals(250, pt.getPuntosTotales());
        assertEquals(2, pt.getVictorias());
    }

    @Test
    public void testRelacionPilotoEquipo_Temporada2025_MaxVerstappen() {
        // Registro real: ('27', '1', '1', '2', '230', '3', '3')
        PilotoTemporada pt = new PilotoTemporada();

        pt.setId_piloto_temporada(27);
        pt.setId_piloto(1);    // Max Verstappen
        pt.setId_equipo(1);    // Red Bull Racing Honda RBPT
        pt.setId_temporada(2); // Temporada 2025
        pt.setPuntosTotales(230);
        pt.setVictorias(3);
        pt.setTemporada(3);

        assertEquals(27, pt.getId_piloto_temporada());
        assertEquals(1, pt.getId_piloto());
        assertEquals(1, pt.getId_equipo());
        assertEquals(2, pt.getId_temporada());
        assertEquals(230, pt.getPuntosTotales());
        assertEquals(3, pt.getVictorias());
        assertEquals(3, pt.getTemporada());
    }

    @Test
    public void testCompararTemporadasMaxVerstappen() {
        // 2024: 437 puntos, 19 victorias
        // 2025: 230 puntos, 3 victorias
        PilotoTemporada temporada2024 = new PilotoTemporada();
        temporada2024.setPuntosTotales(437);
        temporada2024.setVictorias(19);

        PilotoTemporada temporada2025 = new PilotoTemporada();
        temporada2025.setPuntosTotales(230);
        temporada2025.setVictorias(3);

        assertTrue(temporada2024.getPuntosTotales() > temporada2025.getPuntosTotales());
        assertTrue(temporada2024.getVictorias() > temporada2025.getVictorias());
    }

    @Test
    public void testValoresPorDefecto() {
        PilotoTemporada pt = new PilotoTemporada();

        assertEquals(0, pt.getId_piloto_temporada());
        assertEquals(0, pt.getId_piloto());
        assertEquals(0, pt.getId_equipo());
        assertEquals(0, pt.getId_temporada());
        assertEquals(0, pt.getPuntosTotales());
        assertEquals(0, pt.getVictorias());
        assertEquals(0, pt.getTemporada());
    }

    @Test
    public void testDatosNoNulos() {
        PilotoTemporada pt = new PilotoTemporada();
        assertNotNull(pt);
    }
}
