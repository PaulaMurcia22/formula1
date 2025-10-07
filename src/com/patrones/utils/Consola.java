package com.patrones.utils;

import java.util.Scanner;

public class Consola {
    private static final Scanner scanner = new Scanner(System.in);

    public static int leerEntero(String mensaje) {
        System.out.print(mensaje);
        while (!scanner.hasNextInt()) {
            System.out.print("Se debe ingresar un número: ");
            scanner.next();
        }
        return scanner.nextInt();
    }
}
