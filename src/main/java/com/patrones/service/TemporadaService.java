package com.patrones.service;

import com.patrones.entity.*;
import com.patrones.service.dao.*;
import com.patrones.utils.Consola;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.util.*;

public class TemporadaService {

    // Objetos DAO para acceder a la base de datos de pilotos, equipos, carreras, etc.
    private PilotoDAO pilotoDAO = new PilotoDAO();
    private EquipoDAO equipoDAO = new EquipoDAO();
    private CircuitoDAO circuitoDAO = new CircuitoDAO();
    private PosicionPilotoDAO posicionPilotoDAO = new PosicionPilotoDAO();
    private PosicionEquipoDAO posicionEquipoDAO = new PosicionEquipoDAO();
    private PilotoTemporadaDAO pilotoTemporadaDAO = new PilotoTemporadaDAO();
    private CarreraDAO carreraDAO = new CarreraDAO();
    private ResultadoCarreraDAO resultadoCarreraDAO = new ResultadoCarreraDAO();

    // Muestra el menú principal de una temporada
    public void mostrarMenuTemporada(int anio) {
        boolean salir = false;
        while (!salir) {
            System.out.println("TEMPORADA " + anio);
            System.out.println("1. Ver información de Pilotos");
            System.out.println("2. Ver información de Equipos");
            System.out.println("3. Listado de Circuitos");
            System.out.println("4. Listado de Carreras");
            System.out.println("5. Tabla de posiciones de Pilotos");
            System.out.println("6. Tabla de posiciones de Equipos");

            // Solo en la temporada 2025 se puede ingresar resultados
            if (anio == 2025) {
                System.out.println("7. Ingresar resultados carrera");
                System.out.println("8. Simular proximas carreras");
                System.out.println("9. Regresar al menú principal");
            } else {
                System.out.println("7. Regresar al menú principal");
            }

            // Lee la opción que el usuario elija
            int opcion = Consola.leerEntero("Selecciona una opción: ");
            salir = manejarOpcion(anio, opcion);
        }
    }

    // Maneja lo que hace el menú según la temporada
    private boolean manejarOpcion(int anio, int opcion) {
        if (anio == 2024) {
            switch (opcion) {
                case 1 -> mostrarPilotos(anio);
                case 2 -> mostrarEquipos(anio);
                case 3 -> mostrarCircuitos(anio);
                case 4 -> mostrarCarreras(anio);
                case 5 -> mostrarTablaPilotos(anio);
                case 6 -> mostrarTablaEquipos(anio);
                case 7 -> { return true; } // salir
                default -> System.out.println("La opción no es válida para la temporada 2024.");
            }
        } else if (anio == 2025) {
            switch (opcion) {
                case 1 -> mostrarPilotos(anio);
                case 2 -> mostrarEquipos(anio);
                case 3 -> mostrarCircuitos(anio);
                case 4 -> mostrarCarreras(anio);
                case 5 -> mostrarTablaPilotos(anio);
                case 6 -> mostrarTablaEquipos(anio);
                case 7 -> ingresarResultadosCarrera();
                case 8 -> simularCarrerasPostCongelacion();
                case 9 -> { return true; } // salir
                default -> System.out.println("La opción no es válida para la temporada 2025.");
            }
        }
        return false;
    }

    // Muestra todos los pilotos y permite ver detalles de uno
    private void mostrarPilotos(int anio) {
        System.out.println("\nLISTADO DE PILOTOS - TEMPORADA " + anio);
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
                System.out.println("\n--- DETALLES DEL PILOTO ---");
                System.out.println("Nombre: " + pilotoSeleccionado.getNombre() + " " + pilotoSeleccionado.getApellido());
                System.out.println("Equipo: " + pilotoSeleccionado.getEquipo());
                System.out.println("Número: " + pilotoSeleccionado.getNumero());
                System.out.println("Puntos: " + pilotoSeleccionado.getPuntosTotales());
                System.out.println("Victorias: " + pilotoSeleccionado.getVictorias());
            } else {
                System.out.println("No se encontró un piloto con ese Id.");
            }
        }
    }

    // Muestra los equipos y permite ver detalles de uno
    private void mostrarEquipos(int anio) {
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
                System.out.println("\n--- DETALLES DEL EQUIPO ---");
                System.out.println("Nombre: " + equipoSeleccionado.getNombre());
                System.out.println("País: " + equipoSeleccionado.getPais());
                System.out.println("Motor: " + equipoSeleccionado.getMotor());
                System.out.println("Pilotos: " + equipoSeleccionado.getPilotos());
                System.out.println("Puntos: " + equipoSeleccionado.getPuntosTotales());
            } else {
                System.out.println("No se encontró un equipo con ese Id.");
            }
        }
    }

    // Muestra circuitos disponibles y permite ver sus detalles
    private void mostrarCircuitos(int anio) {
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
    private void mostrarCarreras(int anio) {
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
    private void mostrarTablaPilotos(int anio) {
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
    private void mostrarTablaEquipos(int anio) {
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
    private void ingresarResultadosCarrera() {
        Scanner sc = new Scanner(System.in);
        System.out.println("\nIngresar resultados de carrera 2025\n");

        // Pide el nombre del Gran Premio
        System.out.println("Escriba el nombre de la carrera a simular:");
        String granPremio = sc.nextLine().trim();
        Carrera carrera = carreraDAO.obtenerCarreraPorNombre(granPremio, 2025);

        // Asigna los puntos según la posición
        Map<Integer, Integer> puntos = new HashMap<>();
        puntos.put(1, 25);
        puntos.put(2, 18);
        puntos.put(3, 15);
        puntos.put(4, 12);
        puntos.put(5, 10);
        puntos.put(6, 8);
        puntos.put(7, 6);
        puntos.put(8, 4);
        puntos.put(9, 2);
        puntos.put(10, 1);

        List<ResultadoCarrera> listaResultados = new ArrayList<>();

        // Se piden los resultados de 20 pilotos
        for (int i = 1; i <= 20; i++) {
            System.out.println("\nPiloto #" + i);
            System.out.print("Digite el nombre del piloto: ");
            String nombre = sc.nextLine().trim();

            // Busca el piloto en la BD
            Piloto piloto = pilotoDAO.obtenerPilotoPorNombre(nombre, 2025);

            System.out.print("Ingrese la posición final: ");
            int posicion = sc.nextInt();
            sc.nextLine(); // limpiar buffer

            // Verifica que la posición no esté repetida
            boolean ocupada = listaResultados.stream().anyMatch(r -> r.getPosicion_final() == posicion);
            if (ocupada) {
                System.out.println("Esa posición ya fue asignada. Intenta de nuevo.");
                i--;
                continue;
            }

            System.out.print("Estado (terminado/descalificado): ");
            String estado = sc.nextLine().trim();

            int idTemp = pilotoTemporadaDAO.obtenerIdPilotoTemporadaPorNombre(nombre, 2025);
            int puntosGanados = puntos.getOrDefault(posicion, 0);

            // Crea y guarda el resultado
            ResultadoCarrera resultado = new ResultadoCarrera();
            resultado.setId_carrera(carrera.getId());
            resultado.setId_piloto_temporada(idTemp);
            resultado.setEstado(estado);
            resultado.setPosicion_final(posicion);
            resultado.setPuntosObtenidos(puntosGanados);

            if (resultadoCarreraDAO.existeResultado(idTemp, carrera.getId())) {
                System.out.println("Ese piloto ya tiene resultado en esta carrera.");
                continue;
            }

            // Si quedó entre los 3 primeros, se guarda y se cuentan victorias
            if (posicion <= 3) {
                resultadoCarreraDAO.InsertarResultadosCarrera(resultado);
                if (posicion == 1) pilotoTemporadaDAO.incrementarVictorias(idTemp);
            }

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


    private void simularCarrerasPostCongelacion() {
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

    private void guardarResultadosSimulados(Map<Carrera, List<Piloto>> resultadosPorCarrera) {
        System.out.println("Se guardaran los resultados");

        Map<Integer, Integer> puntosF1 = Map.of(
                1, 25, 2, 18, 3, 15, 4, 12, 5, 10,
                6, 8, 7, 6, 8, 4, 9, 2, 10, 1
        );

        int carrerasGuardadas = 0;

        for (Map.Entry<Carrera, List<Piloto>> entry : resultadosPorCarrera.entrySet()) {
            Carrera carrera = entry.getKey();
            List<Piloto> pilotosMezclados = entry.getValue();

            // se actualiza el estado de pendiente a terminado de la carrera
            carreraDAO.actualizarEstadoPendienteATerminado(carrera.getId());

            for (int posicion = 1; posicion <= pilotosMezclados.size(); posicion++) {
                Piloto piloto = pilotosMezclados.get(posicion - 1);

                try {
                    int idPilotoTemporada = pilotoTemporadaDAO.obtenerIdPilotoTemporadaPorNombre(
                            piloto.getNombre(), 2025
                    );

                    String estado = new Random().nextDouble() < 0.85 ? "terminado" : "abandono";
                    int puntos = puntosF1.getOrDefault(posicion, 0);

                    eliminarResultadoExistente(idPilotoTemporada, carrera.getId());

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
    private void eliminarResultadoExistente(int idPilotoTemporada, int idCarrera) {
        String sql = "DELETE FROM resultado_carrera WHERE id_piloto_temporada = ? AND id_carrera = ?";

        try (Connection conn = ConnectionBD.getConnection();
             PreparedStatement stmt = conn.prepareStatement(sql)) {

            stmt.setInt(1, idPilotoTemporada);
            stmt.setInt(2, idCarrera);
            stmt.executeUpdate();

        } catch (SQLException e) {
            System.err.println("Error al eliminar resultado existente: " + e.getMessage());
        }
    }
}
