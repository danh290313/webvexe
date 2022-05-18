package ptithcm.Entity;


import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "Khach_Hang")
public class User {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_khach_hang")
	private int userId;

	@Column(name = "ho_ten")
	private String hoTen;
	
	
	@Column(name = "so_dien_thoai")
	private String phoneNumber;
	
	
	@Column(name = "email")
	private String email;
	
	@Column(name = "cmnd")
	private String cmnd;
	
	@Column(name = "dia_chi")
	private String diaChi;
	
	
	@Column(name = "gioi_tinh")
	private String gioiTinh;
	
	@Column(name = "ngay_sinh")
	private String ngaySinh;
	
	@Column(name = "nghe_nghiep")
	private String ngheNghiep;

	@OneToOne(fetch = FetchType.LAZY)
	@JoinColumn(name = "id_tai_khoan")
	private Account idTaiKhoan;
	
	@OneToMany(fetch = FetchType.LAZY ,mappedBy = "idKhachHang")
	private List<Ve_Xe> veXeList;
	
	public void addAccount(Account account) {
		idTaiKhoan = account;
	}
	
	public User() {
		
	}
	public User(String hoTen, String phoneNumber, String email, String cmnd, String diaChi, String gioiTinh,
			String ngaySinh, String ngheNghiep) {
		this.hoTen = hoTen;
		this.phoneNumber = phoneNumber;
		this.email = email;
		this.cmnd = cmnd;
		this.diaChi = diaChi;
		this.gioiTinh = gioiTinh;
		this.ngaySinh = ngaySinh;
		this.ngheNghiep = ngheNghiep;
	}

	
	
	public int getUserId() {
		return userId;
	}
	public void setUserId(int userId) {
		this.userId = userId;
	}
	public String getHoTen() {
		return hoTen;
	}
	public void setHoTen(String hoTen) {
		this.hoTen = hoTen;
	}
	public String getPhoneNumber() {
		return phoneNumber;
	}
	public void setPhoneNumber(String phoneNumber) {
		this.phoneNumber = phoneNumber;
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
	public String getDiaChi() {
		return diaChi;
	}
	public void setDiaChi(String diaChi) {
		this.diaChi = diaChi;
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
	public String getNgheNghiep() {
		return ngheNghiep;
	}
	public void setNgheNghiep(String ngheNghiep) {
		this.ngheNghiep = ngheNghiep;
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

	@Override
	public String toString() {
		return "User [userId=" + userId + ", hoTen=" + hoTen + ", phoneNumber=" + phoneNumber + ", email=" + email
				+ ", cmnd=" + cmnd + ", diaChi=" + diaChi + ", gioiTinh=" + gioiTinh + ", ngaySinh=" + ngaySinh
				+ ", ngheNghiep=" + ngheNghiep + ", veXeList=" + veXeList + "]";
	}
	
	
	
	
	


	

}
