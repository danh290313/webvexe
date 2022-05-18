<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/header.jsp" %>



	<div class="container">
		<h3 class="text-center mt-4">THÔNG TIN TÀI KHOẢN</h3>


		<form:form action="site/sign_up.htm" modelAttribute="tks"
			method="POST" class="m-auto mt-5" style="width: 400px;">
			<input type="hidden" name="${_csrf.parameterName}"
				value="${_csrf.token}" />
			<div class="mb-3">
				<label for="nameInput" class="form-label">Họ tên *</label>
				<form:input type="text" class="form-control" path="username"
						/>
					<br />
			</div>
			<div class="mb-3">
				<label for="passwordInput" class="form-label">Password *</label>
					<form:input type="password" class="form-control" id="passwordInput" path="password"
						/>
					<br />
			</div>
			<button type="submit" class="btn btn-outline-success float-end">Đăng
				ký</button>
               <div style="color: green;">${message }</div>
		</form:form>
	</div>
	<div class="clearfix"></div>

<%@include file="/WEB-INF/views/include/footer.jsp" %>