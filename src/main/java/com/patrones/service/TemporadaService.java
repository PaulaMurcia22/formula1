package com.patrones.service;

import com.patrones.Interface.DAO.*;
import com.patrones.Interface.Ipuntacion;
import com.patrones.Interface.ItemporadaService;
import com.patrones.entity.*;
import com.patrones.utils.Consola;


import java.util.*;

public class TemporadaService implements ItemporadaService {


    // Objetos DAO para acceder a la base de datos de pilotos, equipos, carreras, etc.
    private final IPilotoDAO pilotoDAO;
    private final IEquipoDAO equipoDAO;
    private final ICircuitoDAO circuitoDAO;
    private final IPosicionPilotoDAO posicionPilotoDAO;
    private final IPosicionEquipoDAO posicionEquipoDAO;
    private final IPilotoTemporadaDAO pilotoTemporadaDAO;
    private final ICarreraDAO carreraDAO;
    private final IResultadoCarreraDAO resultadoCarreraDAO;
    private final Ipuntacion sistemaPuntuacion
            ;
    // Muestra el menú principal de una temporada
    public TemporadaService (IPilotoDAO pilotoDAO,
                             IEquipoDAO equipoDAO,
                             ICircuitoDAO circuitoDAO,
                             IPosicionPilotoDAO posicionPilotoDAO,
                             IPosicionEquipoDAO posicionEquipoDAO,
                             IPilotoTemporadaDAO pilotoTemporadaDAO,
                             ICarreraDAO carreraDAO,
                             IResultadoCarreraDAO resultadoCarreraDAO,
                             Ipuntacion sistemaPuntuacion)
    {
        this.pilotoDAO = pilotoDAO;
        this.equipoDAO = equipoDAO;
        this.circuitoDAO = circuitoDAO;
        this.posicionPilotoDAO = posicionPilotoDAO;
        this.posicionEquipoDAO = posicionEquipoDAO;
        this.pilotoTemporadaDAO = pilotoTemporadaDAO;
        this.carreraDAO = carreraDAO;
        this.resultadoCarreraDAO = resultadoCarreraDAO;
        this.sistemaPuntuacion = sistemaPuntuacion;
    }
    // Muestra todos los pilotos y permite ver detalles de uno
    @Override
    public void mostrarPilotos(int anio) {
        System.out.println(" ");
        System.out.print("***************************************");
        System.out.println("\n* LISTADO DE PILOTOS - TEMPORADA " + anio + " *");
        System.out.print("***************************************\n");
        List<Piloto> pilotos = pilotoDAO.obtenerPilotosPorTemporada(anio);

        if (pilotos.isEmpty()) {
            System.out.println("No se encontraron pilotos.");
            return;
        }

        pilotos.forEach(System.out::println);

        while (true) {
            int idSeleccionado = Consola.leerEntero("\nIngrese el Id del piloto o 0 para regresar: ");
            if (idSeleccionado == 0) break;

            Piloto pilotoSeleccionado = pilotoDAO.obtenerPiloto(idSeleccionado, anio);
            if (pilotoSeleccionado != null) {

                System.out.println("***************************************");
                System.out.println("*         DETALLES DEL PILOTO         *");
                System.out.println("***************************************");
                System.out.println(" Nombre: " + pilotoSeleccionado.getNombre() + " " + pilotoSeleccionado.getApellido());
                System.out.println(" Equipo: " + pilotoSeleccionado.getEquipo());
                System.out.println(" Número: " + pilotoSeleccionado.getNumero());
                System.out.println(" Puntos: " + pilotoSeleccionado.getPuntosTotales());
                System.out.println(" Victorias: " + pilotoSeleccionado.getVictorias());
            } else {
                System.out.println("No se encontró un piloto con ese Id.");
            }
        }
    }

    // Muestra los equipos y permite ver detalles de uno
    @Override
    public void mostrarEquipos(int anio) {
        System.out.println("\nLISTADO DE EQUIPOS - TEMPORADA " + anio);
        List<Equipo> equipos = equipoDAO.obtenerEquiposPorTemporada(anio);

        if (equipos.isEmpty()) {
            System.out.println("No se encontraron equipos.");
            return;
        }

        equipos.forEach(System.out::println);

        while (true) {
            int idSeleccionado = Consola.leerEntero("\nIngrese el Id del equipo o 0 para regresar: ");
            if (idSeleccionado == 0) break;

            Equipo equipoSeleccionado = equipoDAO.obtenerEquipo(idSeleccionado, anio);
            if (equipoSeleccionado != null) {
                System.out.println("***************************************");
                System.out.println("       DETALLES DEL EQUIPO          *");
                System.out.println("***************************************");
                System.out.println(" Nombre: " + equipoSeleccionado.getNombre());
                System.out.println(" País: " + equipoSeleccionado.getPais());
                System.out.println(" Motor: " + equipoSeleccionado.getMotor());
                System.out.println(" Pilotos: " + equipoSeleccionado.getPilotos());
                System.out.println(" Puntos: " + equipoSeleccionado.getPuntosTotales());
            } else {
                System.out.println("No se encontró un equipo con ese Id.");
            }
        }
    }

    // Muestra circuitos disponibles y permite ver sus detalles
    @Override
    public void mostrarCircuitos(int anio) {
        System.out.println("\nLISTADO DE CIRCUITOS - TEMPORADA " + anio);
        List<Circuito> circuitos = circuitoDAO.obtenerCircuitosPorTemporada(anio);

        if (circuitos.isEmpty()) {
            System.out.println("No se encontraron circuitos.");
            return;
        }

        circuitos.forEach(System.out::println);

        while (true) {
            int idSeleccionado = Consola.leerEntero("\nIngrese el Id del circuito o 0 para regresar: ");
            if (idSeleccionado == 0) break;

            Circuito circuitoSeleccionado = circuitoDAO.obtenerCircuito(idSeleccionado, anio);
            if (circuitoSeleccionado != null) {
                System.out.println("\n--- DETALLES DEL CIRCUITO ---");
                System.out.println("Nombre: " + circuitoSeleccionado.getNombre());
                System.out.println("País: " + circuitoSeleccionado.getPais());
                System.out.println("Longitud: " + circuitoSeleccionado.getLongitudKm() + " km");
                System.out.println("Curvas: " + circuitoSeleccionado.getCurvas());
                System.out.println("Fecha: " + circuitoSeleccionado.getFecha());
            } else {
                System.out.println("No se encontró un circuito con ese Id.");
            }
        }
    }

    // Muestra carreras y sus resultados
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

    // Muestra la tabla de posiciones de pilotos
    @Override
    public void mostrarTablaPilotos(int anio) {
        System.out.println("\n🏆 TABLA DE POSICIONES DE PILOTOS - " + anio);
        List<PosicionPiloto> posicionPilotos = posicionPilotoDAO.obtenerPosicionesPilotosTemporada(anio);

        if (posicionPilotos.isEmpty()) {
            System.out.println("No se encontraron posiciones.");
            return;
        }

        posicionPilotos.forEach(System.out::println);
        Consola.leerEntero("\nIngrese 0 para regresar: ");
    }

    // Muestra la tabla de posiciones de equipos
    @Override
    public void mostrarTablaEquipos(int anio) {
        System.out.println("\n🏆 TABLA DE POSICIONES DE EQUIPOS - " + anio);
        List<PosicionEquipo> posicionEquipos = posicionEquipoDAO.obtenerPosicionesEquiposTemporada(anio);

        if (posicionEquipos.isEmpty()) {
            System.out.println("No se encontraron posiciones.");
            return;
        }

        posicionEquipos.forEach(System.out::println);
        Consola.leerEntero("\nIngrese 0 para regresar: ");
    }




    // Permite ingresar los resultados de una carrera de la temporada 2025
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
