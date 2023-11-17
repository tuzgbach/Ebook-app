<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="UTF-8" />
    <title>Insert title here</title>
    <%@include file="allCss.jsp" %>
  </head>
  <body>
    <%@include file="navbar.jsp" %>

    <div class="container p-5">
      <div class="row">
        <div class="col-md-4 offset-md-4">
          <div class="card">
            <div class="card-body">
              <h4 class="text-center">Thêm Sách</h4>
              <form
                action="../AdminAddBookServlet"
                method="post"
                enctype="multipart/form-data">
                <div class="form-group">
                  <label for="exampleInputEmail1">Tên Sách</label>
                  <input
                    name="bname"
                    type="text"
                    class="form-control"
                    id="exampleInputEmail1"
                    aria-describedby="emailHelp" />
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Tác giả</label>
                  <input
                    name="author"
                    type="text"
                    class="form-control"
                    id="exampleInputEmail1"
                    aria-describedby="emailHelp" />
                </div>
                <div class="form-group">
                  <label for="exampleInputEmail1">Giá Sách</label>
                  <input
                    name="price"
                    type="number"
                    class="form-control"
                    id="exampleInputEmail1"
                    aria-describedby="emailHelp" />
                </div>
                <div class="form-group">
                  <label for="inputState">Danh Mục Sách</label>
                  <select id="inputState" name="btype" class="form-control">
                    <option selected>--selected--</option>
                    <option value="New">New Book</option>
                  </select>
                </div>
                <div class="form-group">
                  <label for="inputState">Book Status</label>
                  <select id="inputState" name="bstatus" class="form-control">
                    <option selected>--selected--</option>
                    <option value="Active">Active</option>
                    <option value="Inactive">Inactive</option>
                  </select>
                </div>
                <div class="form-group">
                  <label for="exampleFormControlFile1">Upload Photo</label>
                  <input
                    name="bimg"
                    type="file"
                    class="form-control-file"
                    id="exampleFormControlFile1" />
                </div>

                <button type="submit" class="btn btn-primary">Thêm Sản phẩm</button>
              </form>
            </div>
          </div>
        </div>
      </div>
    </div>
  </body>
</html>
