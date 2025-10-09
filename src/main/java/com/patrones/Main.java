package com.patrones;
import com.patrones.service.ConnectionBD;
import com.patrones.service.MenuService;

public class Main {
    public static void main(String[] args) {
        try {
            MenuService menuService = new MenuService();
            menuService.mostrarMenuPrincipal();
        } catch (Exception e){
            System.out.println("Ocurrio un error: " + e.getMessage());
        }
    }
}
