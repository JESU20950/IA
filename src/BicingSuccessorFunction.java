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
                int anadir = b.getRuta()[i][0][1] + b.getEstaciones().get(estacion).getNumBicicletasNoUsadas();
                if (anadir > 30) anadir = 30;
                System.out.println(anadir);
                System.out.println(b.getRuta()[i][0][1]);
                int num = new Random().nextInt(anadir);
                BicingBoard s = new BicingBoard();
                s.setRuta(b.getRuta());
                s.getRuta()[i][0][1] += num;
                sucesor.add(new Successor(Integer.toString(i), s));
            }
        }
        return sucesor;
    }
}
