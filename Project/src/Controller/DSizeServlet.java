package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DneckDAO;
import DAO.DsizeDAO;
import VO.DneckVO;
import VO.DsizeVO;

/**
 * Servlet implementation class DSizeServlet
 */
@WebServlet("/DSizeServlet")
public class DSizeServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DSizeServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String flg= request.getParameter("flag");
		
		if(flg.equals("insert"))
		{
			insert(request,response);
		}
		
	}
	
	public void insert(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException
	{
		String size = request.getParameter("size");
		String size_description = request.getParameter("size_description");
		
		DsizeVO voobj = new DsizeVO();
		voobj.setSize(size);
		voobj.setSize_description(size_description);
		
		DsizeDAO daoobj = new DsizeDAO();
		daoobj.insert_size(voobj);
		
		response.sendRedirect("designer/size.jsp");
	}
	
}
