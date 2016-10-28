<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.ArrayList"%>

<%@ page import="java.util.*, com.fasterxml.jackson.core.JsonProcessingException, com.fasterxml.jackson.databind.*" %>
<html>
<body>
<h2>Hello World!</h2>
<%
	for (int i=1; i<6; i++) {
		out.println("<h" + i + ">H" + i + "</h" + i + ">");
	}

 	ArrayList<String>months = new ArrayList<String>();
	months.add("Jan");
	months.add("Feb");
	
	ObjectMapper om = new ObjectMapper();
	
	String json;
	try {
		json = om.writeValueAsString(months);
	} catch (Exception ex) {
		
	} 

%>
</body>
</html>
