<%@page import="java.util.List"%> <%@page import="com.entity.BookDtls"%> <%@page
import="com.DB.DBConnect"%> <%@page import="com.DAO.BookDAOImpl"%> <%@ page
language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
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
      <table class="table table-striped">
        <button class="btn btn-primary" style="margin-left: 60rem;">
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
          BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn());
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
                  <a href="add_books.jsp" class="btn btn-sm btn-danger">Thêm</a>
                  <a href="#" class="btn btn-sm btn-primary">Sửa</a>
                  <a href="#" class="btn btn-sm btn-danger">Xoá</a>
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
