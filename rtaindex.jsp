<%-- 
    Document   : rtaindex
    Created on : 04/10/2017, 19:21:10
    Author     : Silvia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
              <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">

        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700,900" rel="stylesheet"> 
        <link rel="stylesheet" href="css/estilos2.css">
        
 
    </script>
    </head>

    <body>

        <!--Navbar-->

        <div class="container-fluid navbar-inverse fondo-nav fixed-top">


            <nav class="navbar navbar-toggleable-md  container">
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <a class="navbar-brand text-muted" href="index.html">LogoCorporativo</a>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto ">
                        <li class="nav-item active">
                            <a class="nav-link text-muted" href="#">Catalogo</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-muted" href="galeria.html">Galeria</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-muted" href="#">Servicios</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-muted" href="#">Nosotros</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-muted" href="user.jsp">Admin</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-muted" href="#">Contacto</a>
                        </li>
                    </ul>

                </div>
            </nav>

        </div>
        <!--fin nav-->

        <!--Slider-->
        <div class="fondo">
            <div class="container-fluid fondo-2">
                <div class="container d-flex flex-column justify-content-center h-100 text-white align-items-center">
                    <h1 class="pb-25">The Ljuba's library</h1>
                    <h2 class="display-5">Советская детская книга /Children`s literature</h2>
                    <p class="pb-25 text-center">Мир советского ребенка вопреки идеологическим установкам был наполнен множеством красочных и ярких впечатлений, созданных благодаря талантливым писателям и иллюстраторам.</p>
                    <div>
                        <a href="#" class="btn btn-danger px-5">Leer más</a>
                    </div>    
                </div> 
            </div>
        </div>
        <!--fin Slider-->
          <%!            
            Connection conn;
            PreparedStatement pstmt;
             String qry;
        %>
        <%
            if (request.getParameter("enviar") != null) {
                try {
                    Class.forName("com.mysql.jdbc.Driver");
              conn = DriverManager.getConnection("jdbc:mysql://localhost/producto", "root", "MIfuturama89");
            //  conn = DriverManager.getConnection("jdbc:mysql://mariadb23678-env-0823326.j.facilcloud.com:3306/biblioteca", "root", "QDGlbo19196");
                    qry = "insert into persona2(nombre,correo) values(?,?)";
                    pstmt = conn.prepareStatement(qry);
                    
                    pstmt.setString(1, request.getParameter("nombre"));
                    pstmt.setString(2, request.getParameter("email"));
                      pstmt.executeUpdate();
                //   response.sendRedirect("./../MOSTRAR.jsp"); 
                } catch (ClassNotFoundException cnfe) {
                    out.println("Class Not Found Exception :- " + cnfe.toString());
                } catch (SQLException sqle) {
                    out.println("SQL Query Exception :- " + sqle);
                }
            }
 %>
        <div class="container">
            <div class="d-flex flex-column align-items-center my-5 ">
        <h1>Registrado!!!</h1>
        <p>
        <%= request.getParameter("nombre") %> con email: <%= request.getParameter("nombre") %> Te registraste correctamente
        <br>
        Fecha: <%= new java.util.Date() %></p>
        </div></div>
   <!--Form-->

        <div class="container py-5 bg-fondo-claro">
            <div class="text-center">
                <h2 >Contáctanos</h2>
                <h5 class="py-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dese e, tenetur aliquid et sed sequi magni.</h5>
            </div>

            <form action="rtaindex.jsp" class="row justify-content-center">
                <div class="form-group col-md-3">
                    <input type="text" name="nombre" placeholder="Nombre" class="form-control">
                </div>
                <div class="form-group col-md-3">
                    <input type="email" name="email" placeholder="E-mail" class="form-control">
                </div>
                <div class="form-group col-md-3">
                    <input type="text" placeholder="Teléfono" class="form-control">
                </div>
                <div class="col-md-12 py-4">
                    <div class="row justify-content-center">
                        <button class="btn btn-primary col-md-2">Enviar</button>
                    </div>
                </div>
            </form>
        </div>
    
        
        
        <!--FIIIIIIIIIN  form-->

        <!--footer-->
        <footer class="container-fluid bg-inverse text-center text-white py-5">
            <p>Sitio web desarrolado por Luisano Berrako Gallardo</p>
        </footer>
        <!--fib footer-->

        <!-- jQuery first, then Tether, then Bootstrap JS. -->
        <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js"  crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js"  crossorigin="anonymous"></script>
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>
