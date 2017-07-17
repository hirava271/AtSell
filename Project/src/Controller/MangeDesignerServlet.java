package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.manageDesignerDAO;
import DAO.manageUserDAO;

/**
 * Servlet implementation class MangeDesignerServlet
 */
@WebServlet("/MangeDesignerServlet")
public class MangeDesignerServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MangeDesignerServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flg=request.getParameter("flag");
		if(flg.equals("search"))
		{
			search_designer(request,response);
		}
	}

	private void search_designer(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		manageDesignerDAO designerDao = new manageDesignerDAO();
		List l = designerDao.search_designer();
		HttpSession hs=request.getSession();
		hs.setAttribute("designer_data", l);
		response.sendRedirect("admin/search_designer.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
