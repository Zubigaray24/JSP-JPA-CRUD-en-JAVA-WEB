package persistencia;

import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import logica.Usuario;
import persistencia.exceptions.NonexistentEntityException;

public class ControladoraPersistencia {
    
    UsuarioJpaController usuJPA = new UsuarioJpaController();
    
    
    //Operacion CREATE
    public void crearUsuario(Usuario usuario){
        
        usuJPA.create(usuario);
    }
    
    //Operacion READ
    public List<Usuario> traerUsuarios(){
        return usuJPA.findUsuarioEntities();
    }

    public void borrarUsuario(int id_eliminar) {
        try {
            usuJPA.destroy(id_eliminar);
        } catch (NonexistentEntityException ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    public Usuario traerUsuario(int id_usuario_edit) {
       return usuJPA.findUsuario(id_usuario_edit);
    }

    public void editarUsuario(Usuario usu) {
        try {
            usuJPA.edit(usu);
        } catch (Exception ex) {
            Logger.getLogger(ControladoraPersistencia.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
    
    
}
