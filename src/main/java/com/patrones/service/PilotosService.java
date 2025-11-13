package com.patrones.service;

import com.patrones.Interface.DAO.IPilotoDAO;
import com.patrones.Interface.DAO.IPosicionPilotoDAO;
import com.patrones.Interface.IPilotosService;
import com.patrones.entity.Piloto;
import com.patrones.entity.PosicionPiloto;
import com.patrones.utils.Consola;

import java.util.List;

public class PilotosService implements IPilotosService {
    private final IPilotoDAO pilotoDAO;
    private final IPosicionPilotoDAO posicionPilotoDAO;

    public PilotosService(IPilotoDAO pilotoDAO, IPosicionPilotoDAO posicionPilotoDAO) {
        this.pilotoDAO = pilotoDAO;
        this.posicionPilotoDAO = posicionPilotoDAO;
    }
    @Override
    public void mostrarPilotos(int anio) {
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
}
