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
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Consulta de Usuarios</title>
        <style>
            /* Estilos generales */
            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            }

            body {
                background-color: #121212;
                color: #e0e0e0;
                line-height: 1.6;
                min-height: 100vh;
                display: flex;
                justify-content: center;
                align-items: center;
            }

            .container {
                width: 90%;
                max-width: 800px;
                padding: 2rem;
                background-color: #1e1e1e;
                border-radius: 8px;
                box-shadow: 0 4px 20px rgba(0, 0, 0, 0.5);
            }

            h1, h2 {
                color: #50b3ff;
                margin-bottom: 1.5rem;
                text-align: center;
            }

            h1 {
                font-size: 2rem;
                border-bottom: 2px solid #333;
                padding-bottom: 0.5rem;
            }

            h2 {
                font-size: 1.5rem;
                margin-top: 2rem;
            }

            /* Formularios */
            .form-group {
                margin-bottom: 1.5rem;
                display: flex;
                flex-wrap: wrap;
                gap: 0.5rem;
                align-items: flex-end;
            }

            label {
                display: block;
                margin-bottom: 0.5rem;
                color: #bbbbbb;
                font-weight: 500;
                width: 100%;
            }

            input {
                flex: 1;
                padding: 0.8rem;
                border: 1px solid #333;
                border-radius: 4px;
                background-color: #2a2a2a;
                color: #e0e0e0;
                font-size: 1rem;
                transition: all 0.3s ease;
            }

            input:focus {
                outline: none;
                border-color: #50b3ff;
                box-shadow: 0 0 0 2px rgba(80, 179, 255, 0.2);
            }

            .btn {
                background-color: #50b3ff;
                color: #fff;
                border: none;
                padding: 0.8rem 1.5rem;
                font-size: 1rem;
                border-radius: 4px;
                cursor: pointer;
                font-weight: 600;
                transition: all 0.3s ease;
                display: inline-block;
                text-align: center;
            }

            .btn:hover {
                background-color: #3a8cce;
                transform: translateY(-2px);
            }

            .btn:active {
                transform: translateY(0);
            }

            /* Tablas */
            table {
                width: 100%;
                border-collapse: collapse;
                margin: 1.5rem 0;
                background-color: #252525;
                border-radius: 6px;
                overflow: hidden;
            }

            th, td {
                padding: 1rem;
                text-align: left;
                border-bottom: 1px solid #333;
            }

            th {
                background-color: #333;
                color: #50b3ff;
                font-weight: 600;
            }

            tr:hover {
                background-color: #2a2a2a;
            }

            /* Mensajes y alertas */
            .not-found {
                padding: 1rem;
                margin: 1rem 0;
                border-radius: 4px;
                background-color: #2d2626;
                border-left: 4px solid #ff5050;
                color: #ffb8b8;
            }

            /* Enlaces y navegación */
            .menu {
                display: flex;
                justify-content: center;
                gap: 1rem;
                margin-top: 2rem;
                padding-top: 1.5rem;
                border-top: 1px solid #333;
            }

            a {
                color: #50b3ff;
                text-decoration: none;
                transition: all 0.3s ease;
            }

            a:hover {
                color: #79c5ff;
                text-decoration: underline;
            }

            /* Responsividad */
            @media (max-width: 768px) {
                .container {
                    width: 95%;
                    padding: 1rem;
                }
                
                h1 {
                    font-size: 1.8rem;
                }
                
                table {
                    font-size: 0.9rem;
                }
                
                th, td {
                    padding: 0.7rem;
                }
                
                .menu {
                    flex-direction: column;
                    align-items: center;
                }
                
                .form-group {
                    flex-direction: column;
                    align-items: stretch;
                }
                
                .form-group button {
                    width: 100%;
                }
            }
        </style>
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