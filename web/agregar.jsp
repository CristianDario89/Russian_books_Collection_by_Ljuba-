 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset=UTF-8" />
        <%@include file="header.jsp" %>
        <title>Add</title>
        
          <link rel="stylesheet" href="css/menu.css">
         <link rel="stylesheet" href="css/estilos2.css">
          
            
               <link href="https://fonts.googleapis.com/css?family=Raleway:200,400" rel="stylesheet">
            <script src="http://code.jquery.com/jquery-latest.min.js"></script> 
            
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
     
                 body{
                     background: #bcdff1;
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
        
        <div class="container">
        <ol class="breadcrumb">
  <li class="breadcrumb-item"><a href="<%=request.getContextPath()%>/user">Home</a></li>
  <li class="breadcrumb-item"><a href="#">Library</a></li>
 </ol>
  <h2 class="tit-edit">Add user</h2>
        
        <form name="form" action="<%=request.getContextPath()%>/agregar_post" method="post">
            
             <div class="form-group">
    <label for="exampleInputEmail1">Nombre</label>
    <input type="text" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Nombre" name="nom">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
            
  <div class="form-group">
    <label for="exampleInputEmail1">E-mail</label>
    <input type="email" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" placeholder="Ingrese el e-mail" name="correo">
    <small id="emailHelp" class="form-text text-muted">We'll never share your email with anyone else.</small>
  </div>
   
  <button type="submit" class="btn btn-primary pointer">Enviar</button>
  
  </div>
</form>
        
        
          <script src="js/mostrarnav.js"></script>
     </body>
</html>
