<%-- 
    Document   : addbook
    Created on : 17/10/2017, 12:30:09
    Author     : Silvia
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
        <title>JSP Page</title>
         <link rel="stylesheet" type="text/css" href="../estilos/css.css">
             <link rel="stylesheet" href="../css/menu.css">
         <link rel="stylesheet" href="../css/estilos2.css">
          
           <script src="http://code.jquery.com/jquery-latest.min.js"></script>      
      <style>
                     
@font-face {
  font-family: 'Malvinas2';
  src:  url('../icons/Malvinas.eot?7sljcu');
  src:  url('../icons/Malvinas.eot?7sljcu#iefix') format('embedded-opentype'),
    url('../icons/Malvinas.ttf?7sljcu') format('truetype'),
    url('../icons/Malvinas.woff?7sljcu') format('woff'),
    url('../icons/Malvinas.svg?7sljcu#Malvinas') format('svg');
  font-weight: normal;
  font-style: normal;
}
@font-face {
  font-family: 'Malvinas';
  src:  url('../icons/2/Malvinas.eot?e6wxb0');
  src:  url('../icons/2/Malvinas.eot?e6wxb0#iefix') format('embedded-opentype'),
    url('../icons/2/Malvinas.ttf?e6wxb0') format('truetype'),
    url('../icons/2/Malvinas.woff?e6wxb0') format('woff'),
    url('../icons/2/Malvinas.svg?e6wxb0#Malvinas') format('svg');
  font-weight: normal;
  font-style: normal;
}
@font-face {
  font-family: 'Malvinas';
  src:  url('../icons/3/Malvinas.eot?ezmj9n');
  src:  url('../icons/3/Malvinas.eot?ezmj9n#iefix') format('embedded-opentype'),
    url('../icons/3/Malvinas.ttf?ezmj9n') format('truetype'),
    url('../icons/3/Malvinas.woff?ezmj9n') format('woff'),
    url('../icons/3/Malvinas.svg?ezmj9n#Malvinas') format('svg');
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
        <%!            
            Connection conn;
            PreparedStatement pstmt;
             String qry;
        %>
        <%
            if (request.getParameter("btnAdd") != null) {
                try {
                    Class.forName("com.mysql.jdbc.Driver");
              conn = DriverManager.getConnection("jdbc:mysql://localhost/producto", "root", "MIfuturama89");
            //  conn = DriverManager.getConnection("jdbc:mysql://mariadb23678-env-0823326.j.facilcloud.com:3306/biblioteca", "root", "QDGlbo19196");
                    qry = "insert into librosrusia(nombre,autor) values(?,?)";
                    pstmt = conn.prepareStatement(qry);
                    
                    pstmt.setString(1, request.getParameter("txtName"));
                    pstmt.setString(2, request.getParameter("txtAuthor"));
                      pstmt.executeUpdate();
                    response.sendRedirect("./../MOSTRAR.jsp");
                } catch (ClassNotFoundException cnfe) {
                    out.println("Class Not Found Exception :- " + cnfe.toString());
                } catch (SQLException sqle) {
                    out.println("SQL Query Exception :- " + sqle);
                }
            }
 %>
  <!--Menu-->
          <div id="mostrar-nav"></div> <!--va afuera del nav xqsi el nav va a estar ocultar, se ocultaria este tmbn, get it?-->
 
          <nav class="menu-nav">
    <ul class="menu">
        <li><a href="../bookSections/addbook.jsp" class="icon-add"> Add Book</a></li>
        <li><a href="../bookSections/updatebook.jsp" class="update">   Edit book</a></li>
        <li><a href="../MOSTRAR.jsp" class="books">  Display book list</a></li>
        <li><a href="../agregar.jsp" class="add-user" >  Add User</a></li>
        <li><a href="../editar.jsp" class="blog" >  Edit User</a></li>
        <li><a href="../user.jsp" class="listuser">  Display user list</a></li>
    </ul>
    </nav> 
        
          <!--FIN   MENUUUUUU-->
    <center>
        <h1>Add Book</h1>
        <form id="addLibro" action="" method="POST">
            <table class="table table-bordered table-hover" border="0" cellspacing="5" cellpadding="5">
                <tbody>
                    <tr>
                        <td>Book Name : -</td>
                        <td><input type="text" name="txtName" id="txtName" /></td>
                    </tr>
                      <tr>
                        <td>Book Author : -</td>
                        <td><input type="text" name="txtAuthor" id="txtAuthor" /></td>
                    </tr>  
                      <tr>
                        <td><input type="submit" name="btnAdd" value="Add Book" id="btnAdd" /></td>
                        <td></td>
                    </tr>

                </tbody>
            </table>
        </form>

    </center>
     <script src="../js/mostrarnav.js"></script>
 <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" ></script>
</body>
</html>

