
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/header.jsp" %>

   <!--  End navbar -->
<div class="container">
	<form:form action="site/sign_in.htm" cssStyle="width:300px;" cssClass="m-auto mt-5 loginValidation" method="post" novalidate="true">
		<div class="mb-3">
          <label for="exampleInputEmail1" class="form-label">Số điện thoại</label>
          <input name="username" type="text" pattern="^[0-9]{10}[0-9]?$" class="form-control" id="exampleInputEmail1" aria-describedby="emailHelp" required>
          <div class="invalid-feedback">Xin vui lòng nhập số điện thoại hợp lệ</div>
        </div>
        <div class="mb-3">
          <label for="exampleInputPassword1" class="form-label">Mật khẩu</label>
          <input name="password" type="password" class="form-control"  id="exampleInputPassword1" required>
        	<div class="invalid-feedback">Xin vui lòng nhập mật khẩu hợp lệ</div>
        </div>
        <a href="site/forgotPassword.htm">Forgot your password?</a>
        <div class="d-flex justify-content-end">
            <a class="btn btn-success me-2" href="site/register.htm">Đăng ký</a>
            <button type="submit" class="btn btn-primary">Đăng nhập</button>
        </div>
	</form:form>

</div>
<%@include file="/WEB-INF/views/include/footer.jsp" %>