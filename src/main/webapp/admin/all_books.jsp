<%@page import="java.util.List"%> <%@page import="com.entity.BookDtls"%> <%@page
import="com.DB.DBConnect"%> <%@page import="com.DAO.BookDAOImpl"%> <%@ page
language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<%@ taglib
prefix="c" uri="http://java.sun.com/jsp/jstl/core" %> <%@page
isELIgnored="false"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Danh Sách Sản Phẩm</title>
    <%@include file="allCss.jsp" %>
  </head>
  <body>
    <%@include file="navbar.jsp" %>
    <div class="container p-3">
      <h4>Hello Admin</h4>

      <c:if test="${not empty succMsg}">
        <h5 class="text-center text-success">${succMsg}</h5>
        <c:remove var="succMsg" scope="session" />
      </c:if>

      <c:if test="${not empty failedMsg}">
        <h5 class="text-center text-danger">${failedMsg}</h5>
        <c:remove var="failedMsg" scope="session" />
      </c:if>
      <!--  -->
      
      <table class="table table-striped">
        <!-- thêm sản phẩm -->
        <button class="btn btn-primary">
          <a href="add_books.jsp" style="color: aliceblue">Thêm sản phẩm</a>
        </button>
        <!-- Quản lí đơn hàng -->
        <button class="btn btn-primary" style="margin-left: 8px;">
          <a href="orders.jsp" style="color: aliceblue"
            >Quản lí đơn hàng</a
          >
        </button>
        <thead class="bg-danger text-white">
          <tr>
            <th scope="col">Hình ảnh</th>
            <th scope="col">Tên sách</th>
            <th scope="col">Tác giả</th>
            <th scope="col">Giá sách</th>
            <th scope="col">Danh mục</th>
            <th scope="col">Tình trạng</th>
            <th scope="col">Action</th>
          </tr>
        </thead>
        <tbody>
        <%
          BookDAOImpl dao = new BookDAOImpl(new DBConnect().getConn());
          List<BookDtls> list= dao.getAllBooks();
          
          for(BookDtls b:list) {
            %>
              <tr>
                <td><img src="../book/<%=b.getPhotoName()%>" style="width:100px; height:100px;"></td>
                <td> <%=b.getBookName()%></td>
                <td><%=b.getAuthor()%></td>
                <td><%=b.getPrice()%></td>
                <td><%=b.getBookCategory()%></td>
                <td><%=b.getStatus()%></td>
                <td>
                  <a href="edit_books.jsp?id=<%=b.getBookId()%>" class="btn btn-sm btn-primary">Sửa</a>
                  <a href="../delete?id=<%=b.getBookId()%>" class="btn btn-sm btn-danger">Xoá</a>

                </td>
              </tr>      	
            <%
          }
        %>
        </tbody>
      </table>
    </div>
  </body>
</html>
