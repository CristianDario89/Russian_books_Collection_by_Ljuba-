<%-- 
    Document   : deletebook
    Created on : 17/10/2017, 15:26:07
    Author     : Silvia
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
 
  <%!            
            Connection conn;
            PreparedStatement pstmt;
             String qry;
             Integer bookID;
        %>
        <%
            if (request.getParameter("ID") != null && request.getParameter("ID") != "") {
                bookID=Integer.parseInt(request.getParameter("ID"));
                try {
                    Class.forName("com.mysql.jdbc.Driver");
                // conn = DriverManager.getConnection("jdbc:mysql://mariadb23678-env-0823326.j.facilcloud.com:3306/biblioteca", "root", "QDGlbo19196");
                     conn = DriverManager.getConnection("jdbc:mysql://localhost/producto", "root", "MIfuturama89");
                    qry = "DELETE from librosrusia WHERE ID = ?";
                    pstmt = conn.prepareStatement(qry);
                    
                    pstmt.setInt(1, bookID);
                    
                    pstmt.executeUpdate();
                    response.sendRedirect("./../MOSTRAR.jsp");
                } catch (ClassNotFoundException cnfe) {
                    out.println("Class Not Found Exception :- " + cnfe.toString());
                } catch (SQLException sqle) {
                    out.println("SQL Query Exception :- " + sqle);
                }
            }
 %>
