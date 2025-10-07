package com.patrones.service;

import com.patrones.utils.Consola;

public class MenuService {
    private TemporadaService temporadaService = new TemporadaService();

    public void mostrarMenuPrincipal() {
        while (true) {
            System.out.println("¡BIENVENIDO A LA APP DE F1!");
            System.out.println("TEMPORADAS DISPONIBLES:");
            System.out.println("1. Temporada 2024");
            System.out.println("2. Temporada 2025");
            System.out.println("3. Salir");

            int opcion = Consola.leerEntero("Selecciona una opción: ");
            switch (opcion) {
                case 1 -> temporadaService.mostrarMenuTemporada(2024);
                case 2 -> temporadaService.mostrarMenuTemporada(2025);
                default -> System.out.println("La opción no es válida. Vuelva a intentarlo.");
            }
        }
    }
}
