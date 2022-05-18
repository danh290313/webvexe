<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@include file="/WEB-INF/views/include/header.jsp" %>

	<div class="container">
		<div class="d-flex justify-content-between my-4">
			<h3 class="orange-text">Lịch sử mua vé</h3>
			<a href="${pageContext.request.contextPath }/veXe/datVe/step1" class="btn bg-orange border rounded-pill px-3">Đặt vé</a>
		</div>

		<!-- Thanh tìm kiếm -->
		<form class="row g-3" action="${pageContext.request.contextPath }/veXe/timKiemVeKH" method="GET">
			<div class="col-md-6 col-lg-3">
				<label for="maVeInput" class="form-label">Mã vé</label> <input
					type="text" class="form-control" name="maVeInput" placeholder="Nhập mã vé" id="maVeInput">
			</div>
			<div class="col-md-6 col-lg-3">
				<label for="dateInput" class="form-label">Thời gian</label> <input
				 name="dateInput"	type="date" class="form-control" id="dateInput">
			</div>
			<div class="col-md-6 col-lg-3">
				<label for="tuyenDuongInput" class="form-label">Tuyến đường</label> <select
					class="form-select" id="tuyenDuongInput" name="tuyenDuongInput" >
					<option value="default" selected>Chọn tuyến đường</option>
					<option value="1va2">TP.Hồ Chí Minh => Đà Lạt</option>
					<option value="2va1">Đà Lạt => TP.Hồ Chí Minh</option>
					<option value="3">Three</option>
				</select>
			</div>

			<div class="col-md-6 col-lg-3">
				<label for="trangThaiInput" class="form-label">Trạng thái</label>
					
					<select
					class="form-select" id="trangThaiInputInput" name="trangThaiInput" >
					<option value="default" selected>Chọn trạng thái</option>
					<option value="Chờ thanh toán">Chờ thanh toán</option>
					<option value="Đã thanh toán">Đã thanh toán</option>
					
				</select>
			</div>

			<div class="col-md-6 d-flex justify-content-start">
				<input type="submit" value ="Tìm" class="btn  border rounded-pill px-4 me-2"/> 
				<input type="submit" value="Làm mới" class="btn border rounded-pill px-4 mx-2 orange-text"/>
			</div>

		</form>


		<!-- Bảng vé -->
		<table
			class="table mt-5  table-striped m-auto shado-sm overflow-scroll border">
			<thead>
				<tr>
					<th scope="col">Mã</th>
					<th scope="col">SL</th>
					<th scope="col">Tuyến đường</th>
					<th scope="col">Ngày lập</th>
					<th scope="col">Giờ</th>
					<th scope="col">Tổng tiền</th>
					<th scope="col">Thanh toán</th>
					<th scope="col">Trạng thái</th>
					<th scope="col">Thao tác</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${listVeXe }" var="veXe">
					<tr>
						<th scope="row">${veXe.idVe }</th>
						<td>${veXe.gheList.size() }</td>
						<td>${veXe.idChuyenXe.maTuyen.diaDiemDi.tenDiaDiem }<i
							class="fas fa-long-arrow-alt-right"></i>
							${veXe.idChuyenXe.maTuyen.diaDiemDen.tenDiaDiem }
						</td>
						<td>${hashMapNgayGio.get(veXe.idVe)[0] }</td>
						<td>${hashMapNgayGio.get(veXe.idVe)[1] }</td>
						<td>${veXe.tongTien }</td>
						<td>${veXe.hinhThucThanhToan }</td>
						<c:if test="${veXe.trangThai.equals(\"Chờ thanh toán\") }">
							<td>${veXe.trangThai }</td>
						</c:if>
						<c:if test="${veXe.trangThai.equals(\"Đã thanh toán\") }">
							<td class="text-success fw-bold">${veXe.trangThai }</td>
						</c:if>
						<c:if test="${veXe.trangThai.equals(\"Đã hủy\") }">
							<td class="text-danger fw-bold">${veXe.trangThai }</td>
						</c:if>
						
						<td><a class="btn btn-info" href="${pageContext.request.contextPath }/chiTietVe?veId=${veXe.idVe}">Chi tiết</a></td>
					</tr>
				</c:forEach>


			</tbody>
		</table>

	</div>



<%@include file="/WEB-INF/views/include/footer.jsp" %>