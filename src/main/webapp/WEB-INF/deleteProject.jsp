<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 22/05/2024
  Time: 09:39
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Remove Project</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
</head>
<body>

<div class="container-fluid container-fluid-two d-flex flex-column justify-content-centre align-items-center gap-4">
    <form action="<c:url value='${pageContext.request.contextPath}/delete'/>" method="post">
        <div class="mb-3">
            <label for="id" class="form-label">Student ID</label>
            <input type="text" class="form-control" id="id" name="id" placeholder="Enter Student ID">
        </div>
        <button type="submit" class="btn btn-danger">Delete Student</button>
    </form>

</div>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
