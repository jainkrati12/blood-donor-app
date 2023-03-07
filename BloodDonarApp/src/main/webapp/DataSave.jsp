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

<div class="container">
  <div class="row">
    <div class="col-sm-4">
      <h3>Column 1</h3>
      <p>Lorem ipsum dolor..</p>
    </div>
    <div class="col-sm-4">
     <% //scriptlet
try{
	
	String name = request.getParameter("t1");
	String email = request.getParameter("t2");
	String mobile = request.getParameter("t3");
	String bg = request.getParameter("t4");
	String city = request.getParameter("t5");
	String gender = request.getParameter("gender");
	
	
	
	Class.forName("com.mysql.jdbc.Driver");
	Connection cn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql",
			"root","root");
	String sql = "Insert into reg values('"+name+"','"+email+"','"+mobile+"','"+gender+"','"+
			bg+"','"+city+"')";
	Statement st = cn.createStatement();
	st.execute(sql);
	st.close();
	cn.close();
	%>
	
	<div class="alert alert-success">
  <strong>Success!</strong> Record saved successfully.
</div>

<%}
catch(Exception ex)
{%>
	
	<div class="alert alert-danger">
  <strong>Danger!</strong> Error <%= ex %>.
</div>
	
<%}



%>

     
     
     
     
    </div>
    <div class="col-sm-4">
      <h3>Column 3</h3>
      <p>Lorem ipsum dolor..</p>
    </div>
  </div>
</div>






</body>
</html>