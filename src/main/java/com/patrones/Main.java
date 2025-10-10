package com.patrones;
import com.patrones.service.ConnectionBD;
import com.patrones.service.MenuService;

public class Main {
    public static void main(String[] args) {
        try {
            // Crea un objeto de la clase MenuService
            MenuService menuService = new MenuService();

            // Llama al metodo que muestra el menú principal de la aplicación
            menuService.mostrarMenuPrincipal();
        } catch (Exception e) {
            // Si ocurre algún error, se muestra un mensaje en pantalla
            System.out.println("Ocurrió un error: " + e.getMessage());
        }
    }
}
