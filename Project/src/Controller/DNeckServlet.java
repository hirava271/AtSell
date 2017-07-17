package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.DeleteDao;
import DAO.DneckDAO;
import DAO.SearchDao;
import VO.DneckVO;
import VO.categoryVO;

/**
 * Servlet implementation class DNeck
 */
@WebServlet("/DNeckServlet")
public class DNeckServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DNeckServlet() {
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
			load(request,response);
		}

		if(flg.equals("delete"))
		{
			delete(request,response);
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
		String neck_type = request.getParameter("neck_type");
		String neck_description = request.getParameter("neck_description");
		
		DneckVO voobj = new DneckVO();
		voobj.setNeck_type(neck_type);
		voobj.setNeck_description(neck_description);
		
		DneckDAO daoobj = new DneckDAO();
		daoobj.insert_neck(voobj);
		
		response.sendRedirect("designer/neck.jsp");
	}
	
	public void load(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		List list=null;
		System.out.println("Hello");
		DneckDAO daoobj = new DneckDAO();
		list=daoobj.search();
		HttpSession httpSession=request.getSession();
		httpSession.setAttribute("search_neck", list);
		response.sendRedirect("designer/search_neck.jsp");
	}
	
	public void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String id1= request.getParameter("id");	
		int id=Integer.parseInt(id1);
		System.out.println("Hello");
		System.out.println(id);
		
		DneckVO voobj = new DneckVO();
		voobj.setNeck_id(id);
		
		DneckDAO daoobj = new DneckDAO();
		daoobj.delete(voobj);
		
		load(request,response);
	}
}
