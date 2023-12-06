<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
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
              BookDAOImpl dao2 = new BookDAOImpl(new DBConnect().getConn()); 
              List <BookDtls> list2 = dao2.getAllRecentBooks();
              
              for(BookDtls b:list2) {
                %>
                  <div class="col-md-3">
                    <div class="card mt-4">
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
                      <p>Category:<%=b.getBookCategory()%></p>
                      <div class="row">
                        <a href="" class="btn btn-danger btn-sm">Cart<i class="fa-solid fa-cart-shopping"></i></a>
                        <a href="" class="btn btn-success btn-sm ml-1"><i class="fa-solid fa-eye"></i>View</a>
                        <a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-dollar-sign"></i><%=b.getPrice()%></a>
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
