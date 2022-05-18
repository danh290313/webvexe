<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- ///////////////////// Anh duoi nav-->
<%@include file="/WEB-INF/views/include/header.jsp" %>

<img
	src="<c:url value='/resources/img/duoi_nav.png' />"
	class="img-fluid" alt="">
<!-- /////////////////// Form dat ve -->
<div class="container p-0">
	<div class="card  shadow position-relative">
		<div class="card-body">
			<form:form
				action="${pageContext.request.contextPath }/veXe/datVe/step2"
				method="GET" class="position-relative validation-loaive"
				id="formChonVe" novalidate="true"
				onsubmit="return validateLoaiVeForm()">
				<!-- //////////// loai ve-->
				<div>
					<div class="form-check d-inline-block ms-3">
						<input type="radio" value="motchieu" name="loaive"
							class="form-check-input" id="motchieu"> <label
							class="form-check-label fw-bold" for="motchieu">Một Chiều</label>
					</div>
					<div class="form-check d-inline-block ms-3">
						<input type="radio" value="khuhoi" name="loaive"
							class="form-check-input" id="khuhoi" checked> <label
							class="form-check-label fw-bold" for="khuhoi">Khứ Hồi</label>
					</div>
				</div>
				<div class="row">
					<div class="col-lg-6">
						<div class="row text-center justify-content-center my-3">
							<div class="form-group col-5 p-2 border rounded-3">
								<h6 class="card-title text-muted text-center">
									<label for="chonDiemDi" class="fw-bold">Điểm đi</label>
								</h6>
								<select name="chonDiemDi" id="chonDiemDi"
									class="border-0 fw-bold w-100 text-center">
									<c:forEach items="${tatCaDiaDiem }" var="diaDiem">
										<option value="${diaDiem.idDiaDiem }">${diaDiem.tenDiaDiem }</option>
									</c:forEach>
								</select>
							</div>
							<div class="col-1"></div>
							<div class="form-group col-5 p-2 border rounded-3">
								<h6 class="card-title text-muted text-center">
									<label for="chonDiemDen" class="fw-bold">Điểm đến</label>
								</h6>
								<select name="chonDiemDen"
									class="border-0 fw-bold w-100 text-center" id="chonDiemDen">
									<c:forEach items="${tatCaDiaDiem }" var="diaDiem">
										<option value="${diaDiem.idDiaDiem }">${diaDiem.tenDiaDiem }</option>
									</c:forEach>
								</select>
							</div>
						</div>
					</div>
					<div class="col-lg-6">
						<div class="row text-center justify-content-center my-3">
							<div class="col-5 form-group border rounded-3 p-2">
								<h6 class="card-title text-muted text-center">
									<label for="chonNgayDi" class="fw-bold">Ngày Đi</label>
								</h6>
								<input type="date"
									class="rounded-3 border-light expiredDate fw-bold w-100"
									name="chonNgayDi" id="chonNgayDi" required>
								<div class="invalid-feedback">Chọn ngày đi phù hợp</div>
							</div>
							<div class="col-1"></div>
							<div class="col-5 form-group border rounded-3 p-2">
								<h6 class="card-title text-muted text-center">
									<label for="chonNgayVe" class="fw-bold">Ngày về</label>
								</h6>
								<input type="date"
									class="rounded-3 border-light expiredDate fw-bold w-100"
									name="chonNgayVe" id="chonNgayVe" required>
								<div class="invalid-feedback">Chọn ngày về phù hợp</div>
							</div>
						</div>
					</div>
				</div>
				<button type="submit" id="btnTimXe"
					class="btn btn-primary position-absolute top-100 start-50 start-80 translate-middle-x  border rounded-3">
					<i class="fas fa-search"></i> TÌM CHUYẾN XE
				</button>
			</form:form>
		</div>
	</div>
	<!-- ///////////////////////// Carousel-->
	<div id="carouselExampleSlidesOnly" class="carousel slide mt-5"
		data-bs-ride="carousel">
		<div class="carousel-inner">
			<div class="carousel-item active" data-bs-interval="2500"
				style="max-height: 240px;">
				<img class="d-block w-100"
					src="<c:url value='/resources/img/pic1.jpg' />"
					alt="First slide">
			</div>
			<div class="carousel-item" data-bs-interval="2500"
				style="max-height: 240px;">
				<img class="d-block w-100"
					src="<c:url value='/resources/img/pic2.jpg' />"
					alt="Second slide">
			</div>
			<div class="carousel-item" data-bs-interval="2500"
				style="max-height: 240px;">
				<img class="d-block w-100"
					src="<c:url value='/resources/img/pic1.png' />"
					alt="Third slide">
			</div>
		</div>
	</div>
	<!--/////////////////////////// Tuyen Pho Bien -->
	<div id="tuyenPhoBien" class="my-3">
		<h5 class="orange-text fw-bold fs-5 text-center">TUYẾN PHỔ BIẾN</h5>
		<ul class="row w-100 justify-content-center">
			<div class="col-lg-5">
				<a href="${pageContext.request.contextPath }/veXe/datVe/step1"
					class="text-decoration-none">
					<li class="row my-3 rounded-3 shadow-lg  thanhChuyenXe"><img
						class="col-4 p-0"
						src="<c:url value='/resources/img/tuyen_1.png' />"
						class="img-fluid" alt="">
						<div class="col-8 py-3">
							<h5 class="orange-text text-right fw-bold fs-5">SÀI GÒN > ĐÀ LẠT</h5>
							<div class="justify-content-between d-flex">
								<span class="text-muted"><i class="fas fa-map-marker-alt"></i>
									426km</span> <span class="text-muted"><i class="far fa-clock"></i>
									8h</span> <span class="text-muted"><i class="fas fa-ticket-alt"></i>
									<span class="orange-text fs-6 fw-bold">250.000đ</span></span>
							</div>
						</div></li>
				</a> <a href="${pageContext.request.contextPath }/veXe/datVe/step1"
					class="text-decoration-none">
					<li class="row my-3 rounded-3 shadow-lg  thanhChuyenXe"><img
						class="col-4 p-0"
						src="<c:url value='/resources/img/tuyen_2.png' />"
						class="img-fluid" alt="">
						<div class="col-8 py-3">
							<h5 class="green-text text-right fw-bold fs-5">SÀI GÒN > NHA TRANG</h5>
							<div class="justify-content-between d-flex">
								<span class="text-muted"><i class="fas fa-map-marker-alt"></i>
									426km</span> <span class="text-muted"><i class="far fa-clock"></i>
									8h</span> <span class="text-muted"><i class="fas fa-ticket-alt"></i>
									<span class="green-text fs-6 fw-bold">250.000đ</span></span>
							</div>
						</div></li>
				</a> <a href="${pageContext.request.contextPath }/veXe/datVe/step1"
					class="text-decoration-none">
					<li class="row my-3 rounded-3 shadow-lg  thanhChuyenXe"><img
						class="col-4 p-0"
						src="<c:url value='/resources/img/tuyen_3.png' />"
						class="img-fluid" alt="">
						<div class="col-8 py-3">
							<h5 class="orange-text text-right fw-bold fs-5">SÀI GÒN > ĐÀ NẴNG</h5>
							<div class="justify-content-between d-flex">
								<span class="text-muted"><i class="fas fa-map-marker-alt"></i>
									426km</span> <span class="text-muted"><i class="far fa-clock"></i>
									8h</span> <span class="text-muted"><i class="fas fa-ticket-alt"></i>
									<span class="orange-text fs-6 fw-bold">250.000đ</span></span>
							</div>
						</div></li>
				</a> <a href="${pageContext.request.contextPath }/veXe/datVe/step1"
					class="text-decoration-none">
					<li class="row my-3 rounded-3 shadow-lg  thanhChuyenXe"><img
						class="col-4 p-0"
						src="<c:url value='/resources/img/tuyen_4.png' />"
						class="img-fluid" alt="">
						<div class="col-8 py-3">
							<h5 class="green-text text-right fw-bold fs-5">SÀI GÒN > CẦN THƠ</h5>
							<div class="justify-content-between d-flex">
								<span class="text-muted"><i class="fas fa-map-marker-alt"></i>
									426km</span> <span class="text-muted"><i class="far fa-clock"></i>
									8h</span> <span class="text-muted"><i class="fas fa-ticket-alt"></i>
									<span class="green-text fs-6 fw-bold">250.000đ</span></span>
							</div>
						</div></li>
				</a>
			</div>
			<div class="d-none d-md-block col-md-1"></div>
			<div class="col-lg-5">
				<a href="${pageContext.request.contextPath }/veXe/datVe/step1"
					class="text-decoration-none">
					<li class="row my-3 rounded-3 shadow-lg  thanhChuyenXe"><img
						class="col-4 p-0"
						src="<c:url value='/resources/img/tuyen_5.png' />"
						class="img-fluid" alt="">
						<div class="col-8 py-3">
							<h5 class="orange-text text-right fw-bold fs-5">ĐÀ NẴNG > HÀ NỘI</h5>
							<div class="justify-content-between d-flex">
								<span class="text-muted"><i class="fas fa-map-marker-alt"></i>
									426km</span> <span class="text-muted"><i class="far fa-clock"></i>
									8h</span> <span class="text-muted"><i class="fas fa-ticket-alt"></i>
									<span class="orange-text fs-6 fw-bold">250.000đ</span></span>
							</div>
						</div></li>
				</a> <a href="${pageContext.request.contextPath }/veXe/datVe/step1"
					class="text-decoration-none">
					<li class="row my-3 rounded-3 shadow-lg  thanhChuyenXe"><img
						class="col-4 p-0"
						src="<c:url value='/resources/img/tuyen_6.png' />"
						class="img-fluid" alt="">
						<div class="col-8 py-3">
							<h5 class="green-text text-right fw-bold fs-5">SÀI GÒN > HÀ TIÊN</h5>
							<div class="justify-content-between d-flex">
								<span class="text-muted"><i class="fas fa-map-marker-alt"></i>
									426km</span> <span class="text-muted"><i class="far fa-clock"></i>
									8h</span> <span class="text-muted"><i class="fas fa-ticket-alt"></i>
									<span class="green-text fs-6 fw-bold">250.000đ</span></span>
							</div>
						</div></li>
				</a> <a href="${pageContext.request.contextPath }/veXe/datVe/step1"
					class="text-decoration-none">
					<li class="row my-3 rounded-3 shadow-lg  thanhChuyenXe"><img
						class="col-4 p-0"
						src="<c:url value='/resources/img/tuyen_7.png' />"
						class="img-fluid" alt="">
						<div class="col-8 py-3">
							<h5 class="orange-text text-right fw-bold fs-5">SÀI GÒN > CHÂU ĐỐC</h5>
							<div class="justify-content-between d-flex">
								<span class="text-muted"><i class="fas fa-map-marker-alt"></i>
									426km</span> <span class="text-muted"><i class="far fa-clock"></i>
									8h</span> <span class="text-muted"><i class="fas fa-ticket-alt"></i>
									<span class="orange-text fs-6 fw-bold">250.000đ</span></span>
							</div>
						</div>
					</li>
				</a> 
				<a href="${pageContext.request.contextPath }/veXe/datVe/step1"
					class="text-decoration-none">
					<li class="row my-3 rounded-3 shadow-lg  thanhChuyenXe"><img
						class="col-4 p-0" class="col-4 p-0"
						src="<c:url value='/resources/img/tuyen_8.png' />"
						class="img-fluid" alt="">
						<div class="col-8 py-3">
							<h5 class="green-text text-right fw-bold fs-5">SÀI GÒN > CÀ MAU</h5>
							<div class="justify-content-between d-flex">
								<span class="text-muted"><i class="fas fa-map-marker-alt"></i>
									426km</span> <span class="text-muted"><i class="far fa-clock"></i>
									8h</span> <span class="text-muted"><i class="fas fa-ticket-alt"></i>
									<span class="green-text fs-6 fw-bold">250.000đ</span></span>
							</div>
						</div>
					</li>
				</a>
			</div>
		</ul>
	</div>
</div>

<%@include file="/WEB-INF/views/include/footer.jsp" %>