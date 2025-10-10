package com.patrones.utils;

import java.util.Scanner;

public class Consola {

    // Scanner para leer datos que el usuario escribe en la consola
    private static final Scanner scanner = new Scanner(System.in);

    // Metodo para leer un número entero
    public static int leerEntero(String mensaje) {

        // Muestra un mensaje al usuario
        System.out.print(mensaje);

        // Mientras lo que escriba no sea un número entero, pide de nuevo
        while (!scanner.hasNextInt()) {
            System.out.print("Se debe ingresar un número: ");
            scanner.next(); // descarta lo que escribió mal
        }

        // Devuelve el número que el usuario escribió correctamente
        return scanner.nextInt();
    }
}
