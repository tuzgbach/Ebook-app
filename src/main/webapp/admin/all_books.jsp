<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Danh Sách Sản Phẩm</title>
    <%@include file="allCss.jsp" %>
  </head>
  <body>
    <%@include file="navbar.jsp" %>
    <div class="container p-5">
      <h4>Hello Admin</h4>
      <table class="table table-striped">
        <thead class="bg-danger text-white">
          <tr>
            <th scope="col">Id</th>
            <th scope="col">Tên Sách</th>
            <th scope="col">Tác Giả</th>
            <th scope="col">Giá Cả</th>
            <th scope="col">Danh Mục</th>
            <th scope="col">Status</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
          <tr>
            <th scope="row">1</th>
            <td>Mark</td>
            <td>Otto</td>
            <td>@mdo</td>
            <td>Mark</td>
            <td>Otto</td>
            <td>
              <a href="#" class="btn btn-sm btn-primary">Edit</a>
              <a href="#" class="btn btn-sm btn-danger">Remove</a>
            </td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>
              <a href="#" class="btn btn-sm btn-primary">Edit</a>
              <a href="#" class="btn btn-sm btn-danger">Remove</a>
            </td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td>Larry</td>
            <td>the Bird</td>
            <td>@twitter</td>
            <td>Larry</td>
            <td>the Bird</td>
            <td>
              <a href="#" class="btn btn-sm btn-primary">Edit</a>
              <a href="#" class="btn btn-sm btn-danger">Remove</a>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </body>
</html>
