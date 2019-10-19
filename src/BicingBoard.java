import IA.Bicing.Estaciones;

import java.util.Random;


public class BicingBoard {
    private static Estaciones estaciones;
    private static int n_estaciones;
    private static int n_furgonetas;
    private int [][][] ruta;
    /*
    La furgoneta i hace una ruta que va des de la estacion [i][0][0](origen) hasta la estacion [i][2][0](esta si es -1 significa que solo hace un viaje).
    La posción [i][0][1] pondremos cuantas bicicletas recoge la furgoneta (en negativo) i en el origen([i][0][0]) y en la posicion [i][1][1] i [i][2][1] pondremos cuantas bicicletas dejamos en la estacion [i][1][0] i [i][2][0].
     */

    //generación de estado inicial aleatorio
    public BicingBoard(Estaciones estaciones, int n_furgonetas){
        this.estaciones = estaciones;
        this.n_furgonetas = n_furgonetas;
        n_estaciones = estaciones.size();
        boolean estaciones_de_recogida [] = new boolean[n_estaciones]; //vector para comprobar si ya ha sido ocupado como origen para una furgoneta
        for (int i = 0; i<n_estaciones;++i) estaciones_de_recogida[i] = false;
        ruta = new int[n_furgonetas][3][2];
        for (int i = 0; i<n_furgonetas; ++i){
                int numero =new Random().nextInt(n_estaciones);
                while (estaciones_de_recogida[numero]) numero = new Random().nextInt(n_estaciones);
                estaciones_de_recogida[numero] = true;
                ruta[i][0][0] = numero;
                while ( numero == ruta[i][0][0]) numero = new Random().nextInt(n_estaciones);
                ruta[i][1][0] = numero;
                numero = new Random().nextInt(estaciones.get(ruta[i][0][0]).getNumBicicletasNoUsadas()) % 31;
                ruta[i][0][1] = -numero;
                ruta[i][1][1] = numero;
                ruta[i][2][0] = -1;
        }
    }

    public Estaciones getEstaciones() {
        return this.estaciones;
    }

    public int getN_estaciones() {
        return this.n_estaciones;
    }

    public int getN_furgonetas() {
        return this.n_furgonetas;
    }

    public int[][][] getRuta() {
        return ruta;
    }

    public void setRuta(int[][][] ruta) {
        this.ruta = new int[n_furgonetas][3][2];
        for (int i = 0; i < n_furgonetas; ++i) {
            for (int j = 0; j < 3; ++j) {
                for (int k = 0; k < 2; ++k) {
                    this.ruta[i][j][k] = ruta[i][j][k];
                }
            }
        }
    }

    public BicingBoard(){}

    //Lo que obtenemos por los traslados de las bicicletas , transporte es gratis (no funciona correctamente)
    public double biketransport(){
        //inicialización de estación
        double estaciones[] = new double[n_estaciones];
        for (int i = 0; i<n_estaciones; ++i) estaciones[i] = 0;

        //calculo de lo que queda en cada estación
        for (int furgoneta = 0; furgoneta<n_furgonetas; ++furgoneta){
            for (int j = 0; j<3; ++j) {
                if (ruta[furgoneta][j][0] != -1 ) estaciones[ruta[furgoneta][j][0]] +=  ruta[furgoneta][j][1];
            }
        }

        for (int i = 0; i< n_estaciones; ++i){
            //System.out.println(estaciones[i]);
        }
        double beneficios = 0;
        //calculo de beneficios

        for (int i = 0; i<n_estaciones; ++i){
            int NumBicicletasNext = this.estaciones.get(i).getNumBicicletasNext();
            int Demanda = this.estaciones.get(i).getDemanda();
            int Bicicletas_sobrantes = NumBicicletasNext-Demanda;
            //System.out.println("Bicicletas sobrantes" + Bicicletas_sobrantes);
            if (Bicicletas_sobrantes < 0) {
                if (estaciones[i]<0){
                    beneficios += estaciones[i];
                }
                else if (Bicicletas_sobrantes+estaciones[i] > 0){
                    beneficios = beneficios - Bicicletas_sobrantes;
                }
                else{
                    beneficios = beneficios + estaciones[i];
                }

            }else if (Bicicletas_sobrantes+estaciones[i]<0){
                beneficios += Bicicletas_sobrantes+estaciones[i];
            }
        }
        return -beneficios;
    }

    public int distance_between_stations(int i, int j) {
        return Math.abs(estaciones.get(i).getCoordX() + estaciones.get(j).getCoordX()) + Math.abs(estaciones.get(i).getCoordY() + estaciones.get(j).getCoordY());
    }

    //Coste de la gasolina
    public double transportcost(){
        int sum = 0;
        for (int furgoneta = 0; furgoneta<n_furgonetas;++furgoneta){
         int nb = ruta[furgoneta][0][1];
         for (int j = 0; j<2;++j){
             if (ruta[furgoneta][j+1][0] != -1){
                 int km = distance_between_stations(ruta[furgoneta][j][0],ruta[furgoneta][j+1][0]);
                 sum -= km*((nb+9)/10);
                 nb = nb-ruta[furgoneta][j+1][1];
             }
         }
        }
        return sum;
    }

    public void print_info_ruta(){
        System.out.println("INFO RUTA");
        for (int i = 0; i<n_furgonetas; ++i){
            System.out.println("La furgoneta " + i + " hace la ruta:");
            for (int j = 0; j<2; ++j){
                if (ruta[i][j][0] != -1){
                    System.out.println("Estacion " +  ruta[i][j][0]);
                    System.out.println("Deja: " + ruta[i][j][1] + " bicicletas" );
                }
            }

        }
    }
    public void print_info_estaciones(){
        System.out.println("INFO ESTACIONES");
        for (int i = 0; i<n_estaciones; ++i){
            System.out.println("La estacion " + i + " tiene:");
            System.out.println("Bicis no usadas: " + estaciones.get(i).getNumBicicletasNoUsadas());
            System.out.println("Num Bicicletas Next: " + estaciones.get(i).getNumBicicletasNext());
            System.out.println("Demanda: " +  estaciones.get(i).getDemanda());
        }
    }
}
