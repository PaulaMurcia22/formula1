package com.patrones.service;

import com.patrones.entity.Piloto;
import com.patrones.service.dao.PilotoDAO;
import com.patrones.utils.Consola;
import java.util.List;

public class TemporadaService {

    private PilotoDAO pilotoDAO = new PilotoDAO();

    public void mostrarMenuTemporada(int anio) {
        boolean salir = false;
        while (!salir) {
            System.out.println("TEMPORADA " + anio);
            System.out.println("1. Ver información de Pilotos");
            System.out.println("2. Ver información de Equipos");
            System.out.println("3. Listado de Circuitos");
            System.out.println("4. Tabla de posiciones de Pilotos");
            System.out.println("5. Tabla de posiciones de Equipos");


            if (anio == 2025)
            {
                System.out.println("6. Ingresar resultados carrera");
                System.out.println("7. Regresar al menú principal");
            } else{
                System.out.println("6. Regresar al menú principal");
            }

            int opcion = Consola.leerEntero("Selecciona una opción: ");
            salir = manejarOpcion(anio, opcion);
        }
    }

    private boolean manejarOpcion(int anio, int opcion) {
        if (anio == 2024) {
            switch (opcion) {
                case 1 -> mostrarPilotos(anio);
                case 2 -> mostrarEquipos(anio);
                case 3 -> mostrarCircuitos(anio);
                case 4 -> mostrarTablaPilotos(anio);
                case 5 -> mostrarTablaEquipos(anio);
                case 6 -> { return true; }
                default -> System.out.println("La opción no es válida para la temporada 2024.");
            }
        } else if (anio == 2025) {
            switch (opcion) {
                case 1 -> mostrarPilotos(anio);
                case 2 -> mostrarEquipos(anio);
                case 3 -> mostrarCircuitos(anio);
                case 4 -> mostrarTablaPilotos(anio);
                case 5 -> mostrarTablaEquipos(anio);
                case 6 -> ingresarResultadosCarrera();
                case 7 -> { return true; }
                default -> System.out.println("La opción no es válida para la temporada 2025.");
            }
        }
        return false;
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

    private void mostrarEquipos(int anio) {
        System.out.println("Equipos de la temporada " + anio);
    }

    private void mostrarCircuitos(int anio) {
        System.out.println("Circuitos de la temporada " + anio);
    }

    private void mostrarTablaPilotos(int anio) {
        System.out.println("Tabla de posiciones de pilotos " + anio);
    }

    private void mostrarTablaEquipos(int anio) {
        System.out.println("Tabla de posiciones de equipos " + anio);
    }

    private void ingresarResultadosCarrera() {
        System.out.println("Ingresar resultados de carrera 2025");
    }
}
