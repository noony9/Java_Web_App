<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Page</title>
</head>

<!-- Reset user cookies -->

<%
for (Cookie cookie : request.getCookies()) {
    cookie.setValue("");
    cookie.setMaxAge(0);
    cookie.setPath("/");

    response.addCookie(cookie);
}
%>

<body>
<jsp:include page="my-header.html" />

<jsp:include page="student-form.html" />

<jsp:include page="my-footer.jsp" />
</body>
</html>