<%@page import="com.DB.DBConnect"%> <%@page import="com.DAO.BookDAOImpl"%>
<%@page import="com.entity.BookDtls"%> <%@ page language="java"
contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%> <%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@page
isELIgnored="false"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <style>
      body {
        background-color: #f8f9fa;
      }

      .card {
        margin-top: 50px;
      }

      .card-header {
        background-color: #007bff;
        color: #fff;
        text-align: center;
      }

      .form-group {
        margin-bottom: 20px;
      }

      label {
        font-weight: bold;
      }

      .btn-primary {
        background-color: #007bff;
        border-color: #007bff;
      }

      .btn-primary:hover {
        background-color: #0056b3;
        border-color: #0056b3;
      }

      .btn-back {
        background-color: #6c757d;
        border-color: #6c757d;
      }

      .btn-back:hover {
        background-color: #5a6268;
        border-color: #545b62;
      }
    </style>
    <%@include file="allCss.jsp" %>
  </head>
  <body>
    <%@include file="navbar.jsp" %>
    <div class="container p-5">
      <div class="row">
        <div class="col-md-4 offset-md-4">
          <div class="card">
            <div class="card-body">
              <h4 class="text-center">Thêm sách mới</h4>

              <% int id=Integer.parseInt(request.getParameter("id"));
              BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn()); BookDtls b
              = dao.getBookById(id); %>

              <form action="../editbooks" method="post">
                <input type="hidden" name="id" value="<%=b.getBookId()%>"/>
                <div class="form-group">
                  <label for="exampleInputEmail1">Tên Sách</label>
                  <input
                    name="bname"
                    type="text"
                    class="form-control"
                    id="exampleInputEmail1"
                    aria-describedby="emailHelp"
                    value="<%=b.getBookName()%>" />
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Tác giả</label>
                  <input
                    name="author"
                    type="text"
                    class="form-control"
                    id="exampleInputEmail1"
                    aria-describedby="emailHelp"
                    value="<%=b.getAuthor()%>" />
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Giá Sách</label>
                  <input
                    name="price"
                    type="number"
                    class="form-control"
                    id="exampleInputEmail1"
                    aria-describedby="emailHelp"
                    value="<%=b.getPrice()%>" />
                </div>
                <div class="form-group">
                  <label for="inputState">Tình trạng sách</label>
                  <select id="inputState" name="bstatus" class="form-control">
                    <% if("Active".equals(b.getStatus())) { %>
                    <option value="Active">Còn hàng</option>
                    <option value="Inactive">Hết hàng</option>
                    <% } else {%>
                    <option value="Inactive">Hết hàng</option>
                    <option value="Active">Còn hàng</option>
                    <%} %>
                  </select>
                </div>
                <button type="submit" class="btn btn-primary">
                  Update Product
                </button>
                <button class="btn btn-primary">
                  <a href="all_books.jsp" style="color: aliceblue"
                    >Xem sản phẩm</a
                  >
                </button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
