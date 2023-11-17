<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>All_Orders</title>
    <%@include file="allCss.jsp" %>
  </head>
  <body>
    <%@include file="navbar.jsp" %>
    <div class="container p-5">
      <h4>Hello Admin</h4>
      <table class="table table-striped">
        <thead class="bg-danger text-white">
          <tr>
            <th scope="col">Order Id</th>
            <th scope="col">Tên Khách Hàng</th>
            <th scope="col">Email</th>
            <th scope="col">Địa chỉ</th>
            <th scope="col">Phone</th>
            <th scope="col">Tên Sách</th>
            <th scope="col">Tác giả</th>
            <th scope="col">Giá Sách</th>
            <th scope="col">Payment type</th>
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
            <td>@mdo</td>
            <td>Mark</td>
            <td>Otto</td>
          </tr>
          <tr>
            <th scope="row">2</th>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@fat</td>
            <td>Jacob</td>
            <td>Thornton</td>
            <td>@mdo</td>
            <td>Mark</td>
            <td>Otto</td>
          </tr>
          <tr>
            <th scope="row">3</th>
            <td>Larry</td>
            <td>the Bird</td>
            <td>@twitter</td>
            <td>Larry</td>
            <td>the Bird</td>
            <td>@mdo</td>
            <td>Mark</td>
            <td>Otto</td>
          </tr>
        </tbody>
      </table>
    </div>
  </body>
</html>
