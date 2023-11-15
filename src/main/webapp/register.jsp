<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Register</title>
    <%@include file="all_component/allCss.jsp" %>
  </head>
  <body>
    <%@include file="all_component/navbar.jsp" %>

    <!-- start register -->
    <div class="container p-2">
      <div class="row">
        <div class="col-md-4 offset-md-4">
          <div class="card">
            <div class="card-body">
              <h4 class="text-center">Đăng ký tài khoản</h4>
              <form action="register" method="post">
                <div class="form-group">
                  <label for="exampleInputEmail1">Họ và Tên</label>
                  <input
                    type="text"
                    class="form-control"
                    id="exampleInputEmail1"
                    aria-describedby="emailHelp"
                    required="required"
                    name="fname" />
                </div>

                <div class="form-group">
                  <label for="exampleInputEmail1">Địa chỉ Email</label>
                  <input
                    type="email"
                    class="form-control"
                    id="exampleInputEmail1"
                    aria-describedby="emailHelp"
                    required="required"
                    name="email" />
                </div>

                <div class="form-group">
                  <label for="exampleInputEmail1">Số điện thoại</label>
                  <input
                    type="number"
                    class="form-control"
                    id="exampleInputEmail1"
                    aria-describedby="emailHelp"
                    required="required"
                    name="phone" />
                </div>

                <div class="form-group">
                  <label for="exampleInputPassword1">Mật khẩu của bạn</label>
                  <input
                    type="password"
                    class="form-control"
                    id="exampleInputPassword1"
                    placeholder="Password"
                    required="required"
                    name="password" />
                </div>

                <div class="form-check">
                  <input
                    type="checkbox"
                    class="form-check-input"
                    id="exampleCheck1"
                    name="check" />
                  <label class="form-check-label" for="exampleCheck1"
                    >Check me out</label
                  >
                </div>
                <button type="submit" class="btn btn-primary">Submit</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
    <!-- end register -->
    <%@include file="all_component/footer.jsp" %>
  </body>
</html>
