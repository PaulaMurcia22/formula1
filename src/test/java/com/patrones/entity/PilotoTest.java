package com.patrones.entity;

import com.patrones.entity.Piloto;
import org.junit.Test;
import static org.junit.Assert.*;

public class PilotoTest {

    @Test
    public void testPiloto1_MaxVerstappen() {
        Piloto piloto = new Piloto(1, "Max", "Verstappen", "Países Bajos", "Red Bull Racing Honda RBPT", 1, 2025, 0, 0);

        assertEquals(1, piloto.getId());
        assertEquals("Max", piloto.getNombre());
        assertEquals("Verstappen", piloto.getApellido());
        assertEquals("Países Bajos", piloto.getNacionalidad());
        assertEquals("Red Bull Racing Honda RBPT", piloto.getEquipo());
        assertEquals(1, piloto.getNumero());
    }

    @Test
    public void testPiloto2_LandoNorris() {
        Piloto piloto = new Piloto(2, "Lando", "Norris", "Reino Unido", "McLaren Mercedes", 4, 2025, 0, 0);

        assertEquals(2, piloto.getId());
        assertEquals("Lando", piloto.getNombre());
        assertEquals("Norris", piloto.getApellido());
        assertEquals("Reino Unido", piloto.getNacionalidad());
        assertEquals("McLaren Mercedes", piloto.getEquipo());
        assertEquals(4, piloto.getNumero());
    }

    @Test
    public void testPiloto3_CharlesLeclerc() {
        Piloto piloto = new Piloto(3, "Charles", "Leclerc", "Mónaco", "Ferrari", 16, 2025, 0, 0);

        assertEquals(3, piloto.getId());
        assertEquals("Charles", piloto.getNombre());
        assertEquals("Leclerc", piloto.getApellido());
        assertEquals("Mónaco", piloto.getNacionalidad());
        assertEquals("Ferrari", piloto.getEquipo());
        assertEquals(16, piloto.getNumero());
    }

    @Test
    public void testPiloto7_LewisHamilton() {
        Piloto piloto = new Piloto(7, "Lewis", "Hamilton", "Reino Unido", "Mercedes", 44, 2025, 0, 0);

        assertEquals(7, piloto.getId());
        assertEquals("Lewis", piloto.getNombre());
        assertEquals("Hamilton", piloto.getApellido());
        assertEquals("Reino Unido", piloto.getNacionalidad());
        assertEquals("Mercedes", piloto.getEquipo());
        assertEquals(44, piloto.getNumero());
    }

    @Test
    public void testPiloto9_FernandoAlonso() {
        Piloto piloto = new Piloto(9, "Fernando", "Alonso", "España", "Aston Martin Aramco Mercedes", 14, 2025, 0, 0);

        assertEquals(9, piloto.getId());
        assertEquals("Fernando", piloto.getNombre());
        assertEquals("Alonso", piloto.getApellido());
        assertEquals("España", piloto.getNacionalidad());
        assertEquals("Aston Martin Aramco Mercedes", piloto.getEquipo());
        assertEquals(14, piloto.getNumero());
    }

    @Test
    public void testPiloto10_PierreGasly() {
        Piloto piloto = new Piloto(10, "Pierre", "Gasly", "Francia", "Renault Alpine", 10, 2025, 0, 0);

        assertEquals(10, piloto.getId());
        assertEquals("Pierre", piloto.getNombre());
        assertEquals("Gasly", piloto.getApellido());
        assertEquals("Francia", piloto.getNacionalidad());
        assertEquals("Renault Alpine", piloto.getEquipo());
        assertEquals(10, piloto.getNumero());
    }

    @Test
    public void testToString() {
        Piloto piloto = new Piloto(1, "Max", "Verstappen", "Red Bull Racing Honda RBPT");
        String texto = piloto.toString();

        assertTrue(texto.contains("Max"));
        assertTrue(texto.contains("Verstappen"));
        assertTrue(texto.contains("Red Bull"));
        assertTrue(texto.startsWith("1 -"));
    }
}