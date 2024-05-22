<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<html>
<head>
    <title>Projects List</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
</head>
<body>
<div class="container-fluid d-flex flex-column justify-content-center align-items-center gap-4">
    <h1>Projects List</h1>
    <table class="table">
        <thead>
        <tr>
            <th>Id</th>
            <th>Name</th>
            <th>Description</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th>Budget</th>
            <th>Actions</th>
        </tr>
        </thead>
        <tbody>
        <c:forEach var="project" items="${projects}">
            <tr>
                <td>${project.id}</td>
                <td>${project.nom}</td>
                <td>${project.description}</td>
                <td>${project.debut}</td>
                <td>${project.fin}</td>
                <td>${project.budget}</td>
                <td>
                    <form action="delete" method="post" style="display: inline;">
                        <input type="hidden" name="projectId" value="${project.id}" />
                        <button type="submit" class="btn btn-danger btn-sm">Delete</button>
                    </form>
                    <form action="update" method="get" style="display: inline;">
                        <input type="hidden" name="projectId" value="${project.id}" />
                        <button type="submit" class="btn btn-primary btn-sm">Update</button>
                    </form>
                </td>
            </tr>
        </c:forEach>
        </tbody>
    </table>
    <a href="${pageContext.request.contextPath}/add" class="btn btn-success">Add Project</a>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
