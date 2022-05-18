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
import javax.persistence.OneToMany;
import javax.persistence.OneToOne;
import javax.persistence.Table;

import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

@Entity
@Table(name = "Xe")
public class Xe {
	
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	@Column(name = "id_xe")
	private int idXe;
	
	@Column(name = "bien_so_xe")
	private String bienSoXe;
	
	@OneToOne
	@JoinColumn(name = "ma_loai_xe")
	private Loai_Xe maLoaiXe;
	
	
	@ManyToMany(fetch = FetchType.EAGER)
	@Fetch(value = FetchMode.SUBSELECT)
	@JoinTable(
			name = "CT_Xe_Ghe",
			joinColumns = @JoinColumn(name = "id_xe"),
			inverseJoinColumns =  @JoinColumn(name = "ma_ghe")
			)
	private List<Ghe> gheList;
	
	@OneToMany(mappedBy = "maXe" )
	private List<Chuyen_Xe> chuyenXeList;
	
	public Xe() {
		
	}

	public int getIdXe() {
		return idXe;
	}

	public void setIdXe(int idXe) {
		this.idXe = idXe;
	}

	public String getBienSoXe() {
		return bienSoXe;
	}

	public void setBienSoXe(String bienSoXe) {
		this.bienSoXe = bienSoXe;
	}

	public Loai_Xe getMaLoaiXe() {
		return maLoaiXe;
	}

	public void setMaLoaiXe(Loai_Xe maLoaiXe) {
		this.maLoaiXe = maLoaiXe;
	}

	

	public List<Chuyen_Xe> getChuyenXeList() {
		return chuyenXeList;
	}

	public void setChuyenXeList(List<Chuyen_Xe> chuyenXeList) {
		this.chuyenXeList = chuyenXeList;
	}


	@Override
	public String toString() {
		return "Xe [idXe=" + idXe + ", bienSoXe=" + bienSoXe + ", maLoaiXe=" + maLoaiXe + "]";
	}

	public List<Ghe> getGheList() {
		return gheList;
	}

	public void setGheList(List<Ghe> gheList) {
		this.gheList = gheList;
	}

	


	
	
}
