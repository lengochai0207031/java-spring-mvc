<%@page contentType="text/html" pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %> <%@taglib
uri="http://www.springframework.org/tags/form" prefix="form" %>

<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Table Users ${id}</title>
    <!-- Latest compiled and minified CSS -->
    <link
      href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
      rel="stylesheet"
    />

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"></script>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
    <!-- <link href="/css/demo.css" rel="stylesheet"> -->
  </head>

  <body>
    <div class="container mt-5">
      <div class="row">
        <div class="col-12 mx-auto">
          <div class="d-flex justify-content-between">
            <h3>Details Produc ${id}</h3>
          </div>

          <hr />
          <div class="card" style="width: 18rem">
            <div class="card-header">Featured</div>
            <ul class="list-group list-group-flush">
              <li class="list-group-item">${product.id}</li>
              <li class="list-group-item">${product.name}</li>
              <li class="list-group-item">${product.age}</li>
            </ul>
          </div>
        </div>
      </div>
      <a href="/admin/product" class="btn btn-primary"> Table User</a>
    </div>
  </body>
</html>
