<%@include file="dbcon.jsp"%>

<%
String uname=request.getParameter("t1");
String upass=request.getParameter("t2");

ResultSet res=stmt.executeQuery("select * from login_table where username='"+uname+"' ");

if(!res.next())
{
%>
<script>
alert("Invalid Username");
document.location="pages/login.html";
</script>
<%
}
else
{
    String p=res.getString(2);
	String type=res.getString(3);
	
	
	if(p.equals(upass))
	{
	
	   if(type.equals("admin"))
	   {
	   %>
       <script>
alert("YOu have Logged in As Admin");
document.location="admin_home.jsp";
</script>
       <%
	   }
	   
	   
	   
	    if(type.equals("farmer"))
	   {
	   %>
       <script>
alert("YOu have Logged in Asfarmer");
document.location="farmer_home.jsp";
</script>
       <%
	   }
	   
	  }
	  
	  else
	  {
	  %>
      <script>
	  alert("Invalid Password");
	  document.location="pages/login.html";
	  </script>
      <%
	  
	  }
	 } 
%>