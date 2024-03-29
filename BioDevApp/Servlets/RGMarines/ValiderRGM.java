package RGMarines;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@WebServlet("/ValiderRGM")
public class ValiderRGM extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    
    public ValiderRGM() {
        super();
        // TODO Auto-generated constructor stub
    }

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		HttpSession session = request.getSession();
		RessourceMarine rmp = (RessourceMarine) session.getAttribute("rmp");
		rmp.setValidee(true);
		RessourceMarineDaoImpl rmdi = new RessourceMarineDaoImpl(); 
		rmdi.validerRGMP(rmp);
		this.getServletContext().getRequestDispatcher("/WEB-INF/JSP/RGMarines/homeSpecialiste.jsp").forward(request, response);


		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
