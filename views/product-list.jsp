<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta http-equiv="X-UA-Compatible" content="IE=edge">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>All the products in our page</title>
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

</head>
<body>
  <jsp:include page="/views/include/header.jsp">
    <jsp:param name="firstName" value="Enter First Name"/>
  </jsp:include>
    <div class="full-wrapper">
      <div class="container">
        <div class="row">

          <h1>${products}</h1>

          <div class="col-sm-4">
            <div class="card bg-warning">
              <img src="https://cdn5.vectorstock.com/i/1000x1000/79/84/calendar-icon-on-the-screen-of-laptop-monitor-vector-1347984.jpg" alt="" class="card-img-top">
              <h4 class="card-title">Asus laptop</h4>
              <h4 class="font-weight-bold">$90</h4>
              <p class="card-body">THis is a good laptop you can buy it . the specification is inside it</p>
              <button class="btn btn-primary">Show details</button>
              <button class="btn btn-info">Add to cart</button>
            </div>
          </div>



          
          <div class="col-sm-4">
            <div class="card bg-warning">
              <img src="https://cdn5.vectorstock.com/i/1000x1000/79/84/calendar-icon-on-the-screen-of-laptop-monitor-vector-1347984.jpg" alt="" class="card-img-top">
              <h4 class="card-title">Asus laptop</h4>
              <h4 class="font-weight-bold">$90</h4>
              <p class="card-body">THis is a good laptop you can buy it . the specification is inside it</p>
              <button class="btn btn-primary">Show details</button>
              <button class="btn btn-info">Add to cart</button>
            </div>
          </div>




          
          <div class="col-sm-4">
            <div class="card bg-warning">
              <img src="https://cdn5.vectorstock.com/i/1000x1000/79/84/calendar-icon-on-the-screen-of-laptop-monitor-vector-1347984.jpg" alt="" class="card-img-top">
              <h4 class="card-title">Asus laptop</h4>
              <h4 class="font-weight-bold">$90</h4>
              <p class="card-body">THis is a good laptop you can buy it . the specification is inside it</p>
              <button class="btn btn-primary">Show details</button>
              <button class="btn btn-info">Add to cart</button>
            </div>
          </div>

          

        </div>
      </div>
    </div>
</body>
</html>