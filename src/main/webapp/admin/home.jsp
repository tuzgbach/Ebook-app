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
          <a data-toggle="modal" data-target="#exampleModalCenter">
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
      <!-- Modal -->
      <div
        class="modal fade"
        id="exampleModalCenter"
        tabindex="-1"
        role="dialog"
        aria-labelledby="exampleModalCenterTitle"
        aria-hidden="true">
        <div class="modal-dialog modal-dialog-centered" role="document">
          <div class="modal-content">
            <div class="modal-header">
              <h5 class="modal-title" id="exampleModalLongTitle"></h5>
              <button
                type="button"
                class="close"
                data-dismiss="modal"
                aria-label="Close">
                <span aria-hidden="true">&times;</span>
              </button>
            </div>
            <div class="modal-body">
              <div class="text-center">
                <h4>Do you want Logout</h4>
                <button
                  type="button"
                  class="btn btn-secondary"
                  data-dismiss="modal">
                  Close
                </button>
                <a href="../logout" type="button" class="btn btn-primary"
                  >Logout</a
                >
              </div>
            </div>
            <div class="modal-footer"></div>
          </div>
        </div>
      </div>
      <!-- End Modal -->
      <div style="margin-top: 10rem"><%@include file="footer.jsp" %></div>
    </div>
  </body>
</html>
