package ptithcm.Entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Nhan_Vien")
public class Nhan_Vien {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_nhan_vien")
	private int idNhanVien;
	
	@Column(name = "so_dien_thoai")
	private String soDienThoai;
	
	
	@OneToOne
	@JoinColumn(name = "id_tai_khoan")
	private Account idTaiKhoan;
	
	
	@OneToMany(mappedBy = "idNhanVien")
	private List<Ve_Xe> veXeList;
	
	
	@Column(name = "ho_ten")
	private String hoTen;
	
	@Column(name = "email")
	private String email;
	
	@Column(name = "cmnd")
	private String cmnd;
	
	@Column(name = "gioi_tinh")
	private String gioiTinh;
	
	@Column(name = "ngay_sinh")
	private String ngaySinh;
	
	@Column(name = "ngay_bd_lam_viec")
	private String ngayBDLamViec;
	
	@Column(name = "da_nghi_viec")
	private int daNghiViec;
	
	public Nhan_Vien() {
		
	}

	public int getIdNhanVien() {
		return idNhanVien;
	}

	public void setIdNhanVien(int idNhanVien) {
		this.idNhanVien = idNhanVien;
	}

	public String getSoDienThoai() {
		return soDienThoai;
	}

	public void setSoDienThoai(String soDienThoai) {
		this.soDienThoai = soDienThoai;
	}

	public Account getIdTaiKhoan() {
		return idTaiKhoan;
	}

	public void setIdTaiKhoan(Account idTaiKhoan) {
		this.idTaiKhoan = idTaiKhoan;
	}

	public List<Ve_Xe> getVeXeList() {
		return veXeList;
	}

	public void setVeXeList(List<Ve_Xe> veXeList) {
		this.veXeList = veXeList;
	}

	public String getHoTen() {
		return hoTen;
	}

	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getCmnd() {
		return cmnd;
	}

	public void setCmnd(String cmnd) {
		this.cmnd = cmnd;
	}

	public String getGioiTinh() {
		return gioiTinh;
	}

	public void setGioiTinh(String gioiTinh) {
		this.gioiTinh = gioiTinh;
	}

	public String getNgaySinh() {
		return ngaySinh;
	}

	public void setNgaySinh(String ngaySinh) {
		this.ngaySinh = ngaySinh;
	}

	public String getNgayBDLamViec() {
		return ngayBDLamViec;
	}

	public void setNgayBDLamViec(String ngayBDLamViec) {
		this.ngayBDLamViec = ngayBDLamViec;
	}

	public int getDaNghiViec() {
		return daNghiViec;
	}

	public void setDaNghiViec(int daNghiViec) {
		this.daNghiViec = daNghiViec;
	}

	@Override
	public String toString() {
		return "Nhan_Vien [idNhanVien=" + idNhanVien + ", soDienThoai=" + soDienThoai + ", idTaiKhoan=" + idTaiKhoan
				+ ", veXeList=" + veXeList + ", hoTen=" + hoTen + ", email=" + email + ", cmnd=" + cmnd + ", gioiTinh="
				+ gioiTinh + ", ngaySinh=" + ngaySinh + ", ngayBDLamViec=" + ngayBDLamViec + ", daNghiViec="
				+ daNghiViec + "]";
	}
	
}
