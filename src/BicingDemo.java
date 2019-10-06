import IA.Bicing.Estacion;
import IA.Bicing.Estaciones;

public class BicingDemo {
    public static void main(String[] args) {
        int nest = 25;
        int nbic = 1250;
        int dem = Estaciones.EQUILIBRIUM;
        int seed = 15;
        Estaciones estaciones = new Estaciones(nest, nbic, dem, seed);
        HillClimbingSearch(estaciones);
        SimulatedAnnealingSearch(estaciones);


    }

    private static void HillClimbingSearch(Estaciones estaciones) {
        System.out.println("\nTSP HillClimbing  -->");
        try {



        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    private static void SimulatedAnnealingSearch(Estaciones estaciones) {

    }
}
