<%@page import="com.entity.BookDtls"%> <%@page import="com.DB.DBConnect"%>
<%@page import="com.DAO.BookDAOImpl"%> <%@ page language="java"
contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <%@include file="all_component/allCss.jsp" %>
  </head>
  <body>
    <%@include file="all_component/navbar.jsp" %> 
    
    <% 
	int bid = Integer.parseInt(request.getParameter("bid")); 
    BookDAOImpl dao = new BookDAOImpl(new DBConnect().getConn()); 
    BookDtls b = dao.getBookById(bid); 
    %>

    <div class="container-xxl" style="margin-left: 10rem; margin-right: 10rem">
      <div class="container-fluid">
        <div class="row d-flex">
          <div class="col-md-6 text-center p-5 border bg-white">
            <img
              src="./img/book.jpeg"
              alt=""
              style="height: 200px; width: 150px" />

            <h4 class="mt-3">
              BookName: <span class="text-success"> <%=b.getBookName()%></span>
            </h4>
            <h4 class="mt-3">Price: <span class="text-danger"> <%=b.getPrice()%> </span></h4>
            <h4 class="mt-3">Category: <span class="text-success"> <%=b.getBookCategory()%></span></h4>
          </div>
          <div class="col-md-6 text-center p-5 border bg-white">
            <h3> <%=b.getBookName()%></h3>
            
            <% 
            if ("New".equals(b.getBookCategory())) 
            {%>
           <h4>Contact of buyer</h4>
           <h3>Email:<%=b.getEmail()%></h3>         	
            <%}
            %>
            <div class="row">
              <div class="col-md-4 text-center text-danger p-2">
                <i class="fa-solid fa-money-bill"></i>
                <p>Cash On Develery</p>
              </div>
              <div class="col-md-4 text-center text-danger p-2">
                <i class="fa-solid fa-user"></i>
                <p>Return Available</p>
              </div>
              <div class="col-md-4 text-center text-danger p-2">
                <i class="fa-solid fa-cart-shopping"></i>
                <p>Free Delivery</p>
              </div>
            </div>

            <div class="text-center p-3">
              <a href="" class="btn btn-danger"> Add Cart </a>
              <a href="" class="btn btn-danger"> 22200 </a>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
