
<%-- 
    Document   : registro.jsp
    Created on : 2/05/2025, 7:26:25 a. m.
    Author     : Personal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Registro de Usuario</title>
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

            h1 {
                color: #50b3ff;
                margin-bottom: 1.5rem;
                text-align: center;
                font-size: 2rem;
                border-bottom: 2px solid #333;
                padding-bottom: 0.5rem;
            }

            /* Formularios */
            .form-group {
                margin-bottom: 1.5rem;
            }

            label {
                display: block;
                margin-bottom: 0.5rem;
                color: #bbbbbb;
                font-weight: 500;
            }

            input {
                width: 100%;
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

            /* Mensajes y alertas */
            .message {
                padding: 1rem;
                margin: 1rem 0;
                border-radius: 4px;
                background-color: #263238;
                border-left: 4px solid #50b3ff;
                color: #b8e0ff;
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
                
                .menu {
                    flex-direction: column;
                    align-items: center;
                }
            }
        </style>
    </head>
    <body>
        <div class="container">
            <h1>Registro de Usuario</h1>
            
            <% if (request.getAttribute("mensaje") != null) { %>
                <div class="message">
                    <%= request.getAttribute("mensaje") %>
                </div>
            <% } %>
            
            <form action="registro" method="post">
                <div class="form-group">
                    <label for="nombre">Nombre:</label>
                    <input type="text" id="nombre" name="nombre" required>
                </div>
                
                <div class="form-group">
                    <label for="apellido">Apellido:</label>
                    <input type="text" id="apellido" name="apellido" required>
                </div>
                
                <div class="form-group">
                    <label for="email">Email:</label>
                    <input type="email" id="email" name="email" required>
                </div>
                
                <div class="form-group">
                    <label for="password">Contraseña:</label>
                    <input type="password" id="password" name="password" required>
                </div>
                
                <div class="form-group">
                    <button type="submit" class="btn">Registrar</button>
                </div>
            </form>
            
            <div class="menu">
                <a href="index.jsp">Volver a Inicio</a>
                <a href="consulta">Consultar Usuarios</a>
            </div>
        </div>
    </body>
</html>