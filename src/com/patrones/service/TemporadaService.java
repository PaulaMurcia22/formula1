package com.patrones.service;

import com.patrones.entity.Circuito;
import com.patrones.entity.Equipo;
import com.patrones.entity.Piloto;
import com.patrones.entity.PosicionPiloto;
import com.patrones.service.dao.CircuitoDAO;
import com.patrones.service.dao.EquipoDAO;
import com.patrones.service.dao.PilotoDAO;
import com.patrones.service.dao.PosicionPilotoDAO;
import com.patrones.utils.Consola;
import java.util.List;

public class TemporadaService {

    private PilotoDAO pilotoDAO = new PilotoDAO();
    private EquipoDAO equipoDAO = new EquipoDAO();
    private CircuitoDAO circuitoDAO = new CircuitoDAO();
    private PosicionPilotoDAO posicionPilotoDAO = new PosicionPilotoDAO();

    public void mostrarMenuTemporada(int anio) {
        boolean salir = false;
        while (!salir) {
            System.out.println("TEMPORADA " + anio);
            System.out.println("1. Ver información de Pilotos");
            System.out.println("2. Ver información de Equipos");
            System.out.println("3. Listado de Circuitos");
            System.out.println("4. Tabla de posiciones de Pilotos");
            System.out.println("5. Tabla de posiciones de Equipos");


            if (anio == 2025)
            {
                System.out.println("6. Ingresar resultados carrera");
                System.out.println("7. Regresar al menú principal");
            } else{
                System.out.println("6. Regresar al menú principal");
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
                case 4 -> mostrarTablaPilotos(anio);
                case 5 -> mostrarTablaEquipos(anio);
                case 6 -> { return true; }
                default -> System.out.println("La opción no es válida para la temporada 2024.");
            }
        } else if (anio == 2025) {
            switch (opcion) {
                case 1 -> mostrarPilotos(anio);
                case 2 -> mostrarEquipos(anio);
                case 3 -> mostrarCircuitos(anio);
                case 4 -> mostrarTablaPilotos(anio);
                case 5 -> mostrarTablaEquipos(anio);
                case 6 -> ingresarResultadosCarrera();
                case 7 -> { return true; }
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
                System.out.println("Pilotos: " + equipoSeleccionado.getPilotos());
                System.out.println("Motor: " + equipoSeleccionado.getMotor());
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

    private void mostrarTablaPilotos(int anio) {
        System.out.println("\nTABLA DE POSICIONES DE PILOTOS - TEMPORADA " + anio);
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
        System.out.println("Tabla de posiciones de equipos " + anio);
    }

    private void ingresarResultadosCarrera() {
        System.out.println("Ingresar resultados de carrera 2025");
    }
}
