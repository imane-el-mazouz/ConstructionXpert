<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 22/05/2024
  Time: 10:01
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Add Task</title>
</head>
<body>
<h2>Add Task</h2>
<form action="AddTask" method="post">
    <label for="taskId">Task ID:</label>
    <input type="text" id="taskId" name="taskId" required><br><br>

    <label for="taskName">Task Name:</label>
    <input type="text" id="taskName" name="taskName" required><br><br>

    <label for="taskDescription">Task Description:</label>
    <input type="text" id="taskDescription" name="taskDescription" required><br><br>

    <label for="debutTask">Start Date:</label>
    <input type="date" id="debutTask" name="debutTask" required><br><br>

    <label for="finTask">End Date:</label>
    <input type="date" id="finTask" name="finTask" required><br><br>

    <label for="status">Status:</label>
    <select id="status" name="status" required>
        <option value="TO_DO">Todo</option>
        <option value="DOING">Doing</option>
        <option value="DONE">Done</option>
    </select><br><br>

    <label for="resources">Resources (comma separated):</label>
    <input type="text" id="resources" name="resources"><br><br>

    <label for="id">Project ID:</label>
    <input type="text" id="id" name="id" required><br><br>

    <input type="submit" value="Add Task">
</form>
</body>
</html>
