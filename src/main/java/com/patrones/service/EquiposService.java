package com.patrones.service;


import com.patrones.Interface.DAO.IEquipoDAO;
import com.patrones.Interface.DAO.IPosicionEquipoDAO;
import com.patrones.Interface.IEquiposService;
import com.patrones.entity.Equipo;
import com.patrones.entity.PosicionEquipo;
import com.patrones.utils.Consola;

import java.util.List;

public class EquiposService implements IEquiposService {
    private final IEquipoDAO equipoDAO;
    private final IPosicionEquipoDAO posicionEquipoDAO;

    public EquiposService(IEquipoDAO equipoDAO,  IPosicionEquipoDAO posicionEquipoDAO) {
        this.equipoDAO = equipoDAO;
        this.posicionEquipoDAO = posicionEquipoDAO;
    }

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
}
