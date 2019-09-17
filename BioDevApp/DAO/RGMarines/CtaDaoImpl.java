package RGMarines;

import javax.persistence.EntityManager;
import javax.persistence.Query;

public class CtaDaoImpl {

public EntityManager em;	
	
	public CtaDaoImpl() {
		super();
		DaoFactory.connexionBDD("RGAdmin", "root00");
		this.em = DaoFactory.getEM();
	}
	
	public CTA recupCTA(int id_CTA){
		CTA cta = new CTA();
		Query requete = em.createNamedQuery("CTA.find", CTA.class);
		requete.setParameter ("id_CTA",id_CTA);
		cta = (CTA)requete.getSingleResult();
		return cta;
		
	}
	
}
