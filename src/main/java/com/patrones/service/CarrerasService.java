package com.patrones.service;

import com.patrones.Interface.DAO.*;
import com.patrones.Interface.ICarreraService;
import com.patrones.Interface.Ipuntacion;
import com.patrones.entity.Carrera;
import com.patrones.entity.Piloto;
import com.patrones.entity.PosicionPiloto;
import com.patrones.entity.ResultadoCarrera;
import com.patrones.utils.Consola;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Scanner;

public class CarrerasService implements ICarreraService {
    private final ICarreraDAO carreraDAO;
    private final Ipuntacion sistemaPuntuacion;
    private final IPilotoDAO pilotoDAO;
    private final IResultadoCarreraDAO resultadoCarreraDAO;
    private final IPilotoTemporadaDAO pilotoTemporadaDAO;



    public CarrerasService(ICarreraDAO carreraDAO,Ipuntacion sistemaPuntuacion,IPilotoDAO pilotoDAO,IPosicionPilotoDAO posicionPilotoDAO,IResultadoCarreraDAO resultadoCarreraDAO, IPilotoTemporadaDAO pilotoTemporadaDAO) {
        this.carreraDAO = carreraDAO;
        this.sistemaPuntuacion = sistemaPuntuacion;
        this.pilotoDAO = pilotoDAO;
        this.resultadoCarreraDAO = resultadoCarreraDAO;
        this.pilotoTemporadaDAO = pilotoTemporadaDAO;


    }

    @Override
    public void mostrarCarreras(int anio) {
        System.out.println("\nLISTADO DE CARRERAS - TEMPORADA " + anio);
        List<Carrera> carreras = carreraDAO.obtenerCarrerasPorTemporada(anio);

        if (carreras.isEmpty()) {
            System.out.println("No se encontraron carreras.");
            return;
        }

        carreras.forEach(System.out::println);

        while (true) {
            int idSeleccionado = Consola.leerEntero("\nIngrese el Id de la carrera o 0 para regresar: ");
            if (idSeleccionado == 0) break;

            Carrera carreraSeleccionada = carreraDAO.obtenerCarrera(idSeleccionado, anio);
            if (carreraSeleccionada != null) {
                System.out.println("\n--- DETALLES DE LA CARRERA ---");
                System.out.println("Gran Premio: " + carreraSeleccionada.getNombreGp());
                System.out.println("Circuito: " + carreraSeleccionada.getCircuito());
                System.out.println("Fecha: " + carreraSeleccionada.getFecha());
                carreraDAO.mostrarResultadosCarrera(idSeleccionado);
            } else {
                System.out.println("No se encontró una carrera con ese ID.");
            }
        }
    }

    @Override
    public void ingresarResultadosCarrera() {
        Scanner sc = new Scanner(System.in);
        System.out.println("\nIngresar resultados de carrera 2025\n");

        // Pide el nombre del Gran Premio
        System.out.println("Escriba el nombre de la carrera a simular:");
        String granPremio = sc.nextLine().trim();
        Carrera carrera = carreraDAO.obtenerCarreraPorNombre(granPremio, 2025);

        // Asigna los puntos según la posición
        Map<Integer, Integer> puntos = sistemaPuntuacion.puntuacion();

        List<ResultadoCarrera> listaResultados = new ArrayList<>();

        // Se piden los resultados de 20 pilotos
        for (int i = 1; i <= 20; i++) {
            System.out.println("\nPiloto #" + i);

            // --- VALIDAR NOMBRE ---
            String nombre = "";
            while (true) {
                System.out.print("Digite el nombre del piloto: ");
                nombre = sc.nextLine().trim();
                if (nombre.isEmpty()) {
                    System.out.println("El nombre no puede estar vacío. Intenta de nuevo.");
                } else {
                    // Opcional: verifica si existe en la BD
                    if (pilotoDAO.obtenerPilotoPorNombre(nombre, 2025) == null) {
                        System.out.println("Piloto no encontrado en la temporada 2025. Intenta de nuevo.");
                    } else {
                        break;
                    }
                }
            }

            // --- VALIDAR POSICIÓN FINAL ---
            int posicion =-1;
            while (true) {
                System.out.print("Ingrese la posición final: ");
                String input = sc.nextLine().trim();

                try {
                    posicion = Integer.parseInt(input);
                    if (posicion < 1 || posicion > 20) {
                        System.out.println("La posición debe estar entre 1 y 20.");
                        continue;
                    }
                    final int posTemp = posicion;
                    boolean ocupada = listaResultados.stream().anyMatch(r -> r.getPosicion_final() == posTemp);
                    if (ocupada) {
                        System.out.println("Esa posición ya fue asignada. Intenta de nuevo.");
                    } else {
                        break; // posición válida y libre
                    }
                } catch (NumberFormatException e) {
                    System.out.println("Entrada inválida. Debe ser un número entero.");
                }
            }

            // --- VALIDAR ESTADO ---
            String estado = "";
            while (true) {
                System.out.print("Estado (terminado/descalificado): ");
                estado = sc.nextLine().trim();
                if (estado.equalsIgnoreCase("terminado") || estado.equalsIgnoreCase("descalificado")) {
                    break; // estado válido
                } else {
                    System.out.println("Estado inválido. Solo se permite 'terminado' o 'descalificado'.");
                }
            }

            // --- PROCESAR RESULTADO ---
            int idTemp = pilotoTemporadaDAO.obtenerIdPilotoTemporadaPorNombre(nombre, 2025);
            int puntosGanados = puntos.getOrDefault(posicion, 0);

            ResultadoCarrera resultado = new ResultadoCarrera();
            resultado.setId_carrera(carrera.getId());
            resultado.setId_piloto_temporada(idTemp);
            resultado.setEstado(estado);
            resultado.setPosicion_final(posicion);
            resultado.setPuntosObtenidos(puntosGanados);

            if (resultadoCarreraDAO.existeResultado(idTemp, carrera.getId())) {
                System.out.println("Ese piloto ya tiene resultado en esta carrera.");
                i--; // permite reingresar
                continue;
            }

            // Guardar si quedó entre los 3 primeros
                resultadoCarreraDAO.InsertarResultadosCarrera(resultado);

            if (posicion == 1) pilotoTemporadaDAO.incrementarVictorias(idTemp);


            pilotoTemporadaDAO.actualizarPuntosTotales(idTemp, puntosGanados);
            listaResultados.add(resultado);
        }


        // Muestra los resultados ingresados
        for (ResultadoCarrera r : listaResultados) {
            int idPiloto = pilotoTemporadaDAO.obtenerIdPilotoPorIdPilotoTemporada(r.getId_piloto_temporada());
            Piloto p = pilotoDAO.obtenerPiloto(idPiloto, 2025);
            Carrera c = carreraDAO.obtenerCarrera(r.getId_carrera(), 2025);

            System.out.printf("%s | %s %s | Posición: %d | Puntos: %d | Estado: %s%n",
                    c.getNombreGp(), p.getNombre(), p.getApellido(),
                    r.getPosicion_final(), r.getPuntosObtenidos(), r.getEstado());
        }
    }

}
