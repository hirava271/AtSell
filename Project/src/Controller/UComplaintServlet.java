package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.UaddToCartDAO;
import DAO.UcomplaintDAO;
import VO.UcomplaintVO;
import VO.UregistrationVO;
import VO.loginVO;

/**
 * Servlet implementation class UComplaintServlet
 */
@WebServlet("/UComplaintServlet")
public class UComplaintServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UComplaintServlet() {
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
		String flg=request.getParameter("flag");
		
		if(flg.equals("insert"))
		{
			insert_complaint(request,response);
		}
	
	}

	private void insert_complaint(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String complaint=request.getParameter("complaint");
		
		HttpSession session=request.getSession();
		
		int user_id=Integer.parseInt(session.getAttribute("userID").toString());
		System.out.println("User id=========="+user_id);
		
		loginVO logVo=new loginVO();
		logVo.setLogin_id(user_id);
		
		UaddToCartDAO cartDao=new UaddToCartDAO();
		List luser=cartDao.search_user_id(logVo);
		
		UcomplaintVO voobj = new UcomplaintVO();
		
		if(luser!=null && luser.size()>0)
		{
		UregistrationVO regVo=(UregistrationVO)luser.get(0);
		int buyer_user_id=regVo.getBuyer_user_id();
		System.out.println("Buyer user ID====="+buyer_user_id);
		voobj.setBuyer_user_id(regVo);
		}
		voobj.setComplaint(complaint);
		voobj.setStatus("Pending");
		
		UcomplaintDAO dao = new UcomplaintDAO();
		dao.insert_complaint(voobj);
		
		response.sendRedirect("user/Ucomplaint.jsp");
		
	}

}
