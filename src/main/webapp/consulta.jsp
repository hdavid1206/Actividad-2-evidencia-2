<%-- 
    Document   : consulta.jsp
    Created on : 2/05/2025, 7:26:35 a. m.
    Author     : Personal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="com.miproyecto.modelo.Usuario"%>
<%@page import="java.util.List"%>
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
                <div>
                    <h2>Resultado de la búsqueda</h2>
                    
                    <% if (request.getAttribute("usuarioBuscado") != null) { %>    
                        <% Usuario usuario = (Usuario)request.getAttribute("usuarioBuscado"); %>
                        <table>
                            <tr>
                                <th>Nombre</th>
                                <th>Apellido</th>
                                <th>Email</th>
                            </tr>
                            <tr>
                                <td><%= usuario.getNombre() %></td>
                                <td><%= usuario.getApellido() %></td>
                                <td><%= usuario.getEmail() %></td>
                            </tr>
                        </table>
                    <% } else { %>
                        <div class="not-found">
                            No se encontró ningún usuario con el email especificado.
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
                    <% for (Usuario u : listaUsuarios) { %>
                    <tr>
                        <td><%= u.getNombre() %></td>
                        <td><%= u.getApellido() %></td>
                        <td><%= u.getEmail() %></td>
                    </tr>
                    <% } %>
                </table>
            <% } else { %>
                <p>No hay usuarios registrados en el sistema.</p>
            <% } %>
            
            <div class="menu">
                <a href="index.jsp">Volver a Inicio</a>
                <a href="registro">Registrar Usuario</a>
            </div>
        </div>
    </body>
</html>