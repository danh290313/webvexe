<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/views/include/header.jsp" %>

	<!--  end navbar  -->
	<!-- body -->
	
	<!-- CHO TÀI KHOẢN KHÁCH HÀNG -->
	<c:if test="${tk_kh.hoTen !=null }">
	<div class="container ">
		<h3 class="text-center my-4">Thông tin cá nhân</h3>
		<div class="row mt-5">
			<div class="col-12 col-md-8 col-xl-6">
				<div class="card m-auto " style="max-width: 700px;">
					<div class="card-header text-muted">THÔNG TIN CÁ NHÂN</div>
					<div class="card-body">
						<div class="row my-4">
							<div class="col-5 text-muted">Họ và Tên:</div>
							<div class="col-7">${khach_hangs.hoTen}</div>
						</div>

						<div class="row my-4">
							<div class="col-5 text-muted">Email:</div>
							<div class="col-7">${khach_hangs.email }</div>
						</div>

						<div class="row my-4">
							<div class="col-5 text-muted">Số điện thoại:</div>
							<div class="col-7">${khach_hangs.phoneNumber }</div>
						</div>

						<div class="row my-4">
							<div class="col-5 text-muted">CMND/CCCD:</div>
							<div class="col-7">${khach_hangs.cmnd }</div>
						</div>

						<div class="row my-4">
							<div class="col-5 text-muted">Giới tính:</div>
							<c:choose>
								<c:when test="${khach_hangs.gioiTinh == null}">
									<div class="col-7 text-muted">Chưa có thông tin</div>
								</c:when>
								<c:otherwise>
									<div class="col-7">${khach_hangs.gioiTinh }</div>
								</c:otherwise>
							</c:choose>

						</div>

						<div class="row my-4">
							<div class="col-5 text-muted">Ngày sinh:</div>
							<c:choose>
								<c:when test="${khach_hangs.ngaySinh == null}">
									<div class="col-7 text-muted">Chưa có thông tin</div>
								</c:when>
								<c:otherwise>
									<div class="col-7">${khach_hangs.ngaySinh }</div>
								</c:otherwise>
							</c:choose>


						</div>

						<div class="row my-4">
							<div class="col-5 text-muted">Nghề nghiệp:</div>
							<c:choose>
								<c:when test="${khach_hangs.ngheNghiep == null}">
									<div class="col-7 text-muted">Chưa có thông tin</div>
								</c:when>
								<c:otherwise>
									<div class="col-7">${khach_hangs.ngheNghiep }</div>
								</c:otherwise>
							</c:choose>


						</div>
					</div>
				</div>
			</div>

			<div
				class="col-12 col-md-4 col-xl-6 d-flex justify-content-center align-items-center">
				<a class="my-4 mt-md-0 btn btn-success"
					href="site/updatekh/${khach_hangs.userId}.htm">Cập
					nhật thông tin</a>
					
			</div>
		</div>



	</div>
	
       <div class="container ">
		<h3 class="text-center my-4">Thông tin cá nhân</h3>
		<form:form action="site/update.htm" modelAttribute="khach_hang" method="post"
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
									<!--  <input type="text" name="dd" id="" placeholder="Ngày"
										class="form-control" style="width: 100px;" value="${user.ngaySinh.substring(8) }" required> <input
										type="text" name="mm" id="" placeholder="Tháng"
										class="form-control" style="width: 100px;" value="${user.ngaySinh.substring(5,7) }" required> <input
										type="text" name="yyyy" id="" placeholder="Năm"
										class="form-control" style="width: 100px;" value="${user.ngaySinh.substring(0,4) }" required>-->
									<form:input path="ngaySinh" cssClass="form-control"
										id="inputJob" required="true" />
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
					<button name="btnEdit" type="submit" class="btn btn-primary">Save</button>
				</div>
				<p>${message }</p>
			</div>
		</form:form>
	</div>

		
	
	</c:if>
	<!-- CHO NHÂN VIÊN -->
	<c:if test="${tk_nv.hoTen !=null }">
			<div class="container ">
		<h3 class="text-center my-4">Thông tin cá nhân</h3>
		<div class="row mt-5">
			<div class="col-12 col-md-8 col-xl-6">
				<div class="card m-auto " style="max-width: 700px;">
					<div class="card-header text-muted">THÔNG TIN CÁ NHÂN</div>
					<div class="card-body">
						<div class="row my-4">
							<div class="col-5 text-muted">Họ và Tên:</div>
							<div class="col-7">${nhan_viens.hoTen}</div>
						</div>

						<div class="row my-4">
							<div class="col-5 text-muted">Email:</div>
							<div class="col-7">${nhan_viens.email }</div>
						</div>

						<div class="row my-4">
							<div class="col-5 text-muted">Số điện thoại:</div>
							<div class="col-7">${nhan_viens.soDienThoai }</div>
						</div>

						<div class="row my-4">
							<div class="col-5 text-muted">CMND/CCCD:</div>
							<div class="col-7">${nhan_viens.cmnd }</div>
						</div>

						<div class="row my-4">
							<div class="col-5 text-muted">Giới tính:</div>
								<div class="col-7">${nhan_viens.gioiTinh }</div>
						</div>

						<div class="row my-4">
							<div class="col-5 text-muted">Ngày sinh:</div>
							<c:choose>
								<c:when test="${nhan_viens.ngaySinh == null}">
									<div class="col-7 text-muted">Chưa có thông tin</div>
								</c:when>
								<c:otherwise>
									<div class="col-7">${nhan_viens.ngaySinh }</div>
								</c:otherwise>
							</c:choose>
						</div>
					</div>
				</div>
			</div>

			<div
				class="col-12 col-md-4 col-xl-6 d-flex justify-content-center align-items-center">
				<a class="my-4 mt-md-0 btn btn-success"
					href="">Cập
					nhật thông tin</a>
			</div>
		</div>
	</div>
	<div class="container ">
		<h3 class="text-center my-4">Thông tin cá nhân</h3>
		<form:form action="site/update2.htm" modelAttribute="nhan_vien" method="post"
			cssClass="infoValidation" novalidate="true">
			<div class="row my-5">

				<div class="col-12 col-md-8 col-xl-6">
					<div class="card m-auto " style="max-width: 700px;">
						<div class="card-header text-muted">THÔNG TIN CÁ NHÂN</div>
						<div class="card-body">
                              <div class="row mb-3">
								<label for="inputName" class="col-sm-3 col-form-label">ID
									:</label>
								<div class="col-sm-9">
									<form:input path="idNhanVien" cssClass="form-control" id="inputName"
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
									<form:input path="soDienThoai" 
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
									<!--  <input type="text" name="dd" id="" placeholder="Ngày"
										class="form-control" style="width: 100px;" value="${user.ngaySinh.substring(8) }" required> <input
										type="text" name="mm" id="" placeholder="Tháng"
										class="form-control" style="width: 100px;" value="${user.ngaySinh.substring(5,7) }" required> <input
										type="text" name="yyyy" id="" placeholder="Năm"
										class="form-control" style="width: 100px;" value="${user.ngaySinh.substring(0,4) }" required>-->
									<form:input path="ngaySinh" cssClass="form-control"
										id="inputJob" required="true" />
								</div>
								
							</div>
							

						</div>
					</div>
				</div>

				<div
					class="col-12 col-md-4 col-xl-6 d-flex flex-column justify-content-center align-items-center">
					<button name="btnEdit2" type="submit" class="btn btn-primary">Save</button>
				</div>
				<p>${message }</p>
			</div>
		</form:form>
	</div>
	</c:if>
	


<%@include file="/WEB-INF/views/include/footer.jsp" %>