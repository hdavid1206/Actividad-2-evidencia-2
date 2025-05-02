<%-- 
    Document   : consulta.jsp
    Created on : 2/05/2025, 7:26:35 a. m.
    Author     : Personal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Consulta de Usuarios</title>
    </head>
    <body>
        <div class="container">
            <h1>Consulta de Usuarios</h1>
            
            <form action="consulta" method="GET">
                <div class="form-group">
                    <label for="email">Buscar usuario por email:</label>
                    <input type="email" id="email" name="email" required>
                    <button type="submit" class="btn">Buscar</button>
                </div>
            </form>
            
            <% if (request.getAttribute("busquedaRealizada") != null) { %>
                <div
                    <h2>Resultado de la búsqueda</h2>
                    
                <% if (request.getAttribute("usuarioBuscado") != null) { %>    
                    <% Usuario usuario = (Usuario)request.getAttribute("usaurioBuscando"); %>
                    <table>
                        <tr>
                            <th>Nombre</th>
                            <th>Apellido</th>
                            <th>Email</th>
                        </tr>
                        <tr>
                            <td><%=usuario.getNombre() %></td>
                            <td><%=usuario.getApellido() %></td>
                            <td><%=usuario.getEmail() %></td>
                        </tr>
                    </table>
                <% } else { %>
                <div class="not-found">
                    No se encontró ningun usuario con el email especificado.
                </div>
            <% } %> 
        </div>
    <% } %> 
    
    <h2>Lista de Usuarios Registrados</h2>
    <%
        List<Usuario> listaUsuarios = (List<Usuario>)session.getAttribute("listaUsuarios");
        if (listaUsuarios != null && !listaUsuarios.isEmpty()) {
    %>
    <table>
        <tr>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>Email</th>
        </tr>
        <% } %>
    </table>
    <% } else { %>
    <p>No hay usuaarios registrados en el sistema.</p>
    <% } %>
    
    <div class="menu">
        <a href="index.jsp">Volver a Inicio</a>
        <a href="Registrar Usuario"></a>
    </div>
    </body>
</html>
