import IA.Bicing.Estaciones;
import aima.search.framework.Problem;
import aima.search.framework.Search;
import aima.search.framework.SearchAgent;
import aima.search.informed.HillClimbingSearch;

import java.time.Duration;
import java.time.Instant;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;

public class BicingDemo {
    public static void main(String[] args) {
        Instant start = Instant.now();
        int nest = 25;
        int nbic = 1250;
        int dem = Estaciones.EQUILIBRIUM;
        int seed = 1234;
        int nfurgonetas = 5;
        Estaciones estaciones = new Estaciones(nest, nbic, dem, seed);
        BicingBoard bc = new BicingBoard(estaciones , nfurgonetas);
        //bc.print_info_estaciones();
        //bc.print_info_ruta();
        System.out.println("Coste inicial: " + bc.biketransport());
        HillClimbingSearch(bc);
        Instant finish = Instant.now();
        long timeElapsed = Duration.between(start,finish).toMillis();
        System.out.println("\n\nEl tiempo de ejecucion es de " + timeElapsed +" milisegundos.");
        }

    private static void HillClimbingSearch(BicingBoard b) {
        System.out.println("\nTSP HillClimbing  -->");
        try {
            Problem problem = new Problem(b, new BicingSuccessorFunction(), new BicingGoalTest(), new BicingHeuristicFunction());
            Search search = new HillClimbingSearch();
            SearchAgent agent = new SearchAgent(problem, search);
            System.out.println();
            printActions(agent.getActions());
            printInstrumentation(agent.getInstrumentation());
        } catch (Exception e) {
            e.printStackTrace();
        }
    }

    private static void printInstrumentation(Properties properties) {
        Iterator keys = properties.keySet().iterator();
        while (keys.hasNext()) {
            String key = (String) keys.next();
            String property = properties.getProperty(key);
            System.out.println(key + " : " + property);
        }
    }

    private static void printActions(List actions) {
        for (int i = 0; i < actions.size(); ++i) {
            String action = (String) actions.get(i);
            System.out.println(action);
        }
    }

    private static void SimulatedAnnealingSearch() {

    }
}
