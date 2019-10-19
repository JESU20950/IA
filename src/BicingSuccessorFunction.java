import aima.search.framework.Successor;
import aima.search.framework.SuccessorFunction;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class BicingSuccessorFunction implements SuccessorFunction {
    /*
    public List getSuccessors(Object o) {
        BicingBoard b = (BicingBoard) o;
        ArrayList sucesor = new ArrayList();
        for (int i = 0; i < b.getN_furgonetas(); ++i) { // Un bucle por cada furgoneta origen
            int estacion = b.getRuta()[i][0][0]; // Identificador de la estacion
            if (b.getEstaciones().get(estacion).getNumBicicletasNoUsadas() > b.getRuta()[i][0][1]) {
                int bicis_furgoneta = -b.getRuta()[i][0][1];
                int bicis_no_usadas = b.getEstaciones().get(estacion).getNumBicicletasNoUsadas();
                if (bicis_no_usadas > 30) bicis_no_usadas = 30;
                int anadir = bicis_no_usadas - bicis_furgoneta;
                //System.out.println(i + " " + b.getRuta()[i][0][1]);
                //System.out.println(anadir);
                int num = new Random().nextInt(anadir);
                BicingBoard s = new BicingBoard();
                s.setRuta(b.getRuta());
                s.getRuta()[i][0][1] = s.getRuta()[i][0][1] - num;
                //System.out.println(s.getRuta()[i][0][1]);
                String R = "Coste " + s.biketransport() +" --> Añadir "+ num + " al origen ";
                //sucesor.add(new Successor(R, s));
            }
        }
        return sucesor;
    }
    */
     //Get successors Jesus Molina
    public List getSuccessors(Object o){
        BicingBoard b = (BicingBoard) o;
        ArrayList successors = new ArrayList();
        //Modificar rutas
        for (int i = 0; i<b.getN_furgonetas(); ++i){
            int estacion_origen = b.getRuta()[i][0][0];
            //Modificar ruta destino
            if (estacion_origen != -1) {
                for (int j = 0; j < b.getN_estaciones(); ++j) {
                    if (estacion_origen != j) {
                        for (int k = 0; k < b.getN_estaciones(); ++k) {
                            if (estacion_origen != k && j != k) {
                                BicingBoard state = new BicingBoard();
                                state.setRuta(b.getRuta());
                                state.getRuta()[i][1][0] = j;
                                state.getRuta()[i][2][0] = k;
                                String info = "Coste " + state.biketransport() + " --> Modificar ciudades de destino camion " + i + " Ciudad1 nueva  : " + j + " Ciudad2 nueva  : " + k;
                                successors.add(new Successor(info, state));
                            }
                        }
                    }
                }
            }
            //No usar ciudad 2
            BicingBoard state = new BicingBoard();
            state.setRuta(b.getRuta());
            state.getRuta()[i][2][0] = -1;
            String info = "Coste " + state.biketransport() + " --> El camion " + i + " deja de usar Ciudad2";
            successors.add(new Successor(info,state));
            //No usar camion
            BicingBoard state2 = new BicingBoard();
            state2.setRuta(b.getRuta());
            state2.getRuta()[i][2][0] = -1;
            state2.getRuta()[i][1][0] = -1;
            state2.getRuta()[i][0][0] = -1;
            String info2 = "Coste " + state2.biketransport() + " --> El camion " + i + " no se usa";
            successors.add(new Successor(info2,state2));

            /*
            if (b.getRuta()[i][1][0] != -1){
                //Añadir una ciudad2
                for (int k = 0; k< b.getN_estaciones(); ++k){
                    if (b.getRuta()[i][1][0] != k && b.getRuta()[i][0][0] != k) {
                        BicingBoard state_add_city2 = new BicingBoard();
                        state_add_city2.setRuta(b.getRuta());
                        state_add_city2.getRuta()[i][2][0] = k;
                        state_add_city2.getRuta()[i][1][1] = (-state_add_city2.getRuta()[i][0][1])/2;
                        state_add_city2.getRuta()[i][2][1] = state_add_city2.getRuta()[i][1][1] + state_add_city2.getRuta()[i][0][1];
                        String info3 = "Coste " + state_add_city2.biketransport() + " --> El camión empieza a usar ciudad 2 " + k + " dejara una cantidad de bicis " + state_add_city2.getRuta()[i][2][1];
                        info3 = info3 + " y la ciudad 1 dejara una cantidad de bicis " + state_add_city2.getRuta()[i][1][1] + " .Bicis en total " + state_add_city2.getRuta()[i][0][1];
                        successors.add(new Successor(info3, state_add_city2));
                    }
                }
            }
             */
        }

        //Modificar cargas
        for (int i = 0; i<b.getN_furgonetas(); ++i){
            if (b.getRuta()[i][0][0] != -1) {
                int bicis_disponibles = (b.getEstaciones().get(b.getRuta()[i][0][0]).getNumBicicletasNoUsadas());
                if (bicis_disponibles > 30) bicis_disponibles = 30;
                for (int j = 1; j <= bicis_disponibles; ++j) {
                    for (int k = 1; k < j; ++k) {
                        if (b.getRuta()[i][2][0] != -1) {
                            BicingBoard state = new BicingBoard();
                            state.setRuta(b.getRuta());
                            state.getRuta()[i][0][1] = -j;
                            state.getRuta()[i][1][1] = k;
                            state.getRuta()[i][2][1] = j - k;
                            String info = "Modificamos las cargas entre estaciones de la furgoneta " + i + " ahora recoge " + j + " bicis. Deja en la estacion 1 " + state.getRuta()[i][1][1] + " bicis y deja en la estacion 2 ";
                            info = info + state.getRuta()[i][2][1] + " bicis.";
                            info = "Coste " + state.biketransport() + " --> " + info;
                            successors.add(new Successor(info, state));
                        }
                    }
                    if (b.getRuta()[i][2][0] == -1){
                        BicingBoard state = new BicingBoard();
                        state.setRuta(b.getRuta());
                        state.getRuta()[i][0][1] = -j;
                        state.getRuta()[i][1][1] = j;
                        String info = "Modificamos las cargas entre estaciones de la furgoneta " + i + " ahora recoge " + j + " bicis. Deja en la estacion 1 " + state.getRuta()[i][1][1];
                        info = "Coste " + state.biketransport() + " --> " + info;
                        successors.add(new Successor(info, state));
                    }
                }
            }
        }
        return  successors;
    }

}
