<html>

<body>

	<h3>Hello Java Web!</h3>
	
	<h3>Scriptlet best practice:  use scriptlets sparingly within JSP files; if you
	need to utilize often, create a seperate Java class or make use of MVC.</h3>
	
	<%
		for (int i = 1; i <= 5; i++) {
			out.println("<br/>Learning scriptlets" + i );
		}
	%>

</body>

</html>