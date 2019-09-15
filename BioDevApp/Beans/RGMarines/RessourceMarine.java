package RGMarines;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;
import javax.persistence.NamedQuery;
import javax.persistence.Table;

@Entity(name ="RessourceMarine")
@Table(name="\"RG\".\"RessourceMarine\"")

@NamedQuery(name="RessourceMarine.find", query="SELECT u FROM RessourceMarine u WHERE  u.id_classification_marine = :id_ClassifMarine")

public class RessourceMarine implements Serializable{

	private static final long serialVersionUID = 1L;
	
	@Id
	@GeneratedValue
	private Integer id;
	
	@Column
	private int id_classification_marine;
	
	@Column(nullable = true)
	private Integer id_localisation_marine;
	
	@Column(nullable = true)
	private Integer id_ecosys_marine;
	
	@Column
	private Integer id_rg;
	
	@Column
	private String nom_latin;
	
	@Column
	private String image;
	
	/*------------------------------------------*/
	public RessourceMarine() {
		
	}
	/*------------------------------------------*/

	public int getId() {
		return id;
	}

	public int getId_classificationMarine() {
		return id_classification_marine;
	}

	public void setId_classificationMarine(int id_classificationMarine) {
		this.id_classification_marine = id_classificationMarine;
	}

	public int getId_localisation_marine() {
		return id_localisation_marine;
	}

	public void setId_localisation_marine(int id_localisation_marine) {
		this.id_localisation_marine = id_localisation_marine;
	}

	public int getId_ecosys_marine() {
		return id_ecosys_marine;
	}

	public void setId_ecosys_marine(int id_ecosys_marine) {
		this.id_ecosys_marine = id_ecosys_marine;
	}

	public int getId_rg() {
		return id_rg;
	}

	public void setId_rg(int id_rg) {
		this.id_rg = id_rg;
	}
	
	public String getNom_latin() {
		return nom_latin;
	}
	
	public void setNom_latin(String nom_latin) {
		this.nom_latin = nom_latin;
	}
	
	public String getImage() {
		return image;
	}
	
	public void setImage(String image) {
		this.image = image;
	}
	
}
