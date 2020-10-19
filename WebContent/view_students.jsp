<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<html>

<body>

<hr>
<br/>

<table border="1">

	<tr>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Email</th>
		<th>Special</th>
	</tr>
	
	<c:forEach var="tempStudent" items="${student_list}">
	
		<tr>
			<td>${tempStudent.firstName}</td>
			<td>${tempStudent.lastName}</td>
			<td>${tempStudent.email}</td>
			<td>${tempStudent.goldCustomer}</td>
		</tr>
		
	</c:forEach>

</table>

</body>

</html>