package Controller;

import java.io.IOException;
import java.net.URI;
import java.util.Iterator;
import java.util.List;

import javax.servlet.Filter;
import javax.servlet.FilterChain;
import javax.servlet.FilterConfig;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.ServletRequest;
import javax.servlet.ServletResponse;
import javax.servlet.annotation.WebFilter;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import DAO.registrationDAO;
import VO.loginVO;
import VO.registrationVO;

 

/**
 * Servlet Filter implementation class loginController
 */
@WebFilter("/*")
public class LoginFilter implements Filter {

    /**
     * Default constructor. 
     */
    public LoginFilter() {
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see Filter#destroy()
	 */
	public void destroy() {
		// TODO Auto-generated method stub
	}

	/**
	 * @see Filter#doFilter(ServletRequest, ServletResponse, FilterChain)
	 */
	public void doFilter(ServletRequest request, ServletResponse response, FilterChain chain) throws IOException, ServletException {
		// TODO Auto-generated method stub
		// place your code here

		// pass the request along the filter chain
		
		HttpSession session =((HttpServletRequest) request).getSession();
		RequestDispatcher requestDispatcher;
		String logout = request.getParameter("logout");
		//String reg = request.getParameter("reg");
		//System.out.println("registration flag===" + reg);
		//	int i = (Integer)session.getAttribute("userID");
		//System.out.println("id = = = = =" + i);
		String uri = ((HttpServletRequest)request).getRequestURI();
		
		
		System.out.println("link =  = = = = " + uri);
		
		if(uri.contains("login") ||uri.contains("checkout")|| uri.contains("sv_mail")|| uri.contains("forget_pwd")||uri.contains("Uregistration")||uri.contains("URegistrationServlet") ||uri.contains("/css") || uri.contains("/js")&&!uri.contains("/jsp")|| uri.contains("/img")|| uri.contains("/fonts")||uri.contains("Controller"))
		{
			System.out.println("inside reg");
			
			//requestDispatcher = request.getRequestDispatcher("/user/register.jsp");  
			//requestDispatcher.forward(request,response);  
			
			chain.doFilter(request,response);
			
		}
		
		else if (logout!= null) {
			//session.removeAttribute("userID");
			System.out.println("logout in else if");
		
			session.invalidate();
			System.out.println("after session invalidates");
			RequestDispatcher rd;
			rd = request.getRequestDispatcher("/login.jsp");
			rd.forward(request, response);
			
		}
		
		else if(uri.contains("abc") )
		{
			String userName = request.getParameter("uname");
			String password = request.getParameter("pwd");
			System.out.println(userName+""+password);
			
			loginVO logVo=new loginVO();
			logVo.setEmail_id(userName);
			logVo.setPassword(password);
			
			
			registrationDAO regDao = new registrationDAO();
			List list =  regDao.authentication(logVo);
			
			
			System.out.println("List Size:::::::::"+list.size());
			if(list != null && list.size()>=1){
				
				Iterator itr = list.iterator();
				
				//while(itr.hasNext()){
				loginVO user=(loginVO) itr.next();
			
				registrationVO regVo=new registrationVO();
				logVo.setLogin_id(user.getLogin_id());
				regVo.setLoginVoObj(logVo);
				
				List regdetail =  regDao.get_registration_detail(regVo);
				if(regdetail.size()>0)
				{
				registrationVO voobj=(registrationVO)regdetail.get(0);
				String name=voobj.getUser_name();
				session.setAttribute("user_name", name);
				System.out.println("name........"+name);
				}
				
				int y = (Integer)user.getLogin_id();
				session.setAttribute("userID",y);
				
				System.out.println(user.getUser_type());
			//	System.out.println(session.getAttribute("userId"));
				String type = user.getUser_type();
				session.setAttribute("usertype",type);
				System.out.println(y);
				if(type.equals("Buyer"))
				{
				requestDispatcher = request.getRequestDispatcher("/UMenuServlet");  
				requestDispatcher.forward(request,response);  
				}
				else if(type.equals("Admin"))
				{
			
				requestDispatcher = request.getRequestDispatcher("/admin/code.jsp");  
				requestDispatcher.forward(request,response);  
				}
				else if(type.equals("Designer"))
				{
			
				requestDispatcher = request.getRequestDispatcher("/designer/Dcode.jsp");  
				requestDispatcher.forward(request,response);  
				}
			
				}
			
			else{
					requestDispatcher = request.getRequestDispatcher("/login.jsp");  
					requestDispatcher.forward(request,response);  		
				}	
		}
		
		else if(session.getAttribute("userID") != null)
		{
			String h = (String)session.getAttribute("usertype");
			System.out.println("type = = = " + h);
			
			if(h!=null && h.equals("Admin")){
				
			System.out.println("chain");
			chain.doFilter(request,response);
			}
			
			else if(h!=null && h.equals("Designer"))
			{
				
				System.out.println("chain");
				chain.doFilter(request, response);
			
			}
			else if(h!=null && h.equals("Buyer"))
			{
				System.out.println("chain");
				chain.doFilter(request, response);
			
			}
			else{
				RequestDispatcher rd = request.getRequestDispatcher("/error.jsp");  
				rd.forward(request,response);  
	
			}
		}
		else{
			
		
			
			RequestDispatcher rd = request.getRequestDispatcher("/login.jsp");  
			rd.forward(request,response);  
			
			}
		
		
		
		
		
		
	}

	/**
	 * @see Filter#init(FilterConfig)
	 */
	public void init(FilterConfig fConfig) throws ServletException {
		// TODO Auto-generated method stub
	}

}
