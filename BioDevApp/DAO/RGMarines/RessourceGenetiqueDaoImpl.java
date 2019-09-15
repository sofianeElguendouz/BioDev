package RGMarines;

import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.Query;

public class RessourceGenetiqueDaoImpl {

	public EntityManager em;	
	
	public RessourceGenetiqueDaoImpl() {
		super();
		DaoFactory.connexionBDD("RGAdmin", "root00");
		this.em = DaoFactory.getEM();
	}
	
	public RessourceGenetique RecupererRG(int id_rm){
		RessourceGenetique rg = new RessourceGenetique();
		Query requete = em.createNamedQuery("RessourceGenetique.find", RessourceGenetique.class);
		requete.setParameter ("id_RessourceMarine",id_rm);
		rg = (RessourceGenetique)requete.getSingleResult();
		return rg;
		
	}
	
}
