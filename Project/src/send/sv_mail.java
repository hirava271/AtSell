package send;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.mail.Message;
import javax.mail.internet.InternetAddress;
import javax.mail.internet.MimeMessage;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;


import VO.UregistrationVO;
import VO.loginVO;
import VO.registrationVO;

import DAO.UcomplaintDAO;
import DAO.registrationDAO;

/**
 * Servlet implementation class sv_mail
 */
@WebServlet("/sv_mail")
public class sv_mail extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public sv_mail() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		doPost(request, response);

	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("inside servlet");
        String flag1=request.getParameter("flag");


        if(flag1.equals("forget"))
   		{
        	search(request,response);	
   		}
        if(flag1.equals("reply"))
   		{
        	reply(request,response);	
   		}
	

		
		
	}

	private void reply(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		Iterator mail1;
		String reply=request.getParameter("reply");
		int user_id=Integer.parseInt(request.getParameter("buyer_user_id"));
		int comp_id=Integer.parseInt(request.getParameter("comp_id"));
		
		UcomplaintDAO daoobj = new UcomplaintDAO();
		List lemail = daoobj.search_user_email(user_id);
		
		HttpSession s1=request.getSession();
		s1.setAttribute("search_email",lemail);
		
		loginVO loginVO = new loginVO();
		
		mail1=lemail.iterator();
		loginVO=(loginVO) mail1.next();
		System.out.println(loginVO.getEmail_id());
		System.out.println(loginVO.getPassword());
		
		sendMail(loginVO,reply,comp_id);
	     response.sendRedirect("admin/manage_complaint.jsp");
	}

	private void sendMail(loginVO loginVO, String reply, int comp_id) {
		
		java.util.Properties properties = new java.util.Properties();
        properties.put("mail.smtp.auth", "true");
         properties.put("mail.smtp.starttls.enable", "true");
         javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);

        
        
 
         try {
            MimeMessage message = new MimeMessage(mailSession);
   
           
            message.setContent(reply,"text/html" );
            message.setSubject("Reply");
            
            InternetAddress sender = new InternetAddress("hir271@gmail.com", "Administrator");
             InternetAddress receiver = new InternetAddress(loginVO.getEmail_id());
            message.setFrom(sender);
            message.setRecipient(Message.RecipientType.TO, receiver);
             message.saveChanges();
            
            javax.mail.Transport transport = mailSession.getTransport("smtp");
            transport.connect("smtp.gmail.com", 587, "hir271@gmail.com", "9979172707");
             transport.sendMessage(message, message.getAllRecipients());
            transport.close();
                      
            UcomplaintDAO cdao=new UcomplaintDAO();
            cdao.change_status(comp_id);
            
        } catch (Exception e) {
            System.out.println("err = " + e);
         }
		
	}

	private void search(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		Iterator mail1;
		String mail=request.getParameter("email");

		List l1=new ArrayList();
		loginVO loginVO = new loginVO();
		loginVO.setEmail_id(mail);
		
		registrationDAO regDao = new registrationDAO();
		l1=regDao.search_email(loginVO);
		
		
		HttpSession s1=request.getSession();
		s1.setAttribute("search",l1);
		
		mail1=l1.iterator();
		loginVO=(loginVO) mail1.next();
		System.out.println(loginVO.getEmail_id());
		System.out.println(loginVO.getPassword());
		/*sendmail.sendMail("hir271@gmail.com", "9979172707", loginVO.getEmail_id()
				, "sagar.parikh44@gmail.com", loginVO.getPassword(), "test email", new String[]{""}, "");*/
		sendMail(loginVO);
	     response.sendRedirect("login.jsp");
	}

	protected void sendMail(loginVO loginVO){
		
		java.util.Properties properties = new java.util.Properties();
        properties.put("mail.smtp.auth", "true");
         properties.put("mail.smtp.starttls.enable", "true");
         javax.mail.Session mailSession = javax.mail.Session.getInstance(properties);

        
        
 
         try {
            MimeMessage message = new MimeMessage(mailSession);
   
           
            message.setContent("<h1>password:</h1>" +loginVO.getPassword(),"text/html" );
            message.setSubject("Abc");
            
            InternetAddress sender = new InternetAddress("hir271@gmail.com", "Administrator");
             InternetAddress receiver = new InternetAddress(loginVO.getEmail_id());
            message.setFrom(sender);
            message.setRecipient(Message.RecipientType.TO, receiver);
             message.saveChanges();
            
            javax.mail.Transport transport = mailSession.getTransport("smtp");
            transport.connect("smtp.gmail.com", 587, "hir271@gmail.com", "9979172707");
             transport.sendMessage(message, message.getAllRecipients());
            transport.close();
                      
        } catch (Exception e) {
            System.out.println("err = " + e);
         }
		
	}	
}	
	
