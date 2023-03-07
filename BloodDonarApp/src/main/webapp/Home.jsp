<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.1/jquery.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>

<title>Insert title here</title>
</head>
<body>
	<jsp:include page="Header.jsp"></jsp:include>
	<div class="container">
		

		<p>A blood donation occurs when a person voluntarily has blood
			drawn and used for transfusions and/or made into biopharmaceutical
			medications by a process called fractionation (separation of whole
			blood components).Donation may be of whole blood, or of specific
			components directly (apheresis). Blood banks often participate in the
			collection process as well as the procedures that follow it.</p>
		<h2>The Blood Donation Process</h2>
		<p>The blood donation process from the time you arrive until the
			time you leave takes about an hour. The donation itself is only about
			8-10 minutes on average.</p>
		<div>
			<img src="blood1.png" height="300">
		</div>
		<div>
			<br>
			<p>click on the button for the registration</p>
		</div>
		<input type="submit" Value="New Registration" formaction="Reg.jsp" />
		
		<a href="Reg.jsp">Go for the registration</a>
		<div>
			<input type="submit" Value="Search" formaction="Search.jsp" />
		
			<a href="Search.jsp">Go for the Search</a>
		</div>
	</div>


</body>
</html>