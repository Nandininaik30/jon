\
<!DOCTYPE html>
<head>
<title>View_product_deatils</title>
<link href="css/view.css" rel="stylesheet">
</head>
<body>

<div class="navbar">
<nav id="navmenu" class="navmenu">
<ul>
<li><a href="index.html" class="active">Home</a></li>
<li><a href="#">About Us</a></li>
<li><a href="#">Serives</a></li>
<li><a href="login.html">Register</a></li>

</div> 
<center><div class="text">
    <h1>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;View_cutomer_details</h1>
</div></center>
<br><br>
<br><br><br><br><br><br><center><%@page import="java.sql.*"%>

    <table class="style" border="10.8">
 

    <tr>
      <th>CUSTOMER_ID</th>
      <th>CUSTOMER_NAME</th>
      <th>CUSTOMER_EMAIL</th>
      <th>CUSTOMER_PINCODE</th>
      <th>CUSTOMER_PASSWORD</th>
      <th>CUSTOMER_ADDRESS</th>
      <th> delete</th>
    
        </tr>
        
    <%
     
    Connection con;
    Statement stmt;
    try
    {
     Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/agrocraft","root","");
    stmt=con.createStatement();
    ResultSet rs=stmt.executeQuery("select  * from customer_table");
    while(rs.next())
    {
      out.println("<tr> <td>");
        out.println(rs.getString(1));
       out.println("</td> <td>");
       out.println(rs.getString(2));
       out.println("</td> <td>");
       out.println(rs.getString(3));
       out.println("</td> <td>");
       out.println(rs.getString(4));
       out.println("</td> <td>");
         out.println(rs.getString(5));
       out.println("</td> <td>");
        out.println(rs.getString(6));
       out.println("</td> <td> ");
      
   
    %>
    <a href="delete_customer.jsp?ro=<%=rs.getString(1) %>"> Delete </a>
    <%

        
    
 
    }
    
    }
    catch(Exception e)
    {
    out.println(e);
    }
    %></center>

  
  </body>
</html>
