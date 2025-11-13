package com.patrones;
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

            IPilotosService pilotosService = new PilotosService(pilotoDAO,posicionPilotoDAO);
            ICircuitosService circuitosService = new CircuitosService(circuitoDAO);
            ICarreraService carreraService = new CarrerasService(carreraDAO,puntuacionService,pilotoDAO,posicionPilotoDAO,resultadoCarreraDAO,pilotoTemporadaDAO);
            IEquiposService equiposService = new EquiposService(equipoDAO,posicionEquipoDAO);
            ISimulacionService simulacionService = new SimulacionService(carreraDAO, resultadoCarreraDAO, pilotoDAO, puntuacionService, pilotoTemporadaDAO);

            ITemporadaService temporadaService = new TemporadaService(
                    pilotosService,
                    carreraService,
                    circuitosService,
                    simulacionService,
                    equiposService
            );

            // ✅ Inyectar la dependencia al menú
            MenuService menuService = new MenuService(temporadaService);

            menuService.mostrarMenuPrincipal();

        } catch (Exception e) {
            System.out.println("Ocurrió un error: " + e.getMessage());
        }
    }
}

