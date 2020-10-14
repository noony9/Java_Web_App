<html>

<body>	

<h3>Declarations best practices follow best practices for scriptlets.  Note when calling
the declaration, you use an expression tag</h3>

<%!
	String makeItLower(String data) {
	return data.toLowerCase();
}
%>

Lower case "Hello Java Web": <%= makeItLower("Hello Java Web") %>

</body>

</html>