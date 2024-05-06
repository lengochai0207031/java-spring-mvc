<%@page contentType="text/html" pageEncoding="UTF-8" %> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %> <%@taglib
uri="http://www.springframework.org/tags/form" prefix="form" %>

<html lang="en">
  <head>
    <meta charset="UTF-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Table Users</title>
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
            <h3>Table users</h3>
            <a href="/admin/user/create" class="btn btn-primary"
              >Create a user</a
            >
          </div>

          <hr />
          <table class="table table-bordered table-hover">
            <thead>
              <tr>
                <th>ID</th>
                <th>Full Name</th>
                <th>PassWord</th>
                <th>Phone</th>
                <th>Email</th>
                <th>Address</th>
              </tr>
            </thead>
            <tbody>
              <c:forEach var="user" items="${users1}">
                <tr>
                  <td>${user.id}</td>
                  <td>${user.fullName}</td>
                  <td>${user.passWord}</td>
                  <td>${user.phone}</td>
                  <td>${user.email}</td>
                  <td>${user.address}</td>
                  <td>
                    <a href="/admin/user/${user.id}">
                      <button class="btn btn-success">View</button></a
                    >
                    <a href="/admin/user/updateUsers/${user.id}">
                      <button class="btn btn-warning mx-2">Update</button></a
                    >
                    <a href="/admin/user/delete/${user.id}">
                      <button class="btn btn-danger">Delete</button></a
                    >
                  </td>
                </tr>
              </c:forEach>
            </tbody>
          </table>
        </div>
      </div>
    </div>
  </body>
</html>