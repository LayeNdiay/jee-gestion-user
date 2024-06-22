package servlets;

import java.io.IOException;

import dao.UtilisateurDao;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class ListUser
 */
@WebServlet({ "", "/list" })
public class ListUser extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private static final String VUE_LIST_UTILISATEUR = "/WEB-INF/listeUtilisateur.jsp";

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	@Override
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setAttribute("utilisateurs", UtilisateurDao.lister());
		getServletContext().getRequestDispatcher(VUE_LIST_UTILISATEUR).forward(request, response);
		;
	}

}
