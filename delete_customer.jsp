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

int K=stmt.executeUpdate("delete from customer_table where 	customer_id='"+gr+"' ");
%>
<script>
alert("deleted sucessfully");
document.location="view_customer.jsp";
</script>
<%
}
catch(Exception e)
{
out.println(e);
}
%>