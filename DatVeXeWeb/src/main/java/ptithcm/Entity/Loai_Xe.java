package ptithcm.Entity;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "Loai_Xe")
public class Loai_Xe {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_loai")
	private int idLoaiXe;
	
	@Column(name = "ten_loai")
	private String tenLoai;
	
	@Column(name = "so_cho")
	private int soCho;
	
	@Column(name = "tien_ve_moi_cho")
	private int tienVeMoiCho;
	
	public Loai_Xe() {
		
	}

	public Loai_Xe(String tenLoai, int soCho, int tienVeMoiCho) {
		this.tenLoai = tenLoai;
		this.soCho = soCho;
		this.tienVeMoiCho = tienVeMoiCho;
	}

	public int getIdLoaiXe() {
		return idLoaiXe;
	}

	public void setIdLoaiXe(int idLoaiXe) {
		this.idLoaiXe = idLoaiXe;
	}

	public String getTenLoai() {
		return tenLoai;
	}

	public void setTenLoai(String tenLoai) {
		this.tenLoai = tenLoai;
	}

	public int getSoCho() {
		return soCho;
	}

	public void setSoCho(int soCho) {
		this.soCho = soCho;
	}

	public int getTienVeMoiCho() {
		return tienVeMoiCho;
	}

	public void setTienVeMoiCho(int tienVeMoiCho) {
		this.tienVeMoiCho = tienVeMoiCho;
	}

	@Override
	public String toString() {
		return "Loai_Xe [idLoaiXe=" + idLoaiXe + ", tenLoai=" + tenLoai + ", soCho=" + soCho + ", tienVeMoiCho="
				+ tienVeMoiCho + "]";
	}
	
	
	
}
