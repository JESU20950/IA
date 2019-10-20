import aima.search.framework.Successor;
import aima.search.framework.SuccessorFunction;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class BicingSuccessorFunction implements SuccessorFunction {

    // Recoger mas bicis en el origen
    private List take_more_bikes(Object o) {
        BicingBoard b = (BicingBoard) o;
        ArrayList successors = new ArrayList();
        for (int i = 0; i < b.getN_furgonetas(); ++i) {
            int station = b.getRuta()[i][0][0]; // Identificador de la estacion
            // Si la furgoneta esta en el origen
            if (station != -1) {
                int bikes_van = -b.getRuta()[i][0][1];
                int not_used_bikes = b.getEstaciones().get(station).getNumBicicletasNoUsadas();
                // Si nos quedan bicis que no se van a usar
                if (not_used_bikes > bikes_van) {
                    if (not_used_bikes > 30) not_used_bikes = 30;
                    int add = not_used_bikes - bikes_van;
                    for (int j = 1; j <= add; ++j) {
                        BicingBoard state = new BicingBoard();
                        state.setRuta(b.getRuta());
                        state.getRuta()[i][0][1] = state.getRuta()[i][0][1] - j;
                        //System.out.println(state.getRuta()[i][0][1] + " " + j + " " + i);
                        String info = "Coste " + state.biketransport() + " --> Añadir " + j + " bicicletas a la ciudad origen " + i;
                        successors.add(new Successor(info, state));
                    }
                }
            }
        }
        return successors;
    }

    // Recoger menos bicicletas en el origen
    private List take_less_bikes(Object o) {
        BicingBoard b = (BicingBoard) o;
        ArrayList successors = new ArrayList();
        for (int i = 0; i < b.getN_furgonetas(); ++i) {
            int station = b.getRuta()[i][0][0]; // Identificador de la estacion
            // Si la furgoneta esta en el origen
            if (station != -1) {
                int bikes_van = -b.getRuta()[i][0][1];
                // Si podemos dejar bicis
                if (bikes_van > 0) {
                    for (int j = 1; j <= bikes_van; ++j) {
                        BicingBoard state = new BicingBoard();
                        state.setRuta(b.getRuta());
                        state.getRuta()[i][0][1] = state.getRuta()[i][0][1] + j;
                        //System.out.println(state.getRuta()[i][0][1] + " " + j + " " + i);
                        String info = "Coste " + state.biketransport() + " --> Quitar " + j + " bicicletas a la ciudad origen " + i;
                        successors.add(new Successor(info, state));
                    }
                }
            }
        }
        return successors;
    }

    // Modificar la ruta de ambas ciudades destino
    private List modify_both_destinies(Object o) {
        BicingBoard b = (BicingBoard) o;
        ArrayList successors = new ArrayList();
        for (int i = 0; i<b.getN_furgonetas(); ++i) {
            int estacion_origen = b.getRuta()[i][0][0];
            if (estacion_origen != -1) {
                for (int j = 0; j < b.getN_estaciones(); ++j) {
                    if (estacion_origen != j) {
                        for (int k = 0; k < b.getN_estaciones(); ++k) {
                            if (estacion_origen != k && j != k) {
                                BicingBoard state = new BicingBoard();
                                state.setRuta(b.getRuta());
                                state.getRuta()[i][1][0] = j;
                                String info = "Coste " + state.biketransport() + " --> Modificar las ciudades destino de la furgoneta " + i + ", ciudad destino1 nuevo : " + j;
                                if (state.getRuta()[i][2][0] != -1) {
                                    state.getRuta()[i][2][0] = k;
                                    info += ", ciudad destino2 nuevo : " + k;
                                }
                                successors.add(new Successor(info, state));
                            }
                        }
                    }
                }
            }
        }
        return successors;
    }

    // Quitar la ruta destino de la ciudad 2
    private List erase_destination2(Object o) {
        BicingBoard b = (BicingBoard) o;
        ArrayList successors = new ArrayList();
        for (int i = 0; i < b.getN_furgonetas(); ++i) {
            BicingBoard state = new BicingBoard();
            state.setRuta(b.getRuta());
            state.getRuta()[i][2][0] = -1;
            String info = "Coste " + state.biketransport() + " --> La furgoneta " + i + " deja de usar ciudad destino2";
            successors.add(new Successor(info, state));
        }
        return successors;
    }

    // Quitar furgonetas
    private List erase_van(Object o) {
        BicingBoard b = (BicingBoard) o;
        ArrayList successors = new ArrayList();
        for (int i = 0; i < b.getN_furgonetas(); ++i) {
            BicingBoard state = new BicingBoard();
            state.setRuta(b.getRuta());
            state.getRuta()[i][2][0] = -1;
            state.getRuta()[i][1][0] = -1;
            state.getRuta()[i][0][0] = -1;
            String info = "Coste " + state.biketransport() + " --> La furgoneta " + i + " no se usa";
            successors.add(new Successor(info, state));
        }
        return successors;
    }

    // Anadir ciudad destino2
    private List add_destination2(Object o) {
        BicingBoard b = (BicingBoard) o;
        ArrayList successors = new ArrayList();
        for (int i = 0; i < b.getN_furgonetas(); ++i) {
            // No anadiremos una ciudad destino 2, si no existe previamente una ciudad destino 1
            if (b.getRuta()[i][1][0] != -1){
                for (int k = 0; k< b.getN_estaciones(); ++k){
                    if (b.getRuta()[i][1][0] != k && b.getRuta()[i][0][0] != k) {
                        BicingBoard state = new BicingBoard();
                        state.setRuta(b.getRuta());
                        state.getRuta()[i][2][0] = k;
                        state.getRuta()[i][1][1] = (-state.getRuta()[i][0][1])/2;
                        state.getRuta()[i][2][1] = - state.getRuta()[i][1][1] - state.getRuta()[i][0][1];
                        String info = "Coste " + state.biketransport() + " --> La furgoneta " + i;
                        info += " se le añade una nueva ciudad destino2 : " + k;
                        info += " en la ciudad destino1 dejara " + state.getRuta()[i][1][1] + " bicicletas, en la ";
                        info += "ciudad destino2 dejara " + state.getRuta()[i][2][1] + " bicicletas y en total habra ";
                        info += -state.getRuta()[i][0][1] + " bicicletas";
                        successors.add(new Successor(info, state));
                    }
                }
            }
        }
        return successors;
    }

    // Modificar el numero de bicicletas de las furgonetas
    private List drop_bikes(Object o) {
        BicingBoard b = (BicingBoard) o;
        ArrayList successors = new ArrayList();
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
                            String info = "Coste " + state.biketransport() + " --> ";
                            info += "Modificamos las cargas entre las estaciones de la furgoneta " + i;
                            info += ", en la ciudad origen recoge " + j + " bicicletas, en la ciudad destino1 ";
                            info += state.getRuta()[i][1][0] + " dejara " + state.getRuta()[i][1][1] + " bicicletas y";
                            info += "en la ciudad destino2 " + state.getRuta()[i][2][0] + " dejara " + state.getRuta()[i][2][1];
                            info += " bicicletas";
                            successors.add(new Successor(info, state));
                        }
                    }
                    if (b.getRuta()[i][2][0] == -1){
                        BicingBoard state = new BicingBoard();
                        state.setRuta(b.getRuta());
                        state.getRuta()[i][0][1] = -j;
                        state.getRuta()[i][1][1] = j;
                        String info = "Coste " + state.biketransport() + " --> ";
                        info += "Modificamos las cargas entre las estaciones de la furgoneta " + i;
                        info += ", en la ciudad origen recoge " + j + " bicicletas y en la ciudad destino1 ";
                        info += state.getRuta()[i][1][0] + " dejara " + state.getRuta()[i][1][1] + " bicicletas";
                        successors.add(new Successor(info, state));
                    }
                }
            }
        }
        return  successors;
    }

    // swap destino1 destino2
    private List swap_destinies(Object o) {
        BicingBoard b = (BicingBoard) o;
        ArrayList successors = new ArrayList();
        for (int i = 0; i < b.getN_furgonetas(); ++i) {
            int destination1 = b.getRuta()[i][1][0];
            int destination2 = b.getRuta()[i][2][0];
            if (destination1 != -1 && destination2 != -1) {
                BicingBoard state = new BicingBoard();
                state.setRuta(b.getRuta());
                state.getRuta()[i][1][0] = destination2;
                state.getRuta()[i][2][0] = destination1;
                //System.out.println(destination1 + " " + state.getRuta()[i][2][0] + " " + destination2 + " " + state.getRuta()[i][1][0]);
                String info = "Intercambiamos las ciudades destino de la furgoneta " + i;
                successors.add(new Successor(info, state));
            }
        }
        return successors;
    }

    public List getSuccessors(Object o) {
        BicingBoard b = (BicingBoard) o;
        ArrayList successors = new ArrayList();
        ArrayList aux = new ArrayList();
        aux = (ArrayList) take_more_bikes(o);
        successors.addAll(aux);
        aux = (ArrayList) take_less_bikes(o);
        successors.addAll(aux);
        aux = (ArrayList) modify_both_destinies(o);
        successors.addAll(aux);
        aux = (ArrayList) erase_destination2(o);
        successors.addAll(aux);
        aux = (ArrayList) erase_van(o);
        successors.addAll(aux);
        aux = (ArrayList) add_destination2(o);
        successors.addAll(aux);
        aux = (ArrayList) drop_bikes(o);
        successors.addAll(aux);
        aux = (ArrayList) swap_destinies(o);
        successors.addAll(aux);
        return successors;
    }

     //Get successors Jesus Molina
    /*public List getSuccessors(Object o){
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
                                if (state.getRuta()[i][2][0] != -1) state.getRuta()[i][2][0] = k;
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


            if (b.getRuta()[i][1][0] != -1){
                //Añadir una ciudad2
                for (int k = 0; k< b.getN_estaciones(); ++k){
                    if (b.getRuta()[i][1][0] != k && b.getRuta()[i][0][0] != k) {
                        BicingBoard state_add_city2 = new BicingBoard();
                        state_add_city2.setRuta(b.getRuta());
                        state_add_city2.getRuta()[i][2][0] = k;
                        state_add_city2.getRuta()[i][1][1] = (-state_add_city2.getRuta()[i][0][1])/2;
                        state_add_city2.getRuta()[i][2][1] = -state_add_city2.getRuta()[i][1][1] - state_add_city2.getRuta()[i][0][1];
                        String info3 = "Coste " + state_add_city2.biketransport() + " --> El camión empieza a usar ciudad 2 " + k + " dejara una cantidad de bicis " + state_add_city2.getRuta()[i][2][1];
                        info3 = info3 + " y la ciudad 1 dejara una cantidad de bicis " + state_add_city2.getRuta()[i][1][1] + " .Bicis en total " + state_add_city2.getRuta()[i][0][1];
                        successors.add(new Successor(info3, state_add_city2));
                    }
                }
            }

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
                            String info = "Modificamos las cargas entre estaciones de la furgoneta " + i + " ahora recoge " + j + " bicis. Deja en la estacion "+  state.getRuta()[i][0][1] + state.getRuta()[i][1][1] +  " bicis y deja en la estacion ";
                            info = info + state.getRuta()[i][2][0] + state.getRuta()[i][2][1] + " bicis.";
                            info = "Coste " + state.biketransport() + " --> " + info;
                            successors.add(new Successor(info, state));
                        }
                    }
                    if (b.getRuta()[i][2][0] == -1){
                        BicingBoard state = new BicingBoard();
                        state.setRuta(b.getRuta());
                        state.getRuta()[i][0][1] = -j;
                        state.getRuta()[i][1][1] = j;
                        String info = "Modificamos las cargas entre estaciones de la furgoneta " + i + " ahora recoge " + j + " bicis. Deja en la estacion "+ state.getRuta()[i][1][0]+ " " + state.getRuta()[i][1][1] + " bicis.";
                        info = "Coste " + state.biketransport() + " --> " + info;
                        successors.add(new Successor(info, state));
                    }
                }
            }
        }
        return  successors;
    }*/

}
