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
    <h2>All Tasks</h2>
    <table border="1">
        <tr>
            <th>Task ID</th>
            <th>Task Name</th>
            <th>Task Description</th>
            <th>Start Date</th>
            <th>End Date</th>
            <th>Status</th>
            <th>Resources</th>
            <th>Project ID</th>
            <th>Actions</th>
        </tr>
        <c:forEach var="task" items="${tasks}">
            <tr>
                <td>${task.taskId}</td>
                <td>${task.taskName}</td>
                <td>${task.taskDescription}</td>
                <td>${task.debutTask}</td>
                <td>${task.finTask}</td>
                <td>${task.status}</td>
                <td>${task.resources}</td>
                <td>${task.id}</td>
                <td>
                    <a href="UpdateTask?taskId=${task.taskId}">Edit</a> |
                    <a href="DeleteTask?taskId=${task.taskId}" onclick="return confirm('Are you sure?')">Delete</a>
                </td>
            </tr>
        </c:forEach>
    </table>
    <a href="${pageContext.request.contextPath}/AddTask" class="btn btn-success">Add Task</a>
</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
