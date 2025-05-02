<%-- 
    Document   : index.jsp
    Created on : 2/05/2025, 7:26:08 a. m.
    Author     : Personal
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <title>Sistema de Registro</title>
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
                font-size: 2.5rem;
                border-bottom: 2px solid #333;
                padding-bottom: 0.5rem;
            }

            /* Estilos específicos para home */
            .home-container {
                text-align: center;
            }

            .home-title {
                font-size: 2.5rem;
                margin-bottom: 2rem;
            }

            .home-menu {
                display: flex;
                flex-direction: column;
                gap: 1rem;
            }

            .home-menu a {
                background-color: #2a2a2a;
                color: #50b3ff;
                padding: 1rem;
                border-radius: 6px;
                border: 1px solid #333;
                transition: all 0.3s ease;
                font-weight: 600;
                text-decoration: none;
            }

            .home-menu a:hover {
                background-color: #333;
                transform: translateY(-2px);
                text-decoration: none;
                box-shadow: 0 4px 12px rgba(0, 0, 0, 0.2);
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
            }
        </style>
    </head>
    <body>
        <div class="container home-container">
            <h1 class="home-title">Bienvenido al Sistema de Registro de Usuarios</h1>
            <div class="home-menu">
                <a href="registro">Registrar Usuario</a>
                <a href="consulta">Consultar Usuarios</a>
            </div>  
        </div>
    </body>
</html>