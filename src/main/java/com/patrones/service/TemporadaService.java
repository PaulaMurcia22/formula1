package com.patrones.service;

import com.patrones.entity.*;
import com.patrones.service.dao.*;
import com.patrones.utils.Consola;

import java.sql.SQLOutput;
import java.util.*;

public class TemporadaService {

    private PilotoDAO pilotoDAO = new PilotoDAO();
    private EquipoDAO equipoDAO = new EquipoDAO();
    private CircuitoDAO circuitoDAO = new CircuitoDAO();
    private PosicionPilotoDAO posicionPilotoDAO = new PosicionPilotoDAO();
    private PosicionEquipoDAO posicionEquipoDAO = new PosicionEquipoDAO();
    private PilotoTemporadaDAO pilotoTemporadaDAO = new PilotoTemporadaDAO();
    private CarreraDAO carreraDAO = new CarreraDAO();
    private ResultadoCarreraDAO resultadoCarreraDAO = new  ResultadoCarreraDAO();



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


            if (anio == 2025)
            {
                System.out.println("7. Ingresar resultados carrera");
                System.out.println("8. Regresar al menú principal");
            } else{
                System.out.println("7. Regresar al menú principal");
            }

            int opcion = Consola.leerEntero("Selecciona una opción: ");
            salir = manejarOpcion(anio, opcion);
        }
    }

    private boolean manejarOpcion(int anio, int opcion) {
        if (anio == 2024) {
            switch (opcion) {
                case 1 -> mostrarPilotos(anio);
                case 2 -> mostrarEquipos(anio);
                case 3 -> mostrarCircuitos(anio);
                case 4 -> mostrarCarreras(anio);
                case 5 -> mostrarTablaPilotos(anio);
                case 6 -> mostrarTablaEquipos(anio);
                case 7 -> { return true; }
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
                case 8 -> { return true; }
                default -> System.out.println("La opción no es válida para la temporada 2025.");
            }
        }
        return false;
    }

    private void mostrarPilotos(int anio) {
        System.out.println("\nLISTADO DE PILOTOS - TEMPORADA " + anio);
        List<Piloto> pilotos = pilotoDAO.obtenerPilotosPorTemporada(anio);

        if (pilotos.isEmpty()) {
            System.out.println("No se encontraron pilotos.");
            return;
        }

        pilotos.forEach(System.out::println);

        while (true) {
            int idSeleccionado = Consola.leerEntero("\nIngrese el Id del piloto para ver su detalle o ingrese 0 para regresar: ");

            if (idSeleccionado == 0) {
                break;
            }

            Piloto pilotoSeleccionado = pilotoDAO.obtenerPiloto(idSeleccionado, anio);
            if (pilotoSeleccionado != null) {
                System.out.println("\n--- DETALLES DEL PILOTO ---");
                System.out.println("ID: " + pilotoSeleccionado.getId());
                System.out.println("Nombre: " + pilotoSeleccionado.getNombre() + " " + pilotoSeleccionado.getApellido());
                System.out.println("Equipo: " + pilotoSeleccionado.getEquipo());
                System.out.println("Número: " + pilotoSeleccionado.getNumero());
                System.out.println("Nacionalidad: " + pilotoSeleccionado.getNacionalidad());
                System.out.println("Puntos Totales: " + pilotoSeleccionado.getPuntosTotales());
                System.out.println("Victorias: " + pilotoSeleccionado.getVictorias());
                System.out.println("Año: " + pilotoSeleccionado.getAnio());
            } else {
                System.out.println("No se encontró un piloto con ese Id. Ingrese un Id válido por favor.");
            }
        }
    }

    private void mostrarEquipos(int anio) {
        System.out.println("\nLISTADO DE EQUIPOS - TEMPORADA " + anio);
        List<Equipo> equipos = equipoDAO.obtenerEquiposPorTemporada(anio);

        if (equipos.isEmpty()) {
            System.out.println("No se encontraron equipos.");
            return;
        }

        equipos.forEach(System.out::println);

        while (true) {
            int idSeleccionado = Consola.leerEntero("\nIngrese el Id del equipo para ver su detalle o ingrese 0 para regresar: ");

            if (idSeleccionado == 0) {
                break;
            }

            Equipo equipoSeleccionado = equipoDAO.obtenerEquipo(idSeleccionado, anio);
            if (equipoSeleccionado != null) {
                System.out.println("\n--- DETALLES DEL EQUIPO ---");
                System.out.println("ID: " + equipoSeleccionado.getId());
                System.out.println("Nombre: " + equipoSeleccionado.getNombre());
                System.out.println("Pais: " + equipoSeleccionado.getPais());
                System.out.println("Motor: " + equipoSeleccionado.getMotor());
                System.out.println("Pilotos: " + equipoSeleccionado.getPilotos());
                System.out.println("Puntos Totales: " + equipoSeleccionado.getPuntosTotales());
                System.out.println("Victorias: " + equipoSeleccionado.getVictorias());
                System.out.println("Año: " + equipoSeleccionado.getAnio());
            } else {
                System.out.println("No se encontró un piloto con ese Id. Ingrese un Id válido por favor.");
            }
        }
    }

    private void mostrarCircuitos(int anio) {
        System.out.println("\nLISTADO DE CIRCUITOS - TEMPORADA " + anio);
        List<Circuito> circuitos = circuitoDAO.obtenerCircuitosPorTemporada(anio);

        if (circuitos.isEmpty()) {
            System.out.println("No se encontraron circuitos.");
            return;
        }

        circuitos.forEach(System.out::println);

        while (true) {
            int idSeleccionado = Consola.leerEntero("\nIngrese el Id del circuito para ver su detalle o ingrese 0 para regresar: ");

            if (idSeleccionado == 0) {
                break;
            }

            Circuito circuitoSeleccionado = circuitoDAO.obtenerCircuito(idSeleccionado, anio);
            if (circuitoSeleccionado != null) {
                System.out.println("\n--- DETALLES DEL CIRCUITO ---");
                System.out.println("ID: " + circuitoSeleccionado.getId());
                System.out.println("Nombre: " + circuitoSeleccionado.getNombre());
                System.out.println("Pais: " + circuitoSeleccionado.getPais());
                System.out.println("Longitud (Km): " + circuitoSeleccionado.getLongitudKm());
                System.out.println("Curvas: " + circuitoSeleccionado.getCurvas());
                System.out.println("Fecha: " + circuitoSeleccionado.getFecha());
                System.out.println("Nombre GP: " + circuitoSeleccionado.getNombreGp());
                System.out.println("Año: " + circuitoSeleccionado.getAnio());
            } else {
                System.out.println("No se encontró un circuito con ese Id. Ingrese un Id válido por favor.");
            }
        }
    }

    private void mostrarCarreras(int anio) {
        System.out.println("\nLISTADO DE CARRERAS - TEMPORADA " + anio);
        List<Carrera> carreras = carreraDAO.obtenerCarrerasPorTemporada(anio);

        if (carreras.isEmpty()) {
            System.out.println("No se encontraron carreras.");
            return;
        }

        carreras.forEach(System.out::println);

        while (true) {
            int idSeleccionado = Consola.leerEntero("\nIngrese el Id de la carrera para ver su detalle o 0 para regresar: ");

            if (idSeleccionado == 0) {
                break;
            }

            Carrera carreraSeleccionada = carreraDAO.obtenerCarrera(idSeleccionado, anio);
            if (carreraSeleccionada != null) {
                System.out.println("\n--- DETALLES DE LA CARRERA ---");
                System.out.println("ID: " + carreraSeleccionada.getId());
                System.out.println("Nombre GP: " + carreraSeleccionada.getNombreGp());
                System.out.println("Circuito: " + carreraSeleccionada.getCircuito());
                System.out.println("Fecha: " + carreraSeleccionada.getFecha());
                System.out.println("Número de Vueltas: " + carreraSeleccionada.getNumVueltas());
                System.out.println("\nRESULTADOS DE LA CARRERA:");
                carreraDAO.mostrarResultadosCarrera(idSeleccionado);
            } else {
                System.out.println("No se encontró una carrera con ese ID.");
            }
        }
    }


    private void mostrarTablaPilotos(int anio) {
        System.out.println("\n \uD83C\uDFC6 TABLA DE POSICIONES DE PILOTOS - TEMPORADA " + anio);
        List<PosicionPiloto> posicionPilotos = posicionPilotoDAO.obtenerPosicionesPilotosTemporada(anio);

        if (posicionPilotos.isEmpty()) {
            System.out.println("No se encontraron las posiciones.");
            return;
        }

        posicionPilotos.forEach(System.out::println);

        while (true) {
            int idSeleccionado = Consola.leerEntero("\nIngrese 0 para regresar: ");

            if (idSeleccionado == 0) {
                break;
            } else {
                System.out.println("Ingrese una opción válida.");
            }
        }
    }

    private void mostrarTablaEquipos(int anio) {
        System.out.println("\n \uD83C\uDFC6 TABLA DE POSICIONES DE EQUIPOS - TEMPORADA " + anio);
        List<PosicionEquipo> posicionEquipos = posicionEquipoDAO.obtenerPosicionesEquiposTemporada(anio);

        if (posicionEquipos.isEmpty()) {
            System.out.println("No se encontraron las posiciones.");
            return;
        }

        posicionEquipos.forEach(System.out::println);

        while (true) {
            int idSeleccionado = Consola.leerEntero("\nIngrese 0 para regresar: ");

            if (idSeleccionado == 0) {
                break;
            } else {
                System.out.println("Ingrese una opción válida.");
            }
        }
    }

    private void ingresarResultadosCarrera() {

        Scanner sc = new Scanner(System.in);

        System.out.println("\nIngresar resultados de carrera 2025\n");


        System.out.println("\nlas carreras para simular son: \n Gran Premio de Singapur 2025\n" +
                "Gran Premio de Estados Unidos 2025\n" +
                "Gran Premio de México 2025\n" +
                "Gran Premio de Brasil 2025\n" +
                "Gran Premio de Las Vegas 2025\n" +
                "Gran Premio de Qatar 2025\n" +
                "Gran Premio de Abu Dabi 2025\n\n digite el nombre de la carrera a simular");

        String granPremio = sc.nextLine().trim();
        Carrera carrera = carreraDAO.obtenerCarreraPorNombre(granPremio, 2025);


        Map<Integer, Integer> puntos = new HashMap<Integer, Integer>();

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

        List<ResultadoCarrera> ListaresultadosCarrera = new ArrayList<>();
        for(int i=1; i<=20;i++) {

            System.out.println("\n"+i+"\n");
            System.out.println("Digite el nombre del piloto ");
                String nombre_piloto = sc.nextLine().trim();
            if (!nombre_piloto.isEmpty()) {
                nombre_piloto = nombre_piloto.substring(0,1).toUpperCase() + nombre_piloto.substring(1).toLowerCase();
            }
            Piloto id_pilotopuntos= pilotoDAO.obtenerPilotoPorNombre(nombre_piloto,2025);

            System.out.println("Ingrese la posicion final de " + nombre_piloto);
            int posicion = sc.nextInt();
            sc.nextLine();

            boolean posicionOcupada= false;
            for(ResultadoCarrera r : ListaresultadosCarrera) {
                if (r.getPosicion_final() == posicion) {
                    posicionOcupada = true;
                    break;
                }
            }
            if (posicionOcupada) {
                System.out.println("Error: la posición " + posicion + " ya fue asignada a otro piloto. Ingresa otra posición.");
                i--; // para repetir la iteración del mismo piloto
                continue; // vuelve a pedir el piloto
            }

            System.out.println("Indique el estado (terminado/descalificado) para "+ nombre_piloto);
            String estado = sc.nextLine().trim();



            int Ptemporada = pilotoTemporadaDAO.obtenerIdPilotoTemporadaPorNombre(nombre_piloto, 2025);
            int puntosobtenido = puntos.getOrDefault(posicion, 0);

            ResultadoCarrera resultadoCarrera= new ResultadoCarrera();

            resultadoCarrera.setId_carrera(carrera.getId());
            resultadoCarrera.setId_piloto_temporada(Ptemporada);
            resultadoCarrera.setEstado(estado);
            resultadoCarrera.setPosicion_final(posicion);
            resultadoCarrera.setPuntosObtenidos(puntosobtenido);


            if (resultadoCarreraDAO.existeResultado(Ptemporada, carrera.getId())) {
                System.out.println("El piloto " + nombre_piloto + " ya tiene un resultado registrado para esta carrera.");
                continue; // pasa al siguiente piloto
            }

            if (posicion == 1 || posicion==2||posicion==3) {
                resultadoCarreraDAO.InsertarResultadosCarrera(resultadoCarrera);
                if (posicion == 1) {
                    System.out.println("incremento de victoria");
                    pilotoTemporadaDAO.incrementarVictorias(Ptemporada);
                }

            }
            pilotoTemporadaDAO.actualizarPuntosTotales(Ptemporada, puntosobtenido);
            ListaresultadosCarrera.add(resultadoCarrera);
        }

        for(ResultadoCarrera r : ListaresultadosCarrera) {
            int idpiloto=pilotoTemporadaDAO.obtenerIdPilotoPorIdPilotoTemporada(r.getId_piloto_temporada());
            Piloto Pilotonombre=pilotoDAO.obtenerPiloto(idpiloto,2025);
            Carrera carreranombre = carreraDAO.obtenerCarrera(r.getId_carrera(),2025);

            System.out.printf(
                    "%s | %s %s | Posición: %d | Puntos: %d | Estado: %s%n",
                    carreranombre.getNombreGp(),
                    Pilotonombre.getNombre(),
                    Pilotonombre.getApellido(),
                    r.getPosicion_final(),
                    r.getPuntosObtenidos(),
                    r.getEstado()
            );
        }

    }
}
