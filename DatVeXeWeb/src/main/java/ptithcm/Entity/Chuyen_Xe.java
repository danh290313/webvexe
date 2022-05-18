package ptithcm.Entity;

import java.util.List;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToMany;
import javax.persistence.Table;

@Entity
@Table(name = "Chuyen_Xe")
public class Chuyen_Xe {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "ma_chuyen")
	private int maChuyen;


	@ManyToOne
	@JoinColumn(name = "ma_xe")
	private Xe maXe;

	@ManyToOne
	@JoinColumn(name = "ma_tuyen")
	private Tuyen_Xe maTuyen;

	
	@OneToMany(fetch = FetchType.EAGER, mappedBy = "idChuyenXe")
	private List<Ve_Xe> veXeList;

	@Column(name = "gio_chay")
	private String gioChay;
	
	@Column(name = "da_hoan_thanh")
	private int daHoanThanh;

	public Chuyen_Xe() {

	}
	
	

	public Chuyen_Xe(Xe maXe, Tuyen_Xe maTuyen, String gioChay) {
		this.maXe = maXe;
		this.maTuyen = maTuyen;
		this.gioChay = gioChay;
		this.daHoanThanh = 0;
	}



	public int getMaChuyen() {
		return maChuyen;
	}

	public void setMaChuyen(int maChuyen) {
		this.maChuyen = maChuyen;
	}

	public Xe getMaXe() {
		return maXe;
	}

	public void setMaXe(Xe maXe) {
		this.maXe = maXe;
	}

	public Tuyen_Xe getMaTuyen() {
		return maTuyen;
	}

	public void setMaTuyen(Tuyen_Xe maTuyen) {
		this.maTuyen = maTuyen;
	}

	public List<Ve_Xe> getVeXeList() {
		return veXeList;
	}

	public void setVeXeList(List<Ve_Xe> veXeList) {
		this.veXeList = veXeList;
	}

	public String getGioChay() {
		return gioChay;
	}

	public void setGioChay(String gioChay) {
		this.gioChay = gioChay;
	}

	@Override
	public String toString() {
		return "Chuyen_Xe [maChuyen=" + maChuyen + ", maXe=" + maXe + ", gioChay=" + gioChay + "]";
	}



	public int getDaHoanThanh() {
		return daHoanThanh;
	}



	public void setDaHoanThanh(boolean daHoanThanh) {
		if (daHoanThanh)
			this.daHoanThanh = 1;
		else
			this.daHoanThanh = 0;
	}
}
