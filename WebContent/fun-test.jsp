<%@page import="com.noony9.jsp.FunUtils"%>
<html>
<body>

<h3>to call the java class method:  Package_Class_Method OR import page (see below)</h3>
Let's have some fun calling a Java Class from JSP: <%= com.noony9.jsp.FunUtils.makeItLower("TOTALLY AWESOME") %>

<br/>

Let's have some fun calling a Java Class from JSP with page import: <%= FunUtils.makeItLower("TOTALLY AWESOME") %>

<h3>If you want to import more packages/ classes, use a comma delimited list... FunUtils, com.noony9...</h3>
<h3>You could also use a wildcard * after the package if you had more classes from the package.</h3>
 
</body>
</html>