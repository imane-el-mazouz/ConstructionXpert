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
    <h1>Update Project</h1>

    <form action="UpdateTask" method="post">
        <input type="hidden" name="taskId" value="${task.taskId}">

        <label for="taskName">Task Name:</label>
        <input type="text" id="taskName" name="taskName" value="${task.taskName}" required><br><br>

        <label for="taskDescription">Task Description:</label>
        <input type="text" id="taskDescription" name="taskDescription" value="${task.taskDescription}" required><br><br>

        <label for="debutTask">Start Date:</label>
        <input type="date" id="debutTask" name="debutTask" value="${task.debutTask}" required><br><br>

        <label for="finTask">End Date:</label>
        <input type="date" id="finTask" name="finTask" value="${task.finTask}" required><br><br>

        <label for="status">Status:</label>
        <select id="status" name="status" required>
            <option value="TO_DO" ${task.status == 'TO_DO' ? 'selected' : ''}>Todo</option>
            <option value="DOING" ${task.status == 'DOING' ? 'selected' : ''}>Doing</option>
            <option value="DONE" ${task.status == 'DONE' ? 'selected' : ''}>Done</option>
        </select><br><br>

        <label for="resources">Resources (comma separated):</label>
        <input type="text" id="resources" name="resources" value="${task.resources}"><br><br>

        <label for="id">Project ID:</label>
        <input type="text" id="id" name="id" value="${task.id}" required><br><br>

        <input type="submit" value="Update Task">
    </form>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
