package RGMarines;

import java.util.ArrayList;
import java.util.List;
import javax.persistence.EntityManager;
import javax.persistence.Query;

public class RessourceMarineDaoImpl {

	public EntityManager em;	
	
	public RessourceMarineDaoImpl() {
		super();
		DaoFactory.connexionBDD("RGAdmin", "root00");
		this.em = DaoFactory.getEM();
	}
	
	public List<RessourceMarine> listerRessourcesMarines(int id_CM){
		List<RessourceMarine> listRM = new ArrayList<RessourceMarine>();
		Query requete = em.createNamedQuery("RessourceMarine.find", RessourceMarine.class);
		requete.setParameter ("id_ClassifMarine",id_CM);
		listRM = requete.getResultList();
		if (listRM.isEmpty())return null; 
		else  return listRM;
		
	}
	
}
