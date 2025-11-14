package com.patrones.service;

import com.patrones.Interface.DAO.ICircuitoDAO;
import com.patrones.Interface.ICircuitosService;
import com.patrones.entity.Circuito;
import com.patrones.utils.Consola;

import java.util.List;

public class CircuitosService implements ICircuitosService {
    private final ICircuitoDAO circuitoDAO;

    public CircuitosService(ICircuitoDAO circuitoDAO) {
        this.circuitoDAO = circuitoDAO;
    }

    @Override
    public void mostrarCircuitos(int anio) {
        System.out.println("\nLISTADO DE CIRCUITOS - TEMPORADA " + anio);
        List<Circuito> circuitos = circuitoDAO.obtenerCircuitosPorTemporada(anio);

        if (circuitos.isEmpty()) {
            System.out.println("No se encontraron circuitos.");
            return;
        }

        circuitos.forEach(System.out::println);

        while (true) {
            int idSeleccionado = Consola.leerEntero("\nIngrese el Id del circuito o 0 para regresar: ");
            if (idSeleccionado == 0) break;

            Circuito circuitoSeleccionado = circuitoDAO.obtenerCircuito(idSeleccionado, anio);
            if (circuitoSeleccionado != null) {
                System.out.println("\n--- DETALLES DEL CIRCUITO ---");
                System.out.println("Nombre: " + circuitoSeleccionado.getNombre());
                System.out.println("País: " + circuitoSeleccionado.getPais());
                System.out.println("Longitud: " + circuitoSeleccionado.getLongitudKm() + " km");
                System.out.println("Curvas: " + circuitoSeleccionado.getCurvas());
                System.out.println("Fecha: " + circuitoSeleccionado.getFecha());
            } else {
                System.out.println("No se encontró un circuito con ese Id.");
            }
        }
    }
}
