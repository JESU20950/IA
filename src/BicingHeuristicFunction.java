import IA.Bicing.Estaciones;
import aima.search.framework.HeuristicFunction;

public class BicingHeuristicFunction implements HeuristicFunction {
    //solo maximización de lo que obtenemos por los traslados de bicicletas
    public double getHeuristicValue(Object state) {
        BicingBoard board = (BicingBoard) state;
        return board.biketransport();
    }
}
