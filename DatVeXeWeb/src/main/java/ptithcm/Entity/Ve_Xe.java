package ptithcm.Entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.JoinTable;
import javax.persistence.ManyToMany;
import javax.persistence.ManyToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Ve_Xe")
public class Ve_Xe {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_ve")
	private int idVe;
	
	
	@ManyToOne
	@JoinColumn(name = "id_khach_hang")
	private User idKhachHang;
	
	
	@ManyToOne
	@JoinColumn(name = "id_nhan_vien_thanh_toan")
	private Nhan_Vien idNhanVien;
	
	
	
		
	@ManyToOne
	@JoinColumn(name = "id_chuyen_xe")
	private Chuyen_Xe idChuyenXe;
	
	
	
	@ManyToMany(fetch = FetchType.EAGER)
	@JoinTable(
			name = "CT_Ve_Ghe",
			joinColumns = @JoinColumn(name = "id_ve"),
			inverseJoinColumns = @JoinColumn(name = "id_ghe")
			)
	private List<Ghe> gheList;
	
	
	@Column(name = "ngay_lap")
	private String ngayLap;
	
	@Column(name = "trang_thai")
	private String trangThai;
	
	@Column(name = "tong_tien")
	private long tongTien;
	
	@Column(name = "hinh_thuc_thanh_toan")
	private String hinhThucThanhToan;

	
	public Ve_Xe() {
	}
	
	
	public int getIdVe() {
		return idVe;
	}

	public void setIdVe(int idVe) {
		this.idVe = idVe;
	}

	public User getIdKhachHang() {
		return idKhachHang;
	}

	public void setIdKhachHang(User idKhachHang) {
		this.idKhachHang = idKhachHang;
	}

	public Nhan_Vien getIdNhanVien() {
		return idNhanVien;
	}

	public void setIdNhanVien(Nhan_Vien idNhanVien) {
		this.idNhanVien = idNhanVien;
	}

	

	public String getNgayLap() {
		return ngayLap;
	}

	public void setNgayLap(String ngayLap) {
		this.ngayLap = ngayLap;
	}



	public long getTongTien() {
		return tongTien;
	}

	public void setTongTien(long tongTien) {
		this.tongTien = tongTien;
	}

	public String getHinhThucThanhToan() {
		return hinhThucThanhToan;
	}

	public void setHinhThucThanhToan(String hinhThucThanhToan) {
		this.hinhThucThanhToan = hinhThucThanhToan;
	}


	public List<Ghe> getGheList() {
		return gheList;
	}


	public void setGheList(List<Ghe> gheList) {
		this.gheList = gheList;
	}


	public Chuyen_Xe getIdChuyenXe() {
		return idChuyenXe;
	}


	public void setIdChuyenXe(Chuyen_Xe idChuyenXe) {
		this.idChuyenXe = idChuyenXe;
	}


	@Override
	public String toString() {
		return "Ve_Xe [idVe=" + idVe + ", ngayLap=" + ngayLap + ", trangThai=" + trangThai + ", tongTien=" + tongTien
				+ ", hinhThucThanhToan=" + hinhThucThanhToan + "]";
	}


	public String getTrangThai() {
		return trangThai;
	}


	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}
	
}
