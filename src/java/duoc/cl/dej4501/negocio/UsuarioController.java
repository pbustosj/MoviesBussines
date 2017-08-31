package duoc.cl.dej4501.negocio;

import duoc.cl.dej4501.entidades.Usuario;
import java.util.LinkedList;

public class UsuarioController {

    private LinkedList<Usuario> listaUsuario;

    public UsuarioController() {
    }

    public UsuarioController(LinkedList<Usuario> listaUsuario) {
        this.listaUsuario = listaUsuario;
    }

    public Usuario show(int id) {
        Usuario objUsuario = null;
        for (int i = 0; i < listaUsuario.size(); i++) {
            if (listaUsuario.get(i).getId() == id) {
                objUsuario = new Usuario(listaUsuario.get(i).getId(), listaUsuario.get(i).getNombre(), listaUsuario.get(i).getPassword());
            }
        }
        return objUsuario;
    }

    public Usuario login(String nombre, String password) {
        Usuario objUsuario = null;
        for (int i = 0; i < listaUsuario.size(); i++) {
            if (listaUsuario.get(i).getNombre().compareToIgnoreCase(nombre) == 0
                    && listaUsuario.get(i).getPassword().compareToIgnoreCase(password) == 0) {
                objUsuario = new Usuario(listaUsuario.get(i).getId(), listaUsuario.get(i).getNombre(), listaUsuario.get(i).getPassword());
                
            }
        }
        return objUsuario;

    }
}
