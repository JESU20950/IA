import aima.search.framework.SuccessorFunction;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class BicingSuccessorFunction implements SuccessorFunction {

    public List getSuccessors(Object o) {
        BicingBoard b = (BicingBoard) o;
        ArrayList<BicingBoard> sucesor = new ArrayList<BicingBoard>();
        sucesor.setRuta(b.getRuta());
        for (int i = 0; i < b.getRuta().length; ++i) { // Un bucle por cada furgoneta origen

        }
        return null;
    }
}
