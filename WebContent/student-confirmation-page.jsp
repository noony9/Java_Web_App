<%@ page import="java.net.URLEncoder" %>
<%@ page import="java.util.*" %>
<html>
<head>
<title>Student Confirmation Page</title>
</head>

<!-- Generate cookies based on form data -->

<%

	//read form data
	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	String favLang = request.getParameter("favoriteProgrammingLanguage");
	String userCountry = request.getParameter("country");
	String favClass = request.getParameter("favoriteClass");
	
	// encode cookie data ... handle case of entries with spaces in them
	//favLang = URLEncoder.encode(favLang, "UTF-8");
	//favClass = URLEncoder.encode(favClass, "UTF-8");
	
	// create the cookies
	Cookie firstNameCookie = new Cookie("myApp.firstName", firstName);
	Cookie lastNameCookie = new Cookie("myApp.lastName", lastName);
	Cookie langCookie = new Cookie("myApp.favoriteProgrammingLanguage", favLang);
	Cookie countryCookie = new Cookie("myApp.country", userCountry);
	Cookie classCookie = new Cookie("myApp.favoriteClass", favClass);
	
	// set the life span ... total number of seconds
	firstNameCookie.setMaxAge(60*60*24*365); // for one year
	lastNameCookie.setMaxAge(60*60*24*365); // for one year
	langCookie.setMaxAge(60*60*24*365); // for one year
	countryCookie.setMaxAge(60*60*24*365); // for one year
	classCookie.setMaxAge(60*60*24*365); // for one year
	
	// send cookies to browser
	response.addCookie(firstNameCookie);
	response.addCookie(lastNameCookie);
	response.addCookie(langCookie);
	response.addCookie(countryCookie);
	response.addCookie(classCookie);
	
%>
	

<body>
	
	<h3>Your student information:  <br/></h3>
	
	The student is confirmed: <%= request.getParameter("firstName") %> <%= request.getParameter("lastName") %>
	
	<br/><br/>
	
	The student's country: ${param.country}
	
	<br/><br/>
	
	The student's favorite programming language: <%= request.getParameter("favoriteProgrammingLanguage") %>
	
	<br/><br/>
	
	The student's favorite classes: <br/>
	
	<!--  display list of "favoriteClass" -->
	
	<ul>
			<!-- wrap the for loop output in an if statement to prevent NullPointerException if nothing checked -->
		<%
		
			String[] favoriteClasses = request.getParameterValues("favoriteClass");
		
			if (favoriteClasses != null){
				
				for (String classSelected : favoriteClasses) {
					out.println("<li>" + classSelected + "</li>");
				}
			}	
		
		%>
	
	</ul>
	
	<hr>
	
	<a href="student-home.jsp">Confirm Registration</a>
	
	<br/>

	<a href="index.jsp">Complete New Form</a>

</body>

</html>