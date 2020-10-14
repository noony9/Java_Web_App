<html>
<head>
<title>Student Confirmation Title</title>
</head>

<body>

	<h3>Shortcut for getting the form parameters<br/></h3>
	The student is confirmed: ${param.firstName} ${param.lastName}
	
	<h3>Regular for getting the form parameters <br/></h3>
	The student is confirmed: <%= request.getParameter("firstName") %> <%= request.getParameter("lastName") %>
	
	<br/><br/>
	
	The student's country: ${param.country}
	
	<br/><br/>
	
	The student's favorite programming language: <%= request.getParameter("favoriteProgrammingLanguage") %>
	
	<br/><br/>
	
	The student's favorite classes: <br/>
	
	<!--  display list of "favoriteClass" -->
	
	<ul>
	
		<%
		
			String[] favoriteClasses = request.getParameterValues("favoriteClass");
		
			for (String classSelected : favoriteClasses) {
				out.println("<li>" + classSelected);
			}
		
		%>
	
	</ul>
	

</body>

</html>