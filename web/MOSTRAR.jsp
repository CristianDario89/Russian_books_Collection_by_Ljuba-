
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/css/bootstrap.min.css">
        <title>JSP Page</title>
    </head>
    <body>
        <%!
            Connection conn;
            Statement stmt;
            ResultSet rs;
            String qry;
            Integer ID;
        %>
        <%
        try{
        Class.forName("com.mysql.jdbc.Driver");
         //conn = DriverManager.getConnection("jdbc:mysql://mariadb23678-env-0823326.j.facilcloud.com:3306/biblioteca", "root", "QDGlbo19196");
          conn=DriverManager.getConnection("jdbc:mysql://localhost/producto","root","MIfuturama89"); //test the database
        stmt = conn.createStatement();
        qry= "Select * from librosrusia";
        rs=stmt.executeQuery(qry);
 
        }catch(ClassNotFoundException cnfe){
        out.println("Class Not Found Exception :- "+cnfe.toString());
        }catch(SQLException sqle){
        out.println("SQL Query Exception :- " +sqle);
        }
        %>
    <center>
        <h1>Book list</h1>
        <h3><a href="bookSections/addbook.jsp">Add details</a></h3>
        <table class="table table-bordered table-hover" border="1" cellspacing="5" cellpadding="4">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Title</th>
                    <th>Autor</th>
                   
                    <th colspan="2">Actions</th>
                </tr>
            </thead>
            <tbody>
                <%
                while(rs.next()){
                 ID=rs.getInt("ID");
                %>

                <tr>
                    <td><%=ID%></td>
                    <td><%=rs.getString("nombre")%></td>
                    <td><%=rs.getString("autor")%></td>
                    <td><a href="bookSections/updatebook.jsp?ID=<%=ID%>">Update</a></td>
                    <td><a href="bookSections/deletebook.jsp?ID=<%=ID%>" onclick="return confirm('Are you SURE you want to delete?')">Delete</a></td>
                </tr>
                <% 
                        }
                %>
            </tbody>
        </table>

    </center>

    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta/js/bootstrap.min.js" ></script>
</body>
</html>

