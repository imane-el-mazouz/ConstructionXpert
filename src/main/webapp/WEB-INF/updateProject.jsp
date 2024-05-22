<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Update Task</title>
</head>
<body>
<h2>Update Task</h2>
<form action="<c:url value='/update'/>" method="post">
    <input type="hidden" id="id" name="id" value="${project.id}">
    <label for="nom">Name:</label>
    <input type="text" id="nom" name="nom" value="${project.nom}"><br>
    <label for="description">Description:</label>
    <input type="text" id="description" name="description" value="${project.description}"><br>
    <label for="debut">Start Date:</label>
    <input type="date" id="debut" name="debut" value="${project.debut}"><br>
    <label for="fin">End Date:</label>
    <input type="date" id="fin" name="fin" value="${project.fin}"><br>
    <label for="budget">Budget:</label>
    <input type="number" id="budget" name="budget" value="${project.budget}"><br>
    <input type="submit" value="Update project">
</form>
</body>
</html>
