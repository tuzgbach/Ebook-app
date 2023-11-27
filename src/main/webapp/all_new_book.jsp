<%@page import="com.entity.BookDtls"%> <%@page import="java.util.List"%> <%@page
import="com.DB.DBConnect"%> <%@page import="com.DAO.BookDAOImpl"%> <%@ page
language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <%@include file="all_component/allCss.jsp" %>
  </head>
  <body>
    <%@include file="all_component/navbar.jsp" %>
    <div class="container-xxl" style="margin-left: 9rem; margin-right: 10rem">
        <div class="container-fluid">
            <div class="row p-5">
             
          <%
          BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn()); 
          List <BookDtls> list = dao.getAllNewBooks(); 
          for(BookDtls b:list) {
          %>
            <div class="col-md-3">
            <div class="card">
              <div class="card-body text-center">
                <img
                  src="book/<%=b.getPhotoName()%>"
                  alt=""
                  style="height: 200px; width: 150px"
                  class="img-thumblin" />
                <p><%=b.getBookName()%></p>
                <p>
                  <%=b.getAuthor()%>
                </p>
                <p>Category: <%=b.getBookCategory()%></p>
                <div class="row" style=" margin-left: 5px">
                  <a href="" class="btn btn-danger btn-sm">Cart<i class="fa-solid fa-cart-shopping"></i></a>
                  <a href="" class="btn btn-success btn-sm"><i class="fa-solid fa-eye"></i>View</a>
                  <a href="" class="btn btn-danger btn-sm"><i class="fa-solid fa-dollar-sign"></i><%=b.getPrice()%></a>
                </div>
              </div>
            </div>
           </div>
            
          <%}
          %> 
            </div>
          </div>
    </div>
  </body>
</html>
