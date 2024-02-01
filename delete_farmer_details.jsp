<%@page import="java.sql.*"%>


<%
 
Connection con;
Statement stmt;
String gr=request.getParameter("ro");
try
{
 Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agrocraft","root","");
stmt=con.createStatement();

int K=stmt.executeUpdate("delete from farmeregegistration where 	farmer_id='"+gr+"' ");
%>
<script>
alert("deleted sucessfully");
document.location="farmer_view.jsp";
</script>
<%
}
catch(Exception e)
{
out.println(e);
}
%>