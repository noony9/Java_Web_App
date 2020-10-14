<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Java Web App!</title>
</head>
<body>

<jsp:include page="my-header.html" />

Some content ... <br/><br/>
Some content ... <br/><br/>
Some content ... <br/><br/>

The time on the server is <%= new java.util.Date() %>

<jsp:include page="my-footer.jsp" />	
	
</body>
</html>