package com.patrones.service;


import com.patrones.Interface.DAO.ICarreraDAO;
import com.patrones.Interface.DAO.IPilotoDAO;
import com.patrones.Interface.DAO.IPilotoTemporadaDAO;
import com.patrones.Interface.DAO.IResultadoCarreraDAO;
import com.patrones.Interface.ICarreraService;
import com.patrones.Interface.ISimulacionService;
import com.patrones.Interface.Ipuntacion;
import com.patrones.entity.Carrera;
import com.patrones.entity.Piloto;
import com.patrones.entity.ResultadoCarrera;
import com.patrones.utils.Consola;

import java.util.*;

public class SimulacionService implements ISimulacionService {

    private final ICarreraDAO carreraDAO;
    private final IResultadoCarreraDAO resultadoCarreraDAO;
    private final IPilotoDAO pilotoDAO;
    private final Ipuntacion sistemaPuntuacion;
    private final IPilotoTemporadaDAO pilotoTemporadaDAO;

    public SimulacionService(ICarreraDAO carreraDAO,IResultadoCarreraDAO resultadoCarreraDAO, IPilotoDAO pilotoDAO,Ipuntacion sistemaPuntuacion,IPilotoTemporadaDAO pilotoTemporadaDAO) {
        this.carreraDAO = carreraDAO;
        this.resultadoCarreraDAO = resultadoCarreraDAO;
        this.pilotoDAO = pilotoDAO;
        this.sistemaPuntuacion = sistemaPuntuacion;
        this.pilotoTemporadaDAO=pilotoTemporadaDAO;
    }

    @Override
    public void simularCarrerasPostCongelacion() {
        System.out.println("SIMULACIÓN DE CARRERAS POST-CONGELACIÓN 2025");

        List<Carrera> carrerasPostCongelacion = carreraDAO.obtenerCarrerasPostCongelacion(2025);
        if (carrerasPostCongelacion.isEmpty()) {
            System.out.println("No hay carreras pendientes posteriores a la fecha de congelación.");
            return;
        }

        System.out.println("Se simularan las proximas " + carrerasPostCongelacion.size() + " carreras");
        int carrerasASimular = Math.min(carrerasPostCongelacion.size(), 2);

        // Lista para guardar los resultados de cada carrera
        Map<Carrera, List<Piloto>> resultadosPorCarrera = new HashMap<>();

        for (int i = 0; i < carrerasASimular; i++) {
            Carrera carrera = carrerasPostCongelacion.get(i);
            System.out.println("\nSimulación de la carrera: " + carrera.getNombreGp());
            List<Piloto> pilotos = pilotoDAO.obtenerPilotosPorTemporada(2025);

            // Se mezclan los pilotos y se guarda ese resultado
            List<Piloto> pilotosMezclados = new ArrayList<>(pilotos);
            Collections.shuffle(pilotosMezclados);

            resultadosPorCarrera.put(carrera, pilotosMezclados);

            // Se muestra el podio
            String[] podio = {"🥇", "🥈", "🥉"};
            for (int j = 0; j < 3; j++) {
                Piloto piloto = pilotosMezclados.get(j);
                System.out.println(podio[j] + " " + piloto.getNombre() + " " + piloto.getApellido());
            }

            // Se muestran las posiciones del 4 al 10
            for (int j = 3; j < 10 && j < pilotosMezclados.size(); j++) {
                Piloto piloto = pilotosMezclados.get(j);
                System.out.println("🔝 " + piloto.getNombre() + " " + piloto.getApellido());
            }

            // PSe muestran las posiciones del 11 al 20
            for (int j = 10; j < pilotosMezclados.size(); j++) {
                Piloto piloto = pilotosMezclados.get(j);
                System.out.println("🔻 " + piloto.getNombre() + " " + piloto.getApellido());
            }
        }

        // Pregunta si se desea guardar esos resultados
        System.out.println("¿DESEAS GUARDAR ESTOS RESULTADOS?");

        while (true) {
            System.out.println("1. Si, guardar resultados");
            System.out.println("2. No, volver al menú");

            int opcion = Consola.leerEntero("Selecciona una opción: ");

            switch (opcion) {
                case 1 -> {
                    guardarResultadosSimulados(resultadosPorCarrera);
                    return;
                }
                case 2 -> {
                    System.out.println("Se descartaron los resultados");
                    return;
                }
                default -> System.out.println("La opcion no es valida");
            }
        }
    }

    public void guardarResultadosSimulados(Map<Carrera, List<Piloto>> resultadosPorCarrera) {
        System.out.println("Se guardaran los resultados");

        Map<Integer, Integer> puntosF1 = sistemaPuntuacion.puntuacion();

        int carrerasGuardadas = 0;

        for (Map.Entry<Carrera, List<Piloto>> entry : resultadosPorCarrera.entrySet()) {
            Carrera carrera = entry.getKey();
            List<Piloto> pilotosMezclados = entry.getValue();

            // se actualiza el estado de pendiente terminado de la carrera
            carreraDAO.actualizarEstadoPendienteATerminado(carrera.getId());

            for (int posicion = 1; posicion <= pilotosMezclados.size(); posicion++) {
                Piloto piloto = pilotosMezclados.get(posicion - 1);

                try {
                    int idPilotoTemporada = pilotoTemporadaDAO.obtenerIdPilotoTemporadaPorNombre(
                            piloto.getNombre(), 2025
                    );

                    String estado = new Random().nextDouble() < 0.85 ? "terminado" : "abandono";
                    int puntos = puntosF1.getOrDefault(posicion, 0);

                    carreraDAO.eliminarResultadoExistente(idPilotoTemporada, carrera.getId());

                    ResultadoCarrera resultado = new ResultadoCarrera();
                    resultado.setId_carrera(carrera.getId());
                    resultado.setId_piloto_temporada(idPilotoTemporada);
                    resultado.setPosicion_final(posicion);
                    resultado.setPuntosObtenidos(puntos);
                    resultado.setEstado(estado);

                    resultadoCarreraDAO.InsertarResultadosCarrera(resultado);
                    pilotoTemporadaDAO.actualizarPuntosTotales(idPilotoTemporada, puntos);

                    if (posicion == 1) {
                        pilotoTemporadaDAO.incrementarVictorias(idPilotoTemporada);
                    }

                } catch (Exception e) {
                    System.err.println("Error al guardar los resultados del piloto " + piloto.getNombre() + ": " + e.getMessage());
                }
            }
            carrerasGuardadas++;
            System.out.println("Se guardo los resultados de la carrera " + carrera.getNombreGp() + " correctamente");
        }
    }
}
