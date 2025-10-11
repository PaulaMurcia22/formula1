//package com.patrones.entity;
//
//import com.patrones.entity.ResultadoCarrera;
//import org.junit.Before;
//import org.junit.Test;
//
//import static org.junit.Assert.*;
//
///**
// * Pruebas unitarias JUnit 4 para la clase ResultadoCarrera.
// * Basadas en los datos reales de la base de datos.
// */
//public class ResultadoCarreraTest {
//
//    private ResultadoCarrera resultadoTerminado;
//    private ResultadoCarrera resultadoPendiente;
//
//    @Before
//    public void setUp() {
//        // Registro con estado "terminado" (ejemplo id_resultado=1)
//        resultadoTerminado = new ResultadoCarrera();
//        resultadoTerminado.setId_resultado(1);
//        resultadoTerminado.setId_carrera(1);
//        resultadoTerminado.setId_piloto_temporada(1);
//        resultadoTerminado.setPosicion_final(1);
//        resultadoTerminado.setEstado("terminado");
//        resultadoTerminado.setPuntosObtenidos(25);
//
//        // Registro con estado "pendiente" (ejemplo id_resultado=123)
//        resultadoPendiente = new ResultadoCarrera();
//        resultadoPendiente.setId_resultado(123);
//        resultadoPendiente.setId_carrera(43);
//        resultadoPendiente.setId_piloto_temporada(0); // NULL simulado
//        resultadoPendiente.setPosicion_final(0);
//        resultadoPendiente.setEstado("pendiente");
//        resultadoPendiente.setPuntosObtenidos(0);
//    }
//
//    @Test
//    public void testGettersAndSettersTerminados() {
//        assertEquals(1, resultadoTerminado.getId_resultado());
//        assertEquals(1, resultadoTerminado.getId_carrera());
//        assertEquals(1, resultadoTerminado.getId_piloto_temporada());
//        assertEquals(1, resultadoTerminado.getPosicion_final());
//        assertEquals("terminado", resultadoTerminado.getEstado());
//        assertEquals(25, resultadoTerminado.getPuntosObtenidos());
//    }
//
//    @Test
//    public void testGettersAndSettersPendientes() {
//        assertEquals(123, resultadoPendiente.getId_resultado());
//        assertEquals(43, resultadoPendiente.getId_carrera());
//        assertEquals(0, resultadoPendiente.getId_piloto_temporada());
//        assertEquals(0, resultadoPendiente.getPosicion_final());
//        assertEquals("pendiente", resultadoPendiente.getEstado());
//        assertEquals(0, resultadoPendiente.getPuntosObtenidos());
//    }
//
//    @Test
//    public void testToStringTerminado() {
//        String esperado = "CarreraID: 1, PilotoTemporadaID: 1, Estado: terminado, Posición: 1, Puntos: 25";
//        assertEquals(esperado, resultadoTerminado.toString());
//    }
//
//    @Test
//    public void testToStringPendiente() {
//        String esperado = "CarreraID: 43, PilotoTemporadaID: 0, Estado: pendiente, Posición: 0, Puntos: 0";
//        assertEquals(esperado, resultadoPendiente.toString());
//    }
//
//    @Test
//    public void testValoresLimitePuntos() {
//        resultadoTerminado.setPuntosObtenidos(0);
//        assertEquals(0, resultadoTerminado.getPuntosObtenidos());
//
//        resultadoTerminado.setPuntosObtenidos(26); // Máximo real observado
//        assertEquals(26, resultadoTerminado.getPuntosObtenidos());
//    }
//
//    @Test
//    public void testEstadoValido() {
//        String estado = resultadoTerminado.getEstado();
//        assertTrue(
//                estado.equalsIgnoreCase("terminado") ||
//                estado.equalsIgnoreCase("pendiente")
//        );
//    }
//
//    @Test
//    public void testPosicionFinalValida() {
//        int posicion = resultadoTerminado.getPosicion_final();
//        assertTrue(posicion >= 1 && posicion <= 3);
//    }
//}
