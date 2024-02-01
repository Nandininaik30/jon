<%@page import="java.sql.*" %>

<%
 String s1,s2,s3,s4,s5;
s1=request.getParameter("t1");
s2=request.getParameter("t2");
s3=request.getParameter("t3");
s4=request.getParameter("t4");
s5=request.getParameter("t5");




Connection con;
Statement stmt;
try
{
 Class.forName("com.mysql.jdbc.Driver");
con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agrocraft","root","");
stmt=con.createStatement();
int k=stmt.executeUpdate("insert into cart_table  values('"+s1+"','"+s2+"','"+s3+"','"+s4+"','"+s5+"')");
out.println("insert sucessfull");
con.close();
%>
<script>
    alert("one record inserted");
    document.location="chart.html";
</script>
<%
}
catch(Exception e)
{
out.println(e);
}
%>