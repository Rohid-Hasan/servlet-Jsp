<%--
  Created by IntelliJ IDEA.
  User: rohed
  Date: 10/27/2021
  Time: 8:56 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Login</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</head>
<body>
  <jsp:include page="/views/include/header.jsp">
    <jsp:param name="firstName" value="Enter First Name"/>
  </jsp:include>
  <div class="full-wrapper">
    <div class="container">
      <form action="/E-commerce/login" method="post">
        <div class="form-group">
          <label for="email">Email</label>
          <input type="text" class="form-control" name="email">
        </div>
        <div class="form-group">
          <label for="email">password</label>
          <input type="text" class="form-control" name="password">
        </div>
        <button type="submit" class="btn btn-warning">Login</button>
        <p>do not have a accout ?</p> <br>
        <p><a href="/E-commerce/register">Register</a></p>
      </form>
    </div>
  </div>
</body>
</html>
