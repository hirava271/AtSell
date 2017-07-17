package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.DSleeveDAO;
import VO.DSleevesVO;
import VO.categoryVO;

/**
 * Servlet implementation class DSleeves
 */
@WebServlet("/DSleeveServlet")
public class DSleeveServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DSleeveServlet() {
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

		// TODO Auto-generated method stub
		String flg=request.getParameter("flag");
		if(flg.equals("insert"))
		{
			insert_sleeves(request,response);
		}
		
		if(flg.equals("save"))
		{
			//save_sleeves(request,response);
		}

	
	}
	public void insert_sleeves(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{

		
		String sleeve_type=request.getParameter("sleeve_type");
		String sleeve_description=request.getParameter("sleeve_description");
		
		System.out.println(sleeve_type);
		System.out.println(sleeve_description);
		
		DSleevesVO sleeveVo = new DSleevesVO();
		sleeveVo.setSleeves_type(sleeve_type);
		sleeveVo.setSleeves_description(sleeve_description);
		
		DSleeveDAO sleeveDao = new DSleeveDAO();
		sleeveDao.insert(sleeveVo);
		
	    response.sendRedirect("designer/sleeve.jsp");
		
	}

}
