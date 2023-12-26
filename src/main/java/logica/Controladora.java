package logica;

import java.util.List;
import persistencia.ControladoraPersistencia;

public class Controladora {
    ControladoraPersistencia contPers = new ControladoraPersistencia();
    
    //Operacion CREATE
    public void crearUsuario(Usuario usuario){
        contPers.crearUsuario(usuario);
    }
    
    //Operacion READ
    public List<Usuario> traerUsuarios(){
        return contPers.traerUsuarios();
    }

    public void borrarUsuario(int id_eliminar) {
        contPers.borrarUsuario(id_eliminar);
    }

    public Usuario traerUsuario(int id_usuario_edit) {
       return contPers.traerUsuario(id_usuario_edit);
    }

    public void editarUsuario(Usuario usu) {
        contPers.editarUsuario(usu);
    }
    
}
