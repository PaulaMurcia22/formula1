package com.patrones.service;

import com.patrones.Interface.Ipuntacion;

import java.util.Map;

public class PuntuacionService implements Ipuntacion {

    @Override
    public Map<Integer,Integer> puntuacion(){
        return Map.of(
                1, 25, 2, 18, 3, 15, 4, 12, 5, 10,
                6, 8, 7, 6, 8, 4, 9, 2, 10, 1
        );

    }
}
