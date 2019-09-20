package RGMarines;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DetailsCTAP
 */
@WebServlet("/DetailsCTAP")
public class DetailsCTAP extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DetailsCTAP() {
        super();
        // TODO Auto-generated constructor stub
    }


	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		List<CTA> listCTAP = new ArrayList<CTA>();
		CTA ctap = new CTA();
		String num = request.getParameter("numCTAP");
		int numCTAP = Integer.valueOf(num)-1;
		listCTAP = (List<CTA>) request.getSession().getAttribute("listCTAP");
		ctap = listCTAP.get(numCTAP);
		request.getSession().setAttribute("ctap", ctap);
		this.getServletContext().getRequestDispatcher("/WEB-INF/JSP/RGMarines/detailsCTAP.jsp").forward(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		doGet(request, response);
	}

}
