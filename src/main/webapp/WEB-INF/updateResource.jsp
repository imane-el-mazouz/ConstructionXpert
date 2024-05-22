<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 22/05/2024
  Time: 15:26
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
</head>
<body>
<h2>Update Task</h2>
<form action="<c:url value='/UpdateResource'/>" method="post">
    <input type="hidden" id="resourceId" name="resourceId" value="${resource.resourceId}">
    <label for="resourceId">Name:</label>
    <input type="text" id="resourceName" name="resourceName" value="${resource.resourceName}"><br>
    <label for="description">Description:</label>
    <input type="text" id="description" name="description" value="${resource.description}"><br>
    <label for="debut">Start Date:</label>
    <input type="date" id="debut" name="debut" value="${resource.debut}"><br>
    <label for="fin">End Date:</label>
    <input type="date" id="fin" name="fin" value="${resource.fin}"><br>
    <label for="budget">Budget:</label>
    <input type="number" id="budget" name="budget" value="${resource.budget}"><br>
    <input type="submit" value="Update project">
</form>


</body>
</html>
