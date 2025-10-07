package com.patrones.service;

import com.patrones.entity.Piloto;
import com.patrones.service.dao.PilotoDAO;
import com.patrones.utils.Consola;
import java.util.List;

public class TemporadaService {

    private PilotoDAO pilotoDAO = new PilotoDAO();

    public void mostrarMenuTemporada(int anio) {
        while (true) {
            System.out.println("TEMPORADA " + anio);
            System.out.println("1. Ver información de pilotos");
            System.out.println("2. Regresar al menú principal");

            int opcion = Consola.leerEntero("Selecciona una opción: ");
            switch (opcion) {
                case 1 -> mostrarPilotos(anio);
                case 2 -> { return; }
                default -> System.out.println("La opción no es válida.");
            }
        }
    }

    private void mostrarPilotos(int anio) {
        System.out.println("LISTADO DE PILOTOS - TEMPORADA " + anio);
        List<Piloto> pilotos = pilotoDAO.obtenerPilotosPorTemporada(anio);

        if (pilotos.isEmpty()) {
            System.out.println("No se encontraron pilotos.");
        } else {
            pilotos.forEach(System.out::println);
        }
    }
}
