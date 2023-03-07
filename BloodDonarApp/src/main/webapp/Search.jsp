<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page import="java.sql.*" %> 
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
 
</head>
<body>
<jsp:include page="Header.jsp"></jsp:include>

<h2>For Searching of your Blood Donor</h2>

<div class="container">
  <div class="row">
    <div class="col-sm-2">
      <h3>Column 1</h3>
      <p>Lorem ipsum dolor..</p>
    </div>
    <div class="col-sm-8">
      <h3>Column 2</h3>
      <form>
      <div class="form-group">
      <label for="sel1 "> Blood Group:</label>
      <select class="form-control " id="sel1" name="t4" >
      
        <option value="A+">A+</option>
        <option value="A-">A-</option>
        <option value="AB+">AB+</option>
        <option value="AB-">AB-</option>
        <option value="B+">B+</option>
        <option value="B-">B-</option>
        <option value="O+">O+</option>
        <option value="O-">O-</option>
      </select>
  
      
    </div>
    <div class="form-group">
      <label for="sel1 "> City:</label>
      <select class="form-control " id="sel1"  name="t5">
      
        <option value="Jabalpur">Jabalpur</option>
<option value="Indore">Indore</option>
<option value="Bhopal">Bhopal</option>
<option value="Gwalior">Gwalior</option>
<option value="Katani">Katani</option>
<option value="Ujjain">Ujjain</option>
<option value="Chhindwara">Chhindwara</option>
<option value="Itarsi">Itarsi</option>
<option value="Satna">Satna</option>
<option value="Sagar">Sagar</option>
<option value="Rewa">Rewa</option>
        
      </select>
  
      
    </div>
   
      
     <div class="container-fluid text-center">
  <input type="submit" value="Search" class="btn btn-primary btn-lg" />
  
  </div>
</form>

<%
String bg = request.getParameter("t4");
String city = request.getParameter("t5");


try{

Class.forName("com.mysql.jdbc.Driver");
Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql",
		"root","root");
String sql = "select * from reg where bg='"+bg+"' and city='"+city+"'";
Statement st = cn.createStatement();
ResultSet rs = st.executeQuery(sql);
%>

<table class="table table-striped">
    <thead>
      <tr>
<th>Name</th>
<th>Mobile No.</th>
<th>Email</th>
<th>Blood group</th>
<th>City</th>
</tr>
</thead>
 <tbody>

<%while(rs.next())
{
	out.println("<tr>");
	out.println("<td>"+rs.getString(1)+"</td>");
	out.println("<td>"+rs.getString(2)+"</td>");
	out.println("<td>"+rs.getString(3)+"</td>");
	out.println("<td>"+rs.getString(5)+"</td>");
	out.println("<td>"+rs.getString(6)+"</td>");
	
	out.println("</tr>");
	
}
st.close();
cn.close();

%></tbody>


</table>
<%

}
catch(Exception ex)
{
	out.println(ex);
}

%>




</div> 
    
    
    
    
    
    
</div>
    </div>




</body>
</html>