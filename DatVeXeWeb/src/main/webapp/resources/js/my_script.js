// khi chọn khứ hồi thì hiện field chọn ngày về, một chiều thì disable đi
$("input[type=radio][name=loaive]").change(function() {
    if (this.value == 'motchieu') {
        $("#chonNgayVe").attr("disabled", true);
    } else {
        $("#chonNgayVe").attr("disabled", false);
    }
})

$("input[type=radio][name=loaiDangNhap]").change(function() {
    if (this.value == 'dangKy')
        $("#txtPassword").attr("disabled", true);
    else
        $("#txtPassword").attr("disabled", false);
})

// hàm để lúc chọn ngày đi với ngày về phải từ ngày hiện tại trở đi
$(function(){
    var dtToday = new Date();
    
    var month = dtToday.getMonth() + 1;
    var day = dtToday.getDate();
    var year = dtToday.getFullYear();
    if(month < 10)
        month = '0' + month.toString();
    if(day < 10)
        day = '0' + day.toString();
    
    var maxDate = year + '-' + month + '-' + day;
    
    $('.expiredDate').attr('min', maxDate);
});

//////////////////////////////////// Làm phần Chọn ghế ở Bước 2

 // khi ấn chọn ghế thì active btn chọn ghế
	 let allBtnChonGhe = document.querySelectorAll('.btnChonGhe');
	 allBtnChonGhe.forEach(function(btn) {
		 btn.addEventListener('click', function() {
			allBtnChonGhe.forEach(function(btntemp) {
				btntemp.classList.remove('active');
				// get collapse tương ứng với mỗi nút
				$(btntemp.getAttribute('href')).removeClass('show');
			}) 
			 if (btn.classList.contains('active'))
					btn.classList.remove('active');
			 else
					btn.classList.add('active');
			// tắt show mấy cái collapse khác ngoài cái này
					
		 })
		
	})

  // làm cái đếm số lượng xe + tính tổng tiền
  
  // cái này thì disabled mấy cái ghế mà đã đặt trong các vé trước rồi
  let disabledGheCheckBoxes = document.querySelectorAll('input[type=checkbox][name=gheCheckBox]:disabled');
	 disabledGheCheckBoxes.forEach(function(checkbox) {
		 $('label[for=' + checkbox.id + ']').addClass('btn-secondary');
		 $('label[for=' + checkbox.id + ']').removeClass('btn-outline-primary');
	 });
	// end
	/// Đầu tiên là tạo ra 1 mảng và ứng với mỗi phần tử trong mảng là 1 mảng những input checkbox 
	//tương ứng với mỗi chuyến xe
	//
	//
	var cardMoiChuyenXe = document.querySelectorAll('[id^="cardChuyenXeThu"]'); // lấy được list chứa các card mà có id bắt đầu là cardChuyenXeThu
	var idCardKhongCoDauThang = []
	cardMoiChuyenXe.forEach(function(card){   
	     idCardKhongCoDauThang.push(card.id);
	})
	// -> lúc này id card là list chứa các chuỗi là id tương ứng với mỗi card (2) ['#cardChuyenXeThu4', '#cardChuyenXeThu3']
	// -> lúc này idCardKhongCoDauThang là list chứa các chuỗi là id tương ứng với mỗi card ['cardChuyenXeThu4', 'cardChuyenXeThu3']
	var soGheTuongUngVoiMoiCard = []; 
	idCardKhongCoDauThang.forEach(function(id) {
	    soGheTuongUngVoiMoiCard.push({ tenChuyenXe: id, arrayGhe :document.querySelectorAll('div#' + id + ' input[type=checkbox][name=gheCheckBox]:not(:disabled)')  })
	});
	
	// kết quả của soGheTuongUngVoiMoiCard là: (2) [{…}, {…}], với mỗi item là một object với key: idChuyenXe, value: mảng chứa tất cả chỗ ngồi của chuyến xe
	soGheTuongUngVoiMoiCard.forEach(function(item){
		let tenChuyenXe = item['tenChuyenXe'];
		let arrayCacGhe = item['arrayGhe'];
		
		arrayCacGhe.forEach(function(checkbox) {
			checkbox.addEventListener('change', function() {
				let tongTien = 0;
				let giaMoiGhe = parseInt(document.getElementById('tienVeMoiCho' + tenChuyenXe).innerText);
				
				let pTenGhe = document.getElementById('soGhe' + tenChuyenXe);
				let pTongTien = document.getElementById('tongTien' + tenChuyenXe);
				
				let checkedBoxes = Array.from(arrayCacGhe)
										.filter(i => i.checked)
										.map(i => i.value);
				
				let notCheckedBoxes = Array.from(arrayCacGhe)
                .filter(i => !(i.checked));
				
				// disabled các ghế nếu chọn đủ 5 ghế
      	      if(checkedBoxes.length == 5) {
      	        notCheckedBoxes.forEach(function(checkbox) {
      	          checkbox.disabled = true;
      	          $('label[for=' + checkbox.id + ']').addClass('btn-secondary');
      	          $('label[for=' + checkbox.id + ']').removeClass('btn-outline-primary');
      	        })
      	      } else {
      	        notCheckedBoxes.forEach(function(checkbox) {
      	          checkbox.disabled = false;
      	          $('label[for=' + checkbox.id + ']').addClass('btn-outline-primary');
      	          $('label[for=' + checkbox.id + ']').removeClass('btn-secondary');
      	        })
      	      }
				
      	    //
    	      tongTien = giaMoiGhe * checkedBoxes.length;
    	      let tenGhe = checkedBoxes.reduce(function(prev,curr) {
    	          if (prev === "")
    	            return "" + curr;
    	          else
    	            return prev + ", " + curr;
    	      }, "");
    	      pTenGhe.innerHTML = '<span class="text-muted">' + checkedBoxes.length +  ' vé:</span><span class="text-danger fw-bold"> ' +  tenGhe + '</span>';
    	      pTongTien.innerHTML = '<span class="text-muted">Tổng tiền:  </span><span class="text-danger fw-bold"> ' + tongTien + '</span>';
				
				
			})
		})
})

  
  ////////////////////////////////// Đổi màu khi chọn phương thức thanh toán ///////////////////////////////

$(document).ready(function() {
  var radios = document.querySelectorAll('input[type=radio][name="hinhThucThanhToan"]');

function addBankItemClass(event) {
  if (this.checked) {
    radios.forEach(function(radio) {
      $('label[for="' + radio.id + '"]').removeClass('bank-selected');
    })
    $('label[for="' + this.id + '"]').addClass('bank-selected');
    // nếu radio hiện tại mà là thẻ quốc tế hoặc thẻ trong nước thì hiện lên bảng ngân hàng
    if (this.id == 'theQuocTe') {
      $('#cacTheQuocTe').addClass('d-block').removeClass('d-none');
      $('#cacTheTrongNuoc').removeClass('d-block').addClass('d-none');
    } else if (this.id =='theNoiDia') {
      $('#cacTheTrongNuoc').addClass('d-block').removeClass('d-none');
      $('#cacTheQuocTe').removeClass('d-block').addClass('d-none');
    } else {
      $('#cacTheQuocTe').removeClass('d-block').addClass('d-none');
      $('#cacTheTrongNuoc').removeClass('d-block').addClass('d-none');
    }
  }
}

Array.prototype.forEach.call(radios, function(radio) {
  radio.addEventListener('change', addBankItemClass);
});
})


