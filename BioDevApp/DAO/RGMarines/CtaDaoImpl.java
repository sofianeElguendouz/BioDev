package RGMarines;

import java.util.ArrayList;
import java.util.List;

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
	
	public List<CTA> listerCTAProposes(){
		List<CTA> cta = new ArrayList<CTA>();
		Query requete = em.createNamedQuery("CTAProposes.find", CTA.class);
		cta = (List<CTA>)requete.getResultList();
		if (cta.isEmpty()) return null;
		else return cta;
		
	}
	
	public void validerCTAP(CTA cta) {
		System.out.println("je v valider la cta");
		em.getTransaction().begin();
		em.merge(cta);
		em.getTransaction().commit();

	}
	
}
