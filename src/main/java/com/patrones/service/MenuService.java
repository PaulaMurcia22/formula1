package com.patrones.service;

import com.patrones.utils.Consola;

public class MenuService {
    // Objeto para manejar las opciones relacionadas con las temporadas
    private TemporadaService temporadaService = new TemporadaService();

    // Metodo que muestra el menú principal de la aplicación
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
                case 1 -> temporadaService.mostrarMenuTemporada(2024); // Muestra el menú de la temporada 2024
                case 2 -> temporadaService.mostrarMenuTemporada(2025); // Muestra el menú de la temporada 2025
                case 3 -> { // Si elige salir
                    System.out.println("¡Gracias por usar la app de F1!");
                    return; // Sale del metodo y termina el programa
                }
                default -> System.out.println("La opción no es válida. Vuelva a intentarlo."); // Si escribe algo incorrecto
            }
        }
    }
}
