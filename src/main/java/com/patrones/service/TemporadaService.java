package com.patrones.service;

import com.patrones.Interface.*;
import com.patrones.Interface.DAO.*;
import com.patrones.entity.*;
import com.patrones.utils.Consola;


import java.util.*;

public class TemporadaService implements ITemporadaService {

    private final IPilotosService pilotosService;
    private final ICarreraService carreraService;
    private final ICircuitosService circuitosService;
    private final IEquiposService equiposService;
    private final ISimulacionService simularCarrerasPostCongelacion;

    public  TemporadaService (IPilotosService pilotosService, ICarreraService carreraService, ICircuitosService circuitosService, ISimulacionService simularCarrerasPostCongelacion, IEquiposService  equiposService) {
        this.pilotosService = pilotosService;
        this.carreraService = carreraService;
        this.circuitosService = circuitosService;
        this.simularCarrerasPostCongelacion = simularCarrerasPostCongelacion;
        this.equiposService = equiposService;
    }
    @Override
    public void mostrarPilotos(int anio){
        pilotosService.mostrarPilotos(anio);
    }
    @Override
    public void mostrarTablaPilotos(int anio){
        pilotosService.mostrarTablaPilotos(anio);
    }
    @Override
    public void mostrarEquipos(int anio){
        equiposService.mostrarEquipos(anio);
    }
    @Override
    public void mostrarTablaEquipos(int anio){
        equiposService.mostrarTablaEquipos(anio);
    }
    @Override
    public void mostrarCarreras(int anio){
        carreraService.mostrarCarreras(anio);
    }
    @Override
    public void ingresarResultadosCarrera(){
        carreraService.ingresarResultadosCarrera();
    }
    @Override
    public void mostrarCircuitos(int anio) {
        circuitosService.mostrarCircuitos(anio);
    }
    @Override
    public void  simularCarrerasPostCongelacion(){
        simularCarrerasPostCongelacion.simularCarrerasPostCongelacion();
    }


}
