<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn" %>
<%@ page import="java.util.*,com.noony9.jsp.Student" %>
<%
	// create some sample data ... normally provided by MVC
	String[] cities = {"Indianapolis", "Chicago", "Philadelphia"};

	pageContext.setAttribute("myCities", cities);

%>

<%
	// create sample data ... normally provided by MVC
	List<Student> data = new ArrayList<>();
	data.add(new Student("Dan", "Doe", true));
	data.add(new Student("Jane", "Markey", false));
	data.add(new Student("Tim", "Johnson", false));
	
	pageContext.setAttribute("myStudents", data);
%>
<html>

<body>

	<!-- Using core tag to output date/time -->
	
	<c:set var="stuff" value="<%= new java.util.Date() %>" />
	
	Time on the server is ${stuff}
	
	<br/>
	
	<!-- looping with forEach -->
	
	My favorite Cities: <br/>
	
	<c:forEach var="tempCity" items="${myCities}">
	
	${tempCity} <br/>
	
	</c:forEach>
	
	<br/>

	<table border="1">
	<tr>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Gold Customer</th>
	<tr>
	
	<!-- looping with forEach and using .firstName is equal to getFirstName() and
	.goldCustomer is equal to isgoldCustomer() in JSP-->
	
	<c:forEach var="tempStudent" items="${myStudents}">
	
		<tr>	
			<td>${tempStudent.firstName }</td> 
			<td>${tempStudent.lastName }</td> 
			<td>
			<!-- using the IF JSTL tag.  The tag library doesn't have an else
			but could do test="${not tempStudent.goldCustomer}-->
			<c:if test="${tempStudent.goldCustomer }">
				Special Discount
			</c:if>
			</td>
		<tr/>
		
	</c:forEach>

	</table>
	
	<br/>
	
	<!-- choose is similar to a switch statement -->
	
	<table border="1">
	<tr>
		<th>First Name</th>
		<th>Last Name</th>
		<th>Gold Customer</th>
	<tr>
	
	<c:forEach var="tempStudent" items="${myStudents}">
	
		<tr>	
			<td>${tempStudent.firstName }</td> 
			<td>${tempStudent.lastName }</td> 
			<td>
				<c:choose>
				
					<c:when test="${tempStudent.goldCustomer }">
						Special Discount
					</c:when>
					
					<c:otherwise>
						No Discount
					</c:otherwise>
					
				</c:choose>
			</td>
		<tr/>
		
	</c:forEach>
	
	</table>
	
	<br/>
	
	<!-- using Function Tag length -->
	<c:set var="data" value="Ienjoycoding" />
	
	Length of the string <b>${data}</b>: ${fn:length(data)}
	
	<br/>
	
	<!--  using Function Tag split and join -->
	<c:set var="unsplitString" value="Montana,Kentucky,Ohio" />
	<c:set var="stringArray" value="${fn:split(unsplitString, ',') }" />
	<c:set var="joinedString" value="${fn:join(stringArray, '*') }" />
	
	<!-- loop the resulting split string array with forEach -->
	
	String Array (split): <br/>
	
	<c:forEach var="strings" items="${stringArray}">
	
	${strings} <br/>
	
	</c:forEach>
	
	<br/>
	
	<!-- Print the joined string array -->
	String Array Joined to a String:  ${joinedString} 
	

</body>


</html>