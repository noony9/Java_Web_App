<%@ page import="java.net.URLDecoder" %>
<html>

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
	
<!-- now show a personalized page ... using the "userName" and "favLang" variables -->
	
	<h3><%= userName %>, because you love this programming language!</h3>
	
	<!-- show new books for this language -->
	<h4>New Books for <%= favLang %></h4>
	
	<ul> <!-- Ideally could query a database to get a list on this topic and populate -->
	
		<li>something</li>
		<li>something</li>
		<li>something</li>
	
	</ul>
	
	<h4>Latest News on <%= favLang %></h4>
	
	<ul> <!-- Ideally could query a database to get a list on this topic and populate -->
	
		<li>something</li>
		<li>something</li>
		<li>something</li>
	
	</ul>
	
	<h4>Hot Jobs for <%= favLang %></h4>
	
	<ul> <!-- Ideally could query a database to get a list on this topic and populate -->
	
		<li>something</li>
		<li>something</li>
		<li>something</li>
	
	</ul>
	
	<hr>

	<a href="student-home.jsp">Return to home page</a>
	
</body>
</html>