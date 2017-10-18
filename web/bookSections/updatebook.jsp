<%-- 
    Document   : updatebook
    Created on : 17/10/2017, 15:28:24
    Author     : Silvia
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%!            
            Connection conn;
            PreparedStatement pstmt;
            ResultSet rs;
            String qry;
            Integer bookID;
        %>
        <%
            conn = DriverManager.getConnection("jdbc:mysql://localhost/producto", "root", "MIfuturama89");
           
            if (request.getParameter("btnUpd") != null) {
                bookID = Integer.parseInt(request.getParameter("hiddenID"));
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                    qry = "UPDATE librosrusia SET nombre = ?, autor = ? where ID = ?";
                    pstmt = conn.prepareStatement(qry);
                    
              pstmt.setString(1, request.getParameter("txtName"));  
              pstmt.setString(2, request.getParameter("txtAuthor"));  
                    pstmt.setInt(3, bookID);
  
                     pstmt.executeUpdate();
                    response.sendRedirect("./../MOSTRAR.jsp");
                } catch (ClassNotFoundException cnfe) {
                    out.println("Class Not Found Exception :- " + cnfe.toString());
                } catch (SQLException sqle) {
                    out.println("SQL Query Exception :- " + sqle);
                }
            }

            if (request.getParameter("ID") != null && request.getParameter("ID") != "") {
                bookID = Integer.parseInt(request.getParameter("ID"));
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                      //conn = DriverManager.getConnection("jdbc:mysql://mariadb23678-env-0823326.j.facilcloud.com:3306/biblioteca", "root", "QDGlbo19196");
                     conn=DriverManager.getConnection("jdbc:mysql://localhost/producto","root","MIfuturama89");
                    qry = "Select * from librosrusia where ID = ?";
                    pstmt = conn.prepareStatement(qry);
                    pstmt.setInt(1, bookID);

                    rs = pstmt.executeQuery();
                    rs.first();
                } catch (ClassNotFoundException cnfe) {
                    out.println("Class Not Found Exception :- " + cnfe.toString());
                } catch (SQLException sqle) {
                    out.println("SQL Query Exception :- " + sqle);
                }
            } else {
                response.sendRedirect("./../MOSTRAR.jsp");
            }

        %>
    <center>
        <h1>Update Details of Book</h1>
        <form id="updLibro" action="" method="POST">
            <table border="0" cellspacing="5" cellpadding="5">
                <tbody>
                    <tr>
                        <td>Book Name : -</td>
                        <td>
                            <input type="hidden" id="hiddenID" name="hiddenID" value="<%=bookID%>"/>
                            <input type="text" name="txtName" id="txtName" value='<%=rs.getString("nombre")%>'/>
                        </td>
                    </tr>
                    <tr>
                        <td>Book Author : -</td>
                        <td><input type="text" name="txtAuthor" id="txtAuthor" value='<%=rs.getString("autor")%>' /></td>
                    </tr>  
                    
                    <tr>
                        <td><input type="submit" name="btnUpd" value="Update Book" id="btnUpd" /></td>
                        <td></td>
                    </tr>

                </tbody>
            </table>
        </form>

    </center>
</body>
</html>
