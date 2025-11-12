package com.patrones;
import com.patrones.entity.*;
import com.patrones.service.ConnectionBD;
import com.patrones.service.dao.*;
import com.patrones.service.*;
import com.patrones.Interface.*;
import com.patrones.Interface.DAO.*;


public class Main {
    public static void main(String[] args) {
        try {
            IConectionProvider conexionBD = new ConnectionBD();

            // Crear DAOs concretos
            IPilotoDAO pilotoDAO = new PilotoDAO(conexionBD);
            IEquipoDAO equipoDAO = new EquipoDAO(conexionBD);
            ICircuitoDAO circuitoDAO = new CircuitoDAO(conexionBD);
            IPosicionPilotoDAO posicionPilotoDAO = new PosicionPilotoDAO(conexionBD);
            IPosicionEquipoDAO posicionEquipoDAO = new PosicionEquipoDAO(conexionBD);
            IPilotoTemporadaDAO pilotoTemporadaDAO = new PilotoTemporadaDAO(conexionBD);
            ICarreraDAO carreraDAO = new CarreraDAO(conexionBD);
            IResultadoCarreraDAO resultadoCarreraDAO = new ResultadoCarreraDAO(conexionBD);
            Ipuntacion puntuacionService = new PuntuacionService();

            // Crear el servicio de temporada con todas las dependencias
            ItemporadaService temporadaService = new TemporadaService(
                    pilotoDAO,
                    equipoDAO,
                    circuitoDAO,
                    posicionPilotoDAO,
                    posicionEquipoDAO,
                    pilotoTemporadaDAO,
                    carreraDAO,
                    resultadoCarreraDAO,
                    puntuacionService
            );

            // ✅ Inyectar la dependencia al menú
            MenuService menuService = new MenuService(temporadaService);

            menuService.mostrarMenuPrincipal();

        } catch (Exception e) {
            System.out.println("Ocurrió un error: " + e.getMessage());
        }
    }
}

