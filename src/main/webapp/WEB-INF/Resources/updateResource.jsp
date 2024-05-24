<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Update Resource</title>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
  <style>
    body {
      font-family: Arial, sans-serif;
    }
    .form-container {
      max-width: 500px;
      margin: 0 auto;
      padding: 20px;
      border: 1px solid #ddd;
      border-radius: 5px;
      background-color: #f9f9f9;
    }
    .form-container h2 {
      margin-top: 0;
    }
    .form-group {
      margin-bottom: 20px;
    }
    .form-group label {
      display: block;
      font-weight: bold;
    }
    .form-group input[type="text"], .form-group input[type="number"], .form-group select {
      width: 100%;
      padding: 10px;
      border: 1px solid #ddd;
      border-radius: 5px;
      box-sizing: border-box;
    }
    .form-group button {
      padding: 10px 20px;
      background-color: #007bff;
      border: none;
      border-radius: 5px;
      color: #fff;
      cursor: pointer;
    }
  </style>
</head>
<body>

<div class="form-container">
  <h2>Update Resource</h2>
  <form action="${pageContext.request.contextPath}/UpdateResourceServlet" method="POST">
    <input type="hidden"  name="taskId" value="${taskId}">

    <input type="hidden"  name="resourceId" value="${resourceId}">

    <input type="hidden" name="rId" value="${resource.rId}">
    <div class="form-group">
      <label for="rName">Ressource Name:</label>
      <input type="text" id="rName" name="rName" value="${resource.rName}" required>

    </div>
    <div class="form-group">
      <label for="rType">Ressource Type:</label>
      <input type="text" id="rType" name="rType" value="${resource.rType}" required>
    </div>
    <div class="form-group">
      <label for="quantity">Quantity:</label>
      <input type="number" id="quantity" name="quantity" value="${resource.quantity}" required>
    </div>
    <div class="form-group">
      <label for="provider">Supplier:</label>
      <input type="text" id="provider" name="provider" value="${resource.provider}" required>
    </div>
    <div class="form-group">
      <button type="submit">Update</button>
    </div>
  </form>
</div>

</body>
</html>
