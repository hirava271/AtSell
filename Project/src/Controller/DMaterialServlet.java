package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DmaterialDAO;
import DAO.DneckDAO;
import VO.DmaterialVO;
import VO.DneckVO;

/**
 * Servlet implementation class DMaterialServlet
 */
@WebServlet("/DMaterialServlet")
public class DMaterialServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DMaterialServlet() {
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
		String material = request.getParameter("material");
		String material_description = request.getParameter("material_description");
		
		DmaterialVO voobj = new DmaterialVO();
		voobj.setMaterial(material);
		voobj.setMaterial_description(material_description);
		
		DmaterialDAO daoobj = new DmaterialDAO();
		daoobj.insert_material(voobj);
		
		response.sendRedirect("designer/material.jsp");
	}
	
}
