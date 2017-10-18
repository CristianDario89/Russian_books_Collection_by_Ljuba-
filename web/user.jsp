<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <%@include file="header.jsp" %>
        <title>Usuarios</title>


        <!-- Bootstrap CSS -->
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/font-awesome.min.css">
        <link href="https://fonts.googleapis.com/css?family=Roboto:300,400,700,900" rel="stylesheet"> 
        
        <link rel="stylesheet" href="css/estilos2.css">
        <link rel="stylesheet" href="css/menu.css">
        
        
            <style>
     @font-face {
  font-family: 'Malvinas2';
  src:  url('icons/Malvinas.eot?7sljcu');
  src:  url('icons/Malvinas.eot?7sljcu#iefix') format('embedded-opentype'),
    url('icons/Malvinas.ttf?7sljcu') format('truetype'),
    url('icons/Malvinas.woff?7sljcu') format('woff'),
    url('icons/Malvinas.svg?7sljcu#Malvinas') format('svg');
  font-weight: normal;
  font-style: normal;
}
@font-face {
  font-family: 'Malvinas';
  src:  url('icons/2/Malvinas.eot?e6wxb0');
  src:  url('icons/2/Malvinas.eot?e6wxb0#iefix') format('embedded-opentype'),
    url('icons/2/Malvinas.ttf?e6wxb0') format('truetype'),
    url('icons/2/Malvinas.woff?e6wxb0') format('woff'),
    url('icons/2/Malvinas.svg?e6wxb0#Malvinas') format('svg');
  font-weight: normal;
  font-style: normal;
}
@font-face {
  font-family: 'Malvinas';
  src:  url('icons/3/Malvinas.eot?ezmj9n');
  src:  url('icons/3/Malvinas.eot?ezmj9n#iefix') format('embedded-opentype'),
    url('icons/3/Malvinas.ttf?ezmj9n') format('truetype'),
    url('icons/3/Malvinas.woff?ezmj9n') format('woff'),
    url('icons/3/Malvinas.svg?ezmj9n#Malvinas') format('svg');
  font-weight: normal;
  font-style: normal;
}        
.h1-index{
      color: transparent;
    background: -webkit-linear-gradient(left,#ff2d2d,#003de2,#02ce58);
    -webkit-background-clip: text;
    font-weight: bold;
    letter-spacing: 0.9px;
}

.text1{
    letter-spacing: 1px;
    font-size: 25px;
    font-family: 'Manuale', serif;
     
}
                 
.icon-add:before {
  content: "\e900";
    font-family: 'Malvinas2';
   padding-right: 1em;
} 
.update:before {
  content: "\ea2e";
    font-family: 'Malvinas2';
    padding-right: 1em;
}
 
.books:before {
  content: "\e920";
    font-family: 'Malvinas';
    padding-right: 1em;
}
.add-user:before {
  content: "\e957";
  font-family: 'Malvinas';
    padding-right: 1em;
}
.listuser:before {
  content: "\e9bb";
   font-family: 'Malvinas';
    padding-right: 1em;
}
        </style>
    </head>
    <body>
          <!--Navbar-->

        <div class="container-fluid navbar-inverse fondo-nav fixed-top">
 
               <!--Menu-->
          <div id="mostrar-nav"></div> <!--va afuera del nav xqsi el nav va a estar ocultar, se ocultaria este tmbn, get it?-->
 
          <nav class="menu-nav">
    <ul class="menu">
       <li><a href="bookSections/addbook.jsp" class="icon-add"> Add Book</a></li>
        <li><a href="bookSections/updatebook.jsp" class="update">   Edit book</a></li>
        <li><a href="MOSTRAR.jsp" class="books">  Display book list</a></li>
        <li><a href="agregar.jsp" class="add-user" >  Add User</a></li>
        <li><a href="editar.jsp" class="blog" >  Edit User</a></li>
        <li><a href="user.jsp" class="listuser">  Display user list</a></li>
    </ul>
    </nav> 
        
          <!--FIN   MENUUUUUU-->
            
            <nav class="navbar navbar-toggleable-md  container">
                <button class="navbar-toggler navbar-toggler-right" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <a class="navbar-brand text-muted text1" href="index.html">
  <img src="img/logo2.jpg" width="30" height="30" class="d-inline-block align-top mr-1" alt="">Majorova collections</a>

                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav ml-auto ">
                        <li class="nav-item active">
                            <a class="nav-link text-muted" href="#">Catalogo</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-muted" href="#">Galeria</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-muted" href="#">Servicios</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link text-muted" href="#">Nosotros</a>
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
                    <h1 class="pb-25 h1-index"><a href="index.html" class="link-ppal">Bienvenido a the Ljuba's library</a></h1>
                    <p class="pb-25 text-center">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Ab est quaerat porro atque illum facilis amet, nostrum a magnam possimus em ipsum dolor sit amet, consectetur adipisicing elit. Ab est quaerat porro atque illum facilis amet, nostrum a magnam po!</p>
                    <div>
                        <a href="#" class="btn btn-danger px-5">Leer más</a>
                    </div>    
                </div> 
            </div>
        </div>
        <!--fin Slider-->

        <!--Main-->
        <main>
            <article>

                <div class="container my-3">
                    
                    <div class="d-flex justify-content-end mt-5">
                        <h1 class="mr-auto">Usuarios</h1>
                  
                        <a href="<%=request.getContextPath()%>/agregar" class="btn btn-success mr-2 mb-3">Add new</a>
                        <a href="<%=request.getContextPath()%>/user" class="btn btn-info mr-2 mb-3">Mostrar Usuarios</a>
                         <a href="MOSTRAR.jsp" class="btn btn-danger mb-3">Mostrar Libros</a>
                        
                        
                   
                    </div>

                    <table class="table table-bordered">
                        <thead class="thead-inverse">
                        <th>Usuario</th>
                        <th>Nombre</th>
                        <th>Correo</th>
                        <th>Acciones</th>
                        </thead>

                        <tbody>
                            <c:forEach items="${datos}" var="dato" >
                                <tr>
                                    <td><c:out value="${dato.getUsuario()}" /></td>
                                    <td><c:out value="${dato.getNombre()}" /></td>
                                    <td><c:out value="${dato.getCorreo()}" /></td>
                                    <td>
                                        <a href="<%=request.getContextPath()%>/editar?usuario=<c:out value="${dato.getUsuario()}" />" class="btn btn-success">Editar</a>
                                        <a href="javascript:void(0);" onclick="eliminar('<%=request.getContextPath()%>/eliminar?usuario=<c:out value="${dato.getUsuario()}" />')">Borrar</a>
                                    </td>
                                </tr> 
                            </c:forEach>
                        </tbody>

                    </table>

            </article>
        </main>

    </div>
    <!--FIIN MAIIN--> 



    <!--Banner-->
    <div class="container-fluid py-5 bg-danger text-center text-white">
        <div class="py-4">
            <h2>Mira q facil es usar fon AWESOME</h2>
            <div class="iconos pt-4">
                <i class="fa fa-meetup  pr-3" aria-hidden="true"></i>
                <i class="fa fa-user-o pr-3" aria-hidden="true"></i>
                <i class="fa fa-taxi pr-3" aria-hidden="true"></i>
                <i class="fa fa-bomb pr-3" aria-hidden="true"></i>
                <i class="fa fa-bullhorn pr-3" aria-hidden="true"></i>

            </div>
        </div>
    </div>
    <!--FIIIIIIIIIN  Banner-->

    <!--Form-->

    <div class="container py-5 bg-fondo-claro">
        <div class="text-center">
            <h2 >Contáctanos</h2>
            <h5 class="py-4">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Dese e, tenetur aliquid et sed sequi magni.</h5>
        </div>

        <form action="#" class="row justify-content-center">
            <div class="form-group col-md-3">
                <input type="text" placeholder="Nombre" class="form-control">
            </div>
            <div class="form-group col-md-3">
                <input type="email" placeholder="E-mail" class="form-control">
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
    <script src="https://code.jquery.com/jquery-3.1.1.slim.min.js" integrity="sha384-A7FZj7v+d/sdmMqp/nOQwliLvUsJfDHW+k9Omg/a/EheAdgtzNs3hpfag6Ed950n" crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/tether/1.4.0/js/tether.min.js" integrity="sha384-DztdAPBWPRXSA/3eYEEUWrWCy7G5KFbe8fFjk5JAIxUYHKkDx6Qin1DkWx51bBrb" crossorigin="anonymous"></script>
    <script src="js/bootstrap.min.js"></script>
  <script src="js/mostrarnav.js"></script>
</body>
</html>
