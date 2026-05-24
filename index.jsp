<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<body>
    <h2>Application Received Successfully</h2>
    
    <%
        // Retrieving form data
        String name = request.getParameter("fullName");
        String email = request.getParameter("email");
        String course = request.getParameter("course");
        String dob = request.getParameter("dob");
    %>

    <p><strong>Name:</strong> <%= name %></p>
    <p><strong>Email:</strong> <%= email %></p>
    <p><strong>Course:</strong> <%= course %></p>
    <p><strong>Date of Birth:</strong> <%= dob %></p>

    <!-- TODO: Add JDBC connection code here to insert into your database -->
</body>
</html>
