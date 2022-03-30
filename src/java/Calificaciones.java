
import java.util.ArrayList;

/**
 *
 * @author salva
 */
public class Calificaciones {

    private final int[] ids = {1, 2, 3};
    private final String[] nombre = {"salva", "adri", "azmitia"};
    private final String[] apellido = {"garcia", "perez", "perez"};
    private final String[] carrera = {"ids", "ids", "ids"};
    private final String[] salon = {"201", "202", "203"};

    private ArrayList<Alumno> lista;

    private ArrayList<Calificaciones_Por_Alumno> lista2;
    
    public Calificaciones() {
        lista = new ArrayList<Alumno>();
        lista2 = new ArrayList<Calificaciones_Por_Alumno>();
        for (int palo = 0; palo < 3; palo++) {
            lista.add(new Alumno(palo, nombre[palo], apellido[palo], carrera[palo], salon[palo]));
            lista2.add(new Calificaciones_Por_Alumno(nombre[palo], "100", "88", "34"));
        }
    }
    

    public int id;
    public String materia;
    public double calificacion;

    public ArrayList<Alumno> getLista() {
        return lista;
    }
    
    public ArrayList<Calificaciones_Por_Alumno> getLista2() {
        return lista2;
    }

}
