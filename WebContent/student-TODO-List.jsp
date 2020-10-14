<%@ page import="java.util.*" %>
<html>
<body>

<!-- Step 1:  Create HTML Form -->

<form action="student-TODO-List.jsp">

	Add new item: <input type="text" name="theItem" />

	<input type="submit" value="Submit" />

</form>

<!-- Step 2: Add new items to "To Do" list-->
<%

	// get the To Do items from the session
	List<String> items = (List<String>) session.getAttribute("theToDoList");

	// if the To Do items don't exist, then create a new one
	if (items == null) {
		items = new ArrayList<String>();
		session.setAttribute("theToDoList", items);
	}
	
	// see if there is form data to add
	String theItem = request.getParameter("theItem");
	
	// Input validation
	boolean isItemNotEmpty = theItem != null && theItem.trim().length() > 0;
	boolean isItemNotDuplicate = theItem != null && !items.contains(theItem.trim());
	
	if (isItemNotEmpty && isItemNotDuplicate) {
		
		items.add(theItem.trim());
		
		// prevent previously added item automatically adding to the list on browser refresh/reload
		response.sendRedirect("student-TODO-List.jsp");
		
	}
			
%>


<!-- Step 3: Display all "To Do" item from session -->
<hr>
<b>To Do List Items:</b>

<ol>
<%
	for (String item : items){
		out.println("<li>" + item + "</li>");
	}

%>

</ol>

</body>
</html>