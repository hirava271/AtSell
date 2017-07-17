package Controller;

import java.io.IOException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.registrationDAO;
import VO.loginVO;
import VO.registrationVO;

/**
 * Servlet implementation class RegistrationServlet
 */
@WebServlet("/RegistrationServlet")
public class RegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public RegistrationServlet() {
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
		
		if(flag.equals("insert"))
		{
			insert_login_detail(request,response);
		}
	}

	private void insert_login_detail(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String uname=request.getParameter("uname");
		String email_id=request.getParameter("email");
		String pwd=request.getParameter("pwd");
		String dislpay_name=request.getParameter("dname");
		Long contact=Long.parseLong(request.getParameter("contact"));
		
		loginVO loginVO=new loginVO();
		loginVO.setEmail_id(email_id);
		loginVO.setPassword(pwd);
		loginVO.setUser_type("Designer");
		
		registrationVO regVo=new registrationVO();
		regVo.setUser_name(uname);
		regVo.setDisplay_name(dislpay_name);
		regVo.setContact_number(contact);
		regVo.setLoginVoObj(loginVO);
		
		registrationDAO regDao=new registrationDAO();
		regDao.insert_login_detail(loginVO);
		regDao.insert_registration_detail(regVo);
		
		response.sendRedirect("designer/login.jsp");
	}

}
