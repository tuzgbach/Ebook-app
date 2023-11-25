<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%> 
<%@ taglib prefix="c"
uri="http://java.sun.com/jsp/jstl/core" %> <%@page isELIgnored="false"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Login</title>
    <%@include file="all_component/allCss.jsp" %>
  </head>
  <body>
    <%@include file="all_component/navbar.jsp" %>

    <!-- start Login -->

    <div class="container-fluid mt-3">
      <div class="row">
        <div class="col-md-4 offset-md-4">
          <div class="card">
            <div class="card-body">
              <h5 class="text-center">Đăng nhập</h5>
              
              <c:if test="${not empty failedMsg}">
                <h5 class="text-center text-danger">${failedMsg}</h5>
                <c:remove var="failedMsg" scope="session" />
              </c:if>

              <c:if test="${not empty succMsg}">
                <h5 class="text-center text-danger">${succMsg}</h5>
                <c:remove var="succMsg" scope="session" />
              </c:if>

              <form action="login" method="post">
                <div class="form-group">
                  <label for="exampleInputEmail1">Email address</label>
                  <input
                    type="email"
                    class="form-control"
                    id="exampleInputEmail1"
                    aria-describedby="emailHelp"
                    placeholder="Enter email"
                    required="required"
                    name="email" />
                  <small id="emailHelp" class="form-text text-muted"
                    >We'll never share your email with anyone else.</small
                  >
                </div>
                <div class="form-group">
                  <label for="exampleInputPassword1">Password</label>
                  <input
                    type="password"
                    class="form-control"
                    id="exampleInputPassword1"
                    placeholder="Password"
                    required="required"
                    name="password" />
                </div>

                <div class="text-center p-3">
                  <button type="submit" class="btn btn-primary">
                    Đăng nhập
                  </button>
                  <br />
                  <a href="register.jsp">Tạo tài khoản</a>
                </div>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
