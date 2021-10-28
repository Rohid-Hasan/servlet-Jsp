<%--
  Created by IntelliJ IDEA.
  User: rohed
  Date: 10/27/2021
  Time: 6:23 PM
  To change this template use File | Settings | File Templates.
--%>
<nav%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <title>Welcome to our shop</title>
</head>
<body>
    <jsp:include page="/views/include/header.jsp">
        <jsp:param name="firstName" value="Enter First Name"/>
    </jsp:include>
    <h1>Welcome to our shop !</h1>
    <h4 class="font-weight-bold">You are not loged in</h4>
</body>
</html>
