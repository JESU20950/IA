import aima.search.framework.SuccessorFunction;

import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class BicingSuccessorFunction implements SuccessorFunction {

    public List getSuccessors(Object o) {
        BicingBoard b = (BicingBoard) o;
        ArrayList<BicingBoard> sucesor = new ArrayList<BicingBoard>();
        for (int i = 0; i < b.getN_furgonetas(); ++i) { // Un bucle por cada furgoneta origen
            if (b.)
        }
        return null;
    }
}
