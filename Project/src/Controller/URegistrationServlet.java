package Controller;

import java.io.IOException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import DAO.UregistrationDAO;
import DAO.registrationDAO;
import VO.UregistrationVO;
import VO.loginVO;

/**
 * Servlet implementation class URegistrationServlet
 */
@WebServlet("/URegistrationServlet")
public class URegistrationServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public URegistrationServlet() {
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
		System.out.println("Inside dopost");
		String flg=request.getParameter("flag");
		
		if(flg.equals("insert"))
		{
			try {
				insert(request,response);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws ParseException, IOException {
		// TODO Auto-generated method stub
		System.out.println("Inside servlet uregis");
		String name=request.getParameter("fname");
		String lname=request.getParameter("lname");
		String pwd=request.getParameter("upasswd");
		String email_id=request.getParameter("user_email");
		String d =request.getParameter("dob");
		String gender =request.getParameter("id_gender");
		
		SimpleDateFormat ft = 
			      new SimpleDateFormat ("yyyy-mm-dd");
		Date dob=ft.parse(d);
	
		
		loginVO logVo = new loginVO();
		logVo.setEmail_id(email_id);
		logVo.setPassword(pwd);
		logVo.setUser_type("Buyer");
		
		UregistrationVO regVo=new UregistrationVO();
		regVo.setFirst_name(name);
		regVo.setLast_name(lname);
		regVo.setGender(gender);
		regVo.setDate_of_birth(dob);
		
		registrationDAO regObj=new registrationDAO();
		regObj.insert_login_detail(logVo);
		
		UregistrationDAO regDao=new UregistrationDAO();
		regVo.setLoginVoObj(logVo);
		regDao.insert(regVo);
		
		System.out.println("Date is........"+d);
		
		response.sendRedirect("user/UMenuServlet");
	}

}
