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
 * Servlet implementation class DManageShippingServlet
 */
@WebServlet("/DManageShippingServlet")
public class DManageShippingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DManageShippingServlet() {
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
			manage_shipping(request,response);
		}
		
	}
	
	private void manage_shipping(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		manageDeliveryDAO daoObj=new manageDeliveryDAO();
		List l=daoObj.search_shipping();
		HttpSession hs=request.getSession();
		hs.setAttribute("manage_shipping", l);
		System.out.println("delivery table size======"+l.size());
		response.sendRedirect("designer/manage_shipping.jsp");
	}


	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String flg = request.getParameter("flag");
		
		if(flg.equals("change_status"))
		{
			change_status(request,response);
		}
	}

	private void change_status(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String delivered[] = request.getParameterValues("checkbox_order");
		manageDeliveryDAO daoObj=new manageDeliveryDAO();
		for(int i=0; i<delivered.length; i++)
		{
			int order_id = Integer.parseInt(delivered[i]);
			daoObj.change_status(order_id);
	
		}
		manage_shipping(request, response);
		
	}

}
