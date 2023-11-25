<%@page import="com.entity.BookDtls"%>
<%@page import="java.util.List"%>
<%@page import="com.DAO.BookDAOImpl"%>
<%@page import="java.sql.Connection"%> <%@page import="com.DB.DBConnect"%> <%@
page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Ecommerce-Book</title>
    <%@include file="all_component/allCss.jsp" %>
  </head>
  <body>
    <%@include file="all_component/navbar.jsp" %> <%-- <% Connection conn =
    DBConnect.getConn(); out.println(conn); %> --%>
    <div
      class="container-xxl d-flex"
      style="margin-left: 10rem; margin-right: 10rem">
      <div class="container-fluid">
        <div
          id="carouselExampleControls"
          class="carousel slide"
          data-ride="carousel">
          <div class="carousel-inner" style="height: 50vh; width: 100%">
            <div class="carousel-item active">
              <img
                class="d-block w-100"
                src="img/banner1.jpg"
                alt="First slide" />
            </div>
            <div class="carousel-item">
              <img
                class="d-block w-100"
                src="img/banner2.jpg"
                alt="Second slide" />
            </div>
            <div class="carousel-item">
              <img
                class="d-block w-100"
                src="img/banner3.jpg"
                alt="Third slide" />
            </div>
          </div>
          <a
            class="carousel-control-prev"
            href="#carouselExampleControls"
            role="button"
            data-slide="prev">
            <span class="carousel-control-prev-icon" aria-hidden="true"></span>
            <span class="sr-only">Previous</span>
          </a>
          <a
            class="carousel-control-next"
            href="#carouselExampleControls"
            role="button"
            data-slide="next">
            <span class="carousel-control-next-icon" aria-hidden="true"></span>
            <span class="sr-only">Next</span>
          </a>
        </div>
      </div>
      <div class="container-xxl">
        <div>
          <a href="">
            <img
              src="img/banner2.jpg"
              alt=""
              style="height: 19vh; width: 100%" />
          </a>
        </div>
        <div class="mt-1">
          <a href="">
            <img
              src="img/banner3.jpg"
              alt=""
              style="height: 19vh; width: 100%" />
          </a>
        </div>
      </div>
    </div>

    <!-- Start recent book  -->
    <div class="container">
      <h3 class="text-center">Recent Book</h3>
      <div class="row"> 
      <% 
      BookDAOImpl dao2 = new BookDAOImpl(DBConnect.getConn()); 
      List <BookDtls> list2 = dao2.getRecentBooks(); 
      
      for(BookDtls b:list2) {
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
      <div class="text-center mt-2">
        <a href="" class="btn btn-danger btn-sm text-white"> View All</a>
      </div>
    </div>
    <!-- end recent book  -->

    <hr />

    <!-- start new book -->
    <div class="container">
      <h3 class="text-center">New Book</h3>
      <div class="row">
     
        <%
        BookDAOImpl dao = new BookDAOImpl(DBConnect.getConn()); 
        List <BookDtls> list = dao.getNewBook(); 
        for(BookDtls b:list) {
        %>
        	<div class="col-md-3">
        	<div class="card crd-ho">
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
              <div class="row">
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
      <div class="text-center mt-2">
        <a href="" class="btn btn-danger btn-sm text-white"> View All</a>
      </div>
    </div>
    <!-- end new book -->

    <hr />
    <!-- start old book -->
    <div class="container">
      <h3 class="text-center">Old Book</h3>
      <div class="row">
        <% 
        BookDAOImpl dao3 = new BookDAOImpl(DBConnect.getConn()); 
        List <BookDtls> list3 = dao3.getNewBook(); 
        for (BookDtls b:list) {
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
                <div class="row">
                  <a href="" class="btn btn-success btn-sm ml-5"><i class="fa-solid fa-eye"></i>View</a>
                  <a href="" class="btn btn-danger btn-sm ml-1"><i class="fa-solid fa-dollar-sign"></i><%=b.getPrice() %> </a>
                </div>
              </div>
            </div>
          </div>
          <%}
        %>
      </div>
      <div class="text-center mt-2">
        <a href="" class="btn btn-danger btn-sm text-white">View All</a>
      </div>
    </div>
    <!-- end old book -->
    <hr />

    <%@include file="all_component/footer.jsp" %>
  </body>
</html>
