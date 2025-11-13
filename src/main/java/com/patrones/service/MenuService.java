package com.patrones.service;

import com.patrones.Interface.IMenuService;
import com.patrones.Interface.ITemporadaService;
import com.patrones.utils.Consola;

public class MenuService implements IMenuService {


    private final ITemporadaService temporadaService;

    // ✅ Constructor que recibe la dependencia
    public MenuService(ITemporadaService temporadaService) {
        this.temporadaService = temporadaService;
    }


    // Metodo que muestra el menú principal de la aplicación
    @Override
    public void mostrarMenuPrincipal() {

        // Ciclo infinito para que el menú se repita hasta que el usuario decida salir
        while (true) {
            // Muestra el encabezado del menú
            System.out.println("¡BIENVENIDO A LA APP DE F1 \uD83C\uDFC1!");
            System.out.println("TEMPORADAS DISPONIBLES:");
            System.out.println("1. Temporada 2024");
            System.out.println("2. Temporada 2025");
            System.out.println("3. Salir");

            // Pide al usuario que elija una opción
            int opcion = Consola.leerEntero("Selecciona una opción: ");

            // Evalúa la opción seleccionada
            switch (opcion) {
                case 1 -> mostrarMenuTemporada(2024); // Muestra el menú de la temporada 2024
                case 2 -> mostrarMenuTemporada(2025); // Muestra el menú de la temporada 2025
                case 3 -> { // Si elige salir
                    System.out.println("¡Gracias por usar la app de F1!");
                    return; // Sale del metodo y termina el programa
                }
                default -> System.out.println("La opción no es válida. Vuelva a intentarlo."); // Si escribe algo incorrecto
            }
        }
    }
@Override
    public void mostrarMenuTemporada(int anio) {
        boolean salir = false;
        while (!salir) {
            System.out.println("TEMPORADA " + anio);
            System.out.println("1. Ver información de Pilotos");
            System.out.println("2. Ver información de Equipos");
            System.out.println("3. Listado de Circuitos");
            System.out.println("4. Listado de Carreras");
            System.out.println("5. Tabla de posiciones de Pilotos");
            System.out.println("6. Tabla de posiciones de Equipos");

            // Solo en la temporada 2025 se puede ingresar resultados
            if (anio == 2025) {
                System.out.println("7. Ingresar resultados carrera");
                System.out.println("8. Simular proximas carreras");
                System.out.println("9. Regresar al menú principal");
            } else {
                System.out.println("7. Regresar al menú principal");
            }

            // Lee la opción que el usuario elija
            int opcion = Consola.leerEntero("Selecciona una opción: ");
            salir = manejarOpcion(anio, opcion);
        }
    }

    // Maneja lo que hace el menú según la temporada
    private boolean manejarOpcion(int anio, int opcion) {
        if (anio == 2024) {
            switch (opcion) {
                case 1 -> temporadaService.mostrarPilotos(anio);
                case 2 -> temporadaService.mostrarEquipos(anio);
                case 3 -> temporadaService.mostrarCircuitos(anio);
                case 4 -> temporadaService.mostrarCarreras(anio);
                case 5 -> temporadaService.mostrarTablaPilotos(anio);
                case 6 -> temporadaService.mostrarTablaEquipos(anio);
                case 7 -> { return true; } // salir
                default -> System.out.println("La opción no es válida para la temporada 2024.");
            }
        } else if (anio == 2025) {
            switch (opcion) {
                case 1 -> temporadaService.mostrarPilotos(anio);
                case 2 -> temporadaService.mostrarEquipos(anio);
                case 3 -> temporadaService.mostrarCircuitos(anio);
                case 4 -> temporadaService.mostrarCarreras(anio);
                case 5 -> temporadaService.mostrarTablaPilotos(anio);
                case 6 -> temporadaService.mostrarTablaEquipos(anio);
                case 7 -> temporadaService.ingresarResultadosCarrera();
                case 8 -> temporadaService.simularCarrerasPostCongelacion();
                case 9 -> { return true; } // salir
                default -> System.out.println("La opción no es válida para la temporada 2025.");
            }
        }
        return false;
    }

}
