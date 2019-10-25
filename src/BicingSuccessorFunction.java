import aima.search.framework.Successor;
import aima.search.framework.SuccessorFunction;

import javax.swing.plaf.basic.BasicCheckBoxMenuItemUI;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class BicingSuccessorFunction implements SuccessorFunction {

    // Recoger mas bicis en el origen
    /*private List take_more_bikes(Object o) {
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
    }*/

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

    private List add_van(Object o) {
        BicingBoard b = (BicingBoard) o;
        ArrayList successors = new ArrayList();
        boolean ciudades_origen_ocupadas[] = new boolean[b.getN_estaciones()];
        for (int i = 0; i < b.getN_estaciones(); ++i) ciudades_origen_ocupadas[i] = false;
        for (int i = 0; i < b.getN_furgonetas(); ++i) if (b.getRuta()[i][0][0] != -1) ciudades_origen_ocupadas[b.getRuta()[i][0][0]] = true;
        for (int i = 0; i < b.getN_furgonetas(); ++i) {
            if (b.getRuta()[i][0][0] == -1) {
                for (int j = 0; j < b.getN_estaciones(); ++j) {
                    if (!ciudades_origen_ocupadas[j]) {
                        for (int k = 0; k < b.getN_estaciones(); ++k) {
                            if (j != k && b.getEstaciones().get(j).getNumBicicletasNext() - b.getEstaciones().get(j).getDemanda() > 0 && b.getEstaciones().get(j).getNumBicicletasNoUsadas() > 0) {
                                ciudades_origen_ocupadas[j] = true;
                                int bicis = b.getEstaciones().get(j).getNumBicicletasNoUsadas();
                                if (bicis > 30) bicis = 30;
                                BicingBoard state = new BicingBoard();
                                state.setRuta(b.getRuta());
                                state.getRuta()[i][0][0] = j;
                                state.getRuta()[i][1][0] = k;
                                state.getRuta()[i][0][1] = -bicis;
                                state.getRuta()[i][1][1] = bicis;
                                String info = "Coste " + state.biketransport() + " --> Se añade la furgoneta " + i;
                                info += " con ciudad origen " + j + ", ciudad destino1 " + k + " y cargando " + bicis;
                                info += " bicis";
                                info += state.print_info_ruta_string();
                                successors.add(new Successor(info, state));
                            }
                        }
                    }
                }
            }
        }
        return  successors;
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
                        for (int l = 1; l<-b.getRuta()[i][0][1]; ++l) {
                            BicingBoard state = new BicingBoard();
                            state.setRuta(b.getRuta());
                            state.getRuta()[i][2][0] = k;
                            state.getRuta()[i][1][1] = l;
                            state.getRuta()[i][2][1] = -b.getRuta()[i][0][1] - state.getRuta()[i][1][1];
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

    private List empty_initial_state_set_operators(Object o) {
        BicingBoard b = (BicingBoard) o;
        ArrayList successors = new ArrayList();

        return successors;
    }

    public List getSuccessorsHillClimbing(Object o) {
        BicingBoard b = (BicingBoard) o;
        ArrayList successors = new ArrayList();
        ArrayList aux = new ArrayList();
        aux = (ArrayList) add_van(o);
        successors.addAll(aux);
        //aux = (ArrayList) modify_both_destinies(o);
        //successors.addAll(aux);
        //aux = (ArrayList) erase_destination2(o);
        //successors.addAll(aux);
        //aux = (ArrayList) erase_van(o);
        //successors.addAll(aux);
        aux = (ArrayList) add_destination2(o);
        successors.addAll(aux);
        aux = (ArrayList) drop_bikes(o);
        successors.addAll(aux);
        //aux = (ArrayList) swap_destinies(o);
        //successors.addAll(aux);
        return successors;
    }
    public List getSuccessorsSimulatedAnnealingSearch(Object o){
        List aux = getSuccessorsHillClimbing(o);
        int i  =new Random().nextInt(aux.size());
        ArrayList successors = new ArrayList();
        successors.add(aux.get(i));
        return successors;
    }
    public List getSuccessors(Object o){
        return getSuccessorsHillClimbing(o);
        //return getSuccessorsSimulatedAnnealingSearch(o);
    }
}
