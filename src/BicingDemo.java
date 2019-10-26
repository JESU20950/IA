import IA.Bicing.Estaciones;
import aima.search.framework.Problem;
import aima.search.framework.Search;
import aima.search.framework.SearchAgent;
import aima.search.informed.HillClimbingSearch;
import aima.search.informed.SimulatedAnnealingSearch;

import java.time.Duration;
import java.time.Instant;
import java.util.Iterator;
import java.util.List;
import java.util.Properties;
import java.util.Random;

public class BicingDemo {
    static private boolean no_coste = true;

    public static void main(String[] args) {
        Instant start = Instant.now();
        int nest = 25;
        int nbic = 1250;
        int dem = Estaciones.EQUILIBRIUM;
        // 10 semillas aleatorias: -380253297, 596713320, 302418613, 980164065, -946974197, -332845435, 112165010, -138435806, -662535913, -407587065
        int seed = 1234; //new Random().nextInt(10000000);
        int nfurgonetas = 5;
        Estaciones estaciones = new Estaciones(nest, nbic, dem, seed);

        /*
        int nest = 3;
        int nbic = 90;
        int dem = Estaciones.EQUILIBRIUM;
        int seed =1234;
        int nfurgonetas = 1;
        Estaciones estaciones = new Estaciones(nest, nbic, dem, seed);
        // Mis estaciones personalizados
        estaciones.get(0).setNumBicicletasNoUsadas(30);
        estaciones.get(0).setNumBicicletasNext(30);
        estaciones.get(0).setDemanda(0);
        estaciones.get(1).setNumBicicletasNoUsadas(30);
        estaciones.get(1).setNumBicicletasNext(0);
        estaciones.get(1).setDemanda(20);
        estaciones.get(2).setNumBicicletasNoUsadas(30);
        estaciones.get(2).setNumBicicletasNext(0);
        estaciones.get(2).setDemanda(10);
        */

        BicingBoard bc = new BicingBoard(estaciones , nfurgonetas);
        //bc.print_info_estaciones();
        //bc.print_info_ruta();
        double coste = no_coste ? bc.biketransport() : bc.biketransport() + bc.transportcost();
        System.out.println("Coste inicial: " + coste);
        HillClimbingSearch(bc);
        //SimulatedAnnealingSearch(bc);
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
    private static void SimulatedAnnealingSearch(BicingBoard b) {
        System.out.println("\nTSP Simulated Annealing  -->");
        try {
            Problem problem = new Problem(b, new BicingSuccessorFunction(), new BicingGoalTest(), new BicingHeuristicFunction());
            SimulatedAnnealingSearch search = new SimulatedAnnealingSearch(200, 100, 5, 0.001);
            SearchAgent agent = new SearchAgent(problem, search);
            System.out.println();
            printActionsSimulatedAnnealing(agent.getActions());
            printInstrumentation(agent.getInstrumentation());
        }catch (Exception e) {
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

    private static void printActionsSimulatedAnnealing(List actions){
        for (int i = 0; i < actions.size(); ++i) {
            BicingBoard b = (BicingBoard) actions.get(i);
            System.out.println(b.biketransport());
        }
    }

}
