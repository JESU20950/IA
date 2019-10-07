import IA.Bicing.Estaciones;



public class BicingBoard {
    private static Estaciones estaciones;
    private static int n_estaciones;
    private static int n_furgonetas;
    int [][][] ruta;
    /*
    La furgoneta i hace una ruta que va des de la estacion [i][0][0](origen) hasta la estacion [i][2][0](esta si es -1 significa que solo hace un viaje).
    La posción [i][0][1] pondremos cuantas bicicletas recoge la furgoneta(en negativo) i en el origen([i][0][0]) y en la posicion [i][1][1] i [i][2][1] pondremos cuantas bicicletas dejamos en la estacion [i][1][0] i [i][2][0].
     */


    //generación de estado inicial aleatorio
    public BicingBoard(Estaciones estaciones, int n_furgonetas){
        this.estaciones = estaciones;
        this.n_furgonetas = n_furgonetas;
        n_estaciones = estaciones.size();
        boolean estaciones_de_recogida [] = new boolean[n_estaciones]; //vector para comprobar si ya ha sido ocupado como origen para una furgoneta
        for (int i = 0; i<n_estaciones;++i) estaciones_de_recogida[i] = false;

        ruta = new int[n_furgonetas][3][1];
        for (int i = 0; i<n_furgonetas; ++i){
                int numero = (int) (Math.random()%(estaciones.size()));
                while (estaciones_de_recogida[numero]) numero = (int) (Math.random()%(estaciones.size()));
                estaciones_de_recogida[numero] = true;
                ruta[i][0][0] = numero;
                numero = (int) (Math.random()%estaciones.get(numero).getNumBicicletasNoUsadas());
                ruta[i][0][1] = numero;
                ruta[i][1][0] = -1;
                ruta[i][2][0] = -1;
        }
    }

    //Lo que obtenemos por los traslados de las bicicletas , transporte es gratis
    public double gettransportvalue(){
        //inicialización de estación
        double estaciones[] = new double[n_estaciones];
        for (int i = 0; i<n_estaciones; ++i) estaciones[i] = 0;

        //calculo de lo que queda en cada estación
        for (int furgoneta = 0; furgoneta<n_furgonetas; ++furgoneta){
            for (int j = 0; j<3; ++j) {
                if (! (ruta[furgoneta][j][0] == -1) ) estaciones[ruta[furgoneta][j][0]] +=  ruta[furgoneta][j][1];
            }
        }

        double beneficios = 0;
        //calculo de beneficios
        for (int i = 0; i<n_estaciones; ++i){
            int NumBicicletasNext = this.estaciones.get(i).getNumBicicletasNext();
            int Demanda = this.estaciones.get(i).getDemanda();

        }
    }

}
