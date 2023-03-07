<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
<div class ="container">
 <div class ="row col-md-6 col-md-offset-3">
 <div class = "panel panel-primary">
 <div class = "panel-heading text-center">
 <strong><h1>Registration Form</h1></strong>
 </div>
 <div class = "panel-body">
 <form action="DataSave.jsp">
 <div class="form-group">
 <label for="name">Name:</label>
 <input type="text" class="form-control" 
 name="t1"
 id="name" required placeholder="Enter Name" autofocus="autofocus"/> 
 </div>
 
 <div class="form-group">
 <label for="mail">Email:</label>
 <input type="text" name="t2" class="form-control" id="mail" required  placeholder="Enter Email" autofocus="autofocus"/> 
 </div>
 <div class="form-group">
 <label for="mno">Mobile No.:</label>
 <input type="text" class="form-control" name="t3" id="mno"required  placeholder="Enter Mobile No." autofocus="autofocus"/> 
 </div>
 <div>
 <div class="form-group">
 <label for="male">Gender:</label>
 <div>
 <label for="male" class="radio-inline">
 <input type="radio" name="gender" id="male" value="male">Male</label>  
 <label for="female" class="radio-inline">
 <input type="radio" name="gender" id="female" value="female">Female</label> 
 </div>
 </div>
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
   
      </div>
     <div class="container-fluid text-center">
  <input type="submit" value="Submit" class="btn btn-primary btn-lg" />
  
  
</div> 
 </form>
 </div>
 <div>
 <div class = "panel-footer text-right">
<small>&copy; Donate The Blood</small> 
 </div>
    </div>  
    </div>
    </div>


</body>
</html>