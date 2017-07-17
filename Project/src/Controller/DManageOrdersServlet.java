package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.manageDeliveryDAO;

/**
 * Servlet implementation class DManageOrdersServlet
 */
@WebServlet("/DManageOrdersServlet")
public class DManageOrdersServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DManageOrdersServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Inside get.......");
		String flg=request.getParameter("flag");
		if(flg.equals("search"))
		{
			search_deliveries(request,response);
		}
	}
	
	private void search_deliveries(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		manageDeliveryDAO daoObj=new manageDeliveryDAO();
		List l=daoObj.search_delivery();
		HttpSession hs=request.getSession();
		hs.setAttribute("manage_order", l);
		System.out.println("delivery table size======"+l.size());
		response.sendRedirect("designer/manage_orders.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

}
