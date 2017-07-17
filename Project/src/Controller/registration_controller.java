package controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.login_DAO;
import DAO.registration_DAO;
import VO.login_VO;
import VO.registration_VO;


/**
 * Servlet implementation class registration_controller
 */
@WebServlet("/registration_controller")
public class registration_controller extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public registration_controller() {
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
		
		String flag=request.getParameter("flag");
		
		if(flag!=null && flag.equals("insert"))
		{
			insert(request,response);
		}
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		// TODO Auto-generated method stub
		
		String firstname =request.getParameter("fn");
		String Adrs		 =request.getParameter("adrs");
		String email	 =request.getParameter("email");
		String city		 =request.getParameter("city");
		String uname	 =request.getParameter("username");
		String pswd		 =request.getParameter("password");
		
		registration_VO rv = new registration_VO();
		registration_DAO rd= new registration_DAO();
		
		login_VO lv = new login_VO();
		login_DAO ld=new login_DAO();
		
		lv.setUser_name(uname);
		lv.setPswd(pswd);
		ld.insert(lv);
		
		rv.setFname(firstname);
		rv.setAdrs(Adrs);
		rv.setEmail(email);
		rv.setCity(city);
		
		
		
		rv.setL(lv);
		
		rd.insert(rv);
		
	}

}
