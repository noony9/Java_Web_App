<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Student Home Page</title>
</head>


<body>

	<!-- read the name and favorite programming language cookies -->
	
	<%
		
		// the default ... if there are no cookies
		String userName = "User";
		String favLang = "Java";
	
		// get the cookies from the browser request
		Cookie[] theCookies = request.getCookies();
		
		// find our name and favorite language cookies
		if (theCookies != null) {
			for (Cookie cookie : theCookies) {
				if ("myApp.firstName".equals(cookie.getName())) {
					userName = cookie.getValue();
				}
				if ("myApp.favoriteProgrammingLanguage".equals(cookie.getName())) {
					// decode cookie data ... handle case of languages with a space in them
					//favLang = URLDecoder.decode(cookie.getValue());
					favLang = cookie.getValue();
				}
			}
		}
	
	%>

	<jsp:include page="my-header.html" />
	
	<h2>Welcome <%= userName %>, to your Student Home Page</h2>
	
	<h3>Some things you can do: </h3>

	<br/>
		
	<form action="language-info.jsp">
	
		<button type="submit">Get information on your favorite programming language: <%= favLang %>!</button>
	
	</form>
	
	<br/><br/>
	
	<form action="student-TODO-List.jsp">
	
		<button type="submit">Complete a TODO List!</button>
	
	</form>
	

	<br/><br/>
	
	
	<form action="index.jsp">
	
		<button type="submit">I just can't decide!  Please take me back to Registration!</button>
	
	</form>

	<jsp:include page="my-footer.jsp" />

	<hr>
	<a href="MVCServlet">View other Students in your class with MVC</a>
	
</body>
</html>