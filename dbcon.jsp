<%@page import="java.sql.*" %>
<%

Connection con=null;
Statement stmt=null;

try
{
   Class.forName("com.mysql.jdbc.Driver");
   con=DriverManager.getConnection("Jdbc:Mysql://localhost:3306/AgroCraft","root","");
   stmt=con.createStatement();

   
}
catch(Exception e)
{
  out.print(e);
  }
%>  