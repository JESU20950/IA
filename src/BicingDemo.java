import IA.Bicing.Estaciones;

public class BicingDemo {
    public static void main(String[] args) {
        int nest = 25;
        int nbic = 1250;
        int dem = Estaciones.EQUILIBRIUM;
        int seed = 15;
        int nfurgonetas = 5;
        Estaciones estaciones = new Estaciones(nest, nbic, dem, seed);
        BicingBoard bc = new BicingBoard(estaciones , 5);
        HillClimbingSearch();
        //SimulatedAnnealingSearch();


    }

    private static void HillClimbingSearch() {
        System.out.println("\nTSP HillClimbing  -->");
        try {



        } catch (Exception e) {
            e.printStackTrace();
        }

    }

    private static void SimulatedAnnealingSearch() {

    }
}
