import IA.Bicing.Estaciones;
import aima.search.framework.HeuristicFunction;

public class BicingHeuristicFunction implements HeuristicFunction {
    private boolean no_cost = false;
    //solo maximización de lo que obtenemos por los traslados de bicicletas
    public double getHeuristicValue(Object state) {
        BicingBoard board = (BicingBoard) state;
        return no_cost ? board.biketransport() : board.biketransport() + board.transportcost();
    }
}
