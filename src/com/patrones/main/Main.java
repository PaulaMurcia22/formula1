package com.patrones.main;
import com.patrones.service.MenuService;

public class Main {
    public static void main(String[] args) {
        MenuService menuService = new MenuService();
        menuService.mostrarMenuPrincipal();
    }
}
