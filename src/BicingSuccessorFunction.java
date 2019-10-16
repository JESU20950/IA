import aima.search.framework.Successor;
import aima.search.framework.SuccessorFunction;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class BicingSuccessorFunction implements SuccessorFunction {

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
}
