package RGMarines;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import Connexion.ConnexionSuperUser;
import Entities.Utilisateur;
import Users.UtilisateurDAOImpSuperUser;


@WebServlet("/StartRGMarines")
public class StartRGMarines extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    public StartRGMarines() {
        super();
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		HttpSession session = request.getSession();
		List<Classification> listClassifications = new ArrayList<Classification>();
		ClassificationDaoImpl classif =new ClassificationDaoImpl();
		
		listClassifications = classif.listerClassifications(1);
		System.out.println("Chemin d'image est : "+listClassifications.get(0).getImage());
		
		this.getServletContext().getRequestDispatcher("/WEB-INF/JSP/RGMarines/homeMarine.jsp").forward(request, response);
		
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		doGet(request, response);
	}

}
