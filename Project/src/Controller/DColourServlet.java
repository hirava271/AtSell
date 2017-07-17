package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DneckDAO;
import VO.DcolourVO;
import VO.DneckVO;

/**
 * Servlet implementation class DColourServlet
 */
@WebServlet("/DColourServlet")
public class DColourServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DColourServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String flg= request.getParameter("flag");
		
		if(flg.equals("load"))
		{
			insert(request,response);
		}
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
		String colour = request.getParameter("colour");
		String colour_description = request.getParameter("colour_description");
		
		DcolourVO voobj = new DcolourVO();
		voobj.setColour(colour);
		voobj.setColour_description(colour_description);
		
		DneckDAO daoobj = new DneckDAO();
		daoobj.insert_neck(voobj);
		
		response.sendRedirect("designer/color.jsp");
	}
	
}
