<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
            <h1>Datos del usuario</h1>
            <form action="SvUsuarios" method="POST">
                <p><label>Dni: </label><input type="text" name="dni"></p>
                <p><label>Nombre: </label><input type="text" name="nombre"></p>
                <p><label>Apellido: </label><input type="text" name="apellido"></p>
                <p><label>Telefono: </label><input type="text" name="telefono"></p>
                <button type="submit">Enviar</button>
            </form>
            
            <h1>Ver usuarios</h1>
            <p>Para ver la lista de usuarios haga click en el siguiente boton</p>
            <form action="SvUsuarios" method="GET">
                <h1>Ver lista de usuarios</h1>
                <button type="submit">Mostrar usuarios</button>
            </form>
            
            <h1>Eliminar usuario</h1>
            <p>Ingrese la id del usuario a eliminar</p>
            <form action="SvEliminar" method="POST">
                <p><label>Id: </label><input type="text" name="id_usuario"></p>
                <button type="submit">Eliminar usuario</button>
            </form>
            
            <h1>Editar usuario</h1>
            <p>Ingrese la id del usuario a editar</p>
            <form action="SvEditar" method="GET">
                <p><label>Id: </label><input type="text" name="id_usuario_edit"></p>
                <button type="submit">Editar usuario</button>
            </form>
            
    </body>
</html>
