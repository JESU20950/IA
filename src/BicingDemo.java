import IA.Bicing.Estaciones;

public class BicingDemo {
    public static void main(String[] args) {
        int nest = 2;
        int nbic = 1500;
        int dem = Estaciones.EQUILIBRIUM;
        int seed = 15;
        int nfurgonetas = 2;
        Estaciones estaciones = new Estaciones(nest, nbic, dem, seed);
        BicingBoard bc = new BicingBoard(estaciones , nfurgonetas);
        bc.print_info_estaciones();
        bc.print_info_ruta();
        System.out.println(bc.biketransport());
        //System.out.println(bc.transportcost());


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
