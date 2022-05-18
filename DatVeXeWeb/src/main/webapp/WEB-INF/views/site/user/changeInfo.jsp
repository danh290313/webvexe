<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/header.jsp" %>


<!-- CHO KHÁCH HÀNG -->

   <div class="container">
       <form:form action="saveUser" modelAttribute="khach_hang" method="post"
			>
			
										
			 
			 
	  </form:form>
   </div>
  
	 <!-- <div class="container ">
		<h3 class="text-center my-4">Thông tin cá nhân</h3>
		<form:form action="saveUser" modelAttribute="khach_hang" method="post"
			cssClass="infoValidation" novalidate="true">
			<div class="row my-5">

				<div class="col-12 col-md-8 col-xl-6">
					<div class="card m-auto " style="max-width: 700px;">
						<div class="card-header text-muted">THÔNG TIN CÁ NHÂN</div>
						<div class="card-body">
                              <div class="row mb-3">
								<label for="inputName" class="col-sm-3 col-form-label">Họ
									và tên:</label>
								<div class="col-sm-9">
									<form:input path="userId" cssClass="form-control" id="inputName"
										 />

								</div>
							</div>

							<div class="row mb-3">
								<label for="inputName" class="col-sm-3 col-form-label">Họ
									và tên:</label>
								<div class="col-sm-9">
									<form:input path="hoTen" cssClass="form-control" 
										 />
									
								</div>
							</div>

							<div class="row mb-3">
								<label for="inputEmail" class="col-sm-3 col-form-label">Email:</label>
								<div class="col-sm-9">
									<form:input path="email" cssClass="form-control"
										 />
									

								</div>
							</div>

							<div class="row mb-3">

								<label for="inputPhone" class="col-sm-3 col-form-label">Số
									điện thoại:</label>
								<div class="col-sm-9">
									<form:input path="phoneNumber" disabled="true"
										cssClass="form-control" id="inputPhone" />
									
								</div>
							</div>

							<div class="row mb-3">
								<label for="inputIdno" class="col-sm-3 col-form-label">CMND/CCCD:</label>
								<div class="col-sm-9">

									<form:input path="cmnd" cssClass="form-control" id="inputIdno"
										required="true" />
									
								</div>
							</div>
							
							<div class="row my-4">
								<form:label path="gioiTinh">Giới tính:</form:label>

								<div class="col-sm-9 mt-2">
									<div class="form-check form-check-inline">
										<form:radiobutton path="gioiTinh" value="Nam" label="Nam"
											cssClass="form-check-input" required="true" />

									</div>
									<div class="form-check form-check-inline">
										<form:radiobutton path="gioiTinh" value="Nữ" label="Nữ"
											cssClass="form-check-input" required="true" />
									</div>

								</div>
							</div>


							
							<div class="row my-4">
								<div class="col-sm-3 col-form-label">Ngày sinh:</div>

								<div class="col-sm-9 row justify-content-around">
									<input type="text" name="dd" id="" placeholder="Ngày"
										class="form-control" style="width: 100px;" value="${user.ngaySinh.substring(8) }" required> <input
										type="text" name="mm" id="" placeholder="Tháng"
										class="form-control" style="width: 100px;" value="${user.ngaySinh.substring(5,7) }" required> <input
										type="text" name="yyyy" id="" placeholder="Năm"
										class="form-control" style="width: 100px;" value="${user.ngaySinh.substring(0,4) }" required>
									
								</div>
							</div>
							

							<div class="row mb-3">
								<label for="inputJob" class="col-sm-3 col-form-label">Nghề
									nghiệp:</label>
								<div class="col-sm-9">
									<form:input path="ngheNghiep" cssClass="form-control"
										id="inputJob" required="true" />
									
								</div>
							</div>
						</div>
					</div>
				</div>

				<div
					class="col-12 col-md-4 col-xl-6 d-flex flex-column justify-content-center align-items-center">
					<input type="submit" class="my-4 mt-md-0 btn btn-success d-block"
						style="width: 200px;" value="Lưu Thông Tin" /> <a
						class="my-4 mt-md-0 btn btn-danger d-block" style="width: 200px;"
						href="${pageContext.request.contextPath }/user/showInfo">Quay
						Lại</a>
				</div>
			</div>
		</form:form>
	</div> -->
	
<!-- x  CHO KHÁCH HÀNG x -->

<!-- CHO NHÂN VIÊN -->


<!-- x CHO NHÂN VIÊN x -->

<%@include file="/WEB-INF/views/include/footer.jsp" %>