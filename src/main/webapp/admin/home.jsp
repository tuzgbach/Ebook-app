<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> <%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %> <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Admin</title>
    <%@include file="allCss.jsp" %>
  </head>
  <body>
    <%@include file="navbar.jsp" %>
    <!-- Main -->
    <div class="container mt-5">
      <h4>Admin Quản Trị</h4>
      <div class="row">
        <div class="col-md-3">
          <a href="add_books.jsp">
            <div class="card">
              <div class="card-body text-center">
                <i class="fa-solid fa-square-plus fa-3x text-primary"></i>
                <br />
                <h4>Thêm sách</h4>
              </div>
            </div>
          </a>
        </div>

        <!--  Xem sách đã add -->
        <div class="col-md-3">
          <a href="all_books.jsp">
            <div class="card">
              <div class="card-body text-center">
                <i class="fa-solid fa-book-medical fa-3x text-danger"></i>
                <br />
                <h4>Sách đã thêm</h4>
              </div>
            </div>
          </a>
        </div>

        <!--  Xem sách đã được oder -->
        <div class="col-md-3">
          <a href="orders.jsp">
            <div class="card">
              <div class="card-body text-center">
                <i class="fa-solid fa-cart-plus fa-3x text-success"></i>
                <br />
                <h4>Oders</h4>
              </div>
            </div>
          </a>
        </div>

        <!--  Xem sách đã được oder -->
        <div class="col-md-3">
          <a href="">
            <div class="card">
              <div class="card-body text-center">
                <i class="fa-solid fa-right-from-bracket fa-3x text-danger"></i>
                <br />
                <h4>Log Out</h4>
              </div>
            </div>
          </a>
        </div>
      </div>
      <div style="margin-top: 10rem"><%@include file="footer.jsp" %></div>
    </div>
  </body>
</html>
