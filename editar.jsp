<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="UTF-8">
        <%@include file="header.jsp" %>
        <title>Editar un usuario</title>
         <link rel="stylesheet" href="css/menu.css">
         <link rel="stylesheet" href="css/estilos2.css">
         
         
         <link href="https://fonts.googleapis.com/css?family=Raleway:200,400" rel="stylesheet">
             <script src="http://code.jquery.com/jquery-latest.min.js"></script> 
             
             
             <style>
                 body{
                     background: #bcdff1;
                 }
             </style>
    </head>
    <body>

        <!--Menu-->
          <div id="mostrar-nav"></div> <!--va afuera del nav xqsi el nav va a estar ocultar, se ocultaria este tmbn, get it?-->
 
          <nav class="menu-nav">
    <ul class="menu">
        < <li><a href="agregar.jsp" class="nosotros"> Add Book</a></li>
        <li><a href="editar.jsp" class="menus">   Edit book</a></li>
        <li><a href="user.jsp" class="barra">  Display book list</a></li>
        <li><a href="index.html" class="reservas" >  Index</a></li>
        <li><a href="kidgalery.html" class="blog" >  Kid Books</a></li>
        <li><a href="galeria.html" class="contacto">  Book galery</a></li>
    </ul>
    </nav> 
        
          <!--FIN   MENUUUUUU-->
          
          
          <div class="container">
                 
                        <ol class="breadcrumb">
            <li><a href="<%=request.getContextPath()%>/user">Usuarios</a></li>
            <li class="active">Editar Usuarios</li>
        </ol>

          </div>
        
        

        <div> 
            <div class=" row page-header justify-content-md-center mt-5">
                <div class="col-md-4 ">
                    <h2 class="tit-edit">Editar usuario</h2>
                </div>
            </div>


            <div class="row justify-content-center">
                <div class="col-lg-6 ">

                    <form action="<%=request.getContextPath()%>/Update" method="post">
                        <input type="hidden" value="<c:out value="${usuario}"/>" name="usuario">
                        <div class="form-group">
                            <label for="nombres">Nombres</label>
                            <input type="text" name="nombres" value="<c:out value="${nombre}" />" id="nombres" class="form-control" placeholder="Por favor digite sus nombres" required>
                        </div>
                        <div class="form-group">
                            <label for="correo">Correo Electronico</label>
                            <input type="email" name="correo" value="<c:out value="${correo}" />" id="correo" class="form-control" placeholder="Por favor digite su correo electronico" required>
                        </div>
                        <p>
                            <input type="submit" class="btn btn-success pointer" value="Editar Usuario">
                        </p>
                    </form>
                </div>
            </div>

        </div>    
                        
                        <br>
                     
                        
        <%@include file="scripts.jsp" %>
        
         
      <script src="js/mostrarnav.js"></script>
    </body>
</html>