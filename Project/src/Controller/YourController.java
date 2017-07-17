package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Date;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.AttachmentDAO;
import DAO.AttachmentMappingDAO;
import DAO.packageDAO;

import VO.AttachmentMappingVO;
import VO.AttachmentVO;
import VO.packageFileUploadVO;
import VO.packageVO;



/**
 * Servlet implementation class AttachmentController
 */
@WebServlet("/YourController")
public class YourController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public YourController() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		
		String mode = request.getParameter("mode");
		
		
		if(mode!=null && mode.equals("3")){
			edit(request, response);
				
				}else if(mode!=null && mode.equals("4")){
					    delete(request, response);	
							
						}else if(mode!=null && mode.equals("5")){
								show(request, response);	
							     
							}else{
									//default 
									response.sendRedirect(request.getContextPath()+"/index.jsp");
									}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	
	protected void edit(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int attachmentID = Integer.parseInt(request.getParameter("id"));
		AttachmentVO attachVO = new AttachmentVO();
		attachVO.setAttachmentID(attachmentID);
		
		AttachmentDAO attachDAO = new AttachmentDAO();
		attachDAO.delete(attachVO);
		
		
		show(request, response);
	
	}
	
	protected void delete(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		int attachmentMappingID = Integer.parseInt(request.getParameter("id"));
		int packageId = Integer.parseInt(request.getParameter("pkg_id"));
		System.out.println(attachmentMappingID);
		System.out.println("+++++++++++++="+packageId);
		
		//AttachmentMappingVO attachMPG_VO = new AttachmentMappingVO();
		//attachMPG_VO.setAttachmentMappingID(attachmentMappingID);
		packageFileUploadVO pkgFileUploadVO = new packageFileUploadVO();
		pkgFileUploadVO.setAttachment_id(attachmentMappingID);
		
		AttachmentMappingDAO attachMPG_DAO = new AttachmentMappingDAO();
		attachMPG_DAO.delete(pkgFileUploadVO);
		
		edit_package(request, response,packageId);
	
	}
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
			String mode = request.getParameter("mode");
		
		
		if(mode!=null && mode.equals("6")){
			deleteSelected(request, response);
			
			}else if(mode!=null && mode.equals("1")){
					insert(request, response);
					
					}
		
		
		
		
	}
	
protected void deleteSelected(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
	String[] attachmentMappingID = request.getParameterValues("list") ;
	
	AttachmentMappingVO attachMPG_VO = new AttachmentMappingVO();
	AttachmentMappingDAO attachMPG_DAO = new AttachmentMappingDAO();
	
	
	for (int i = 0; i < attachmentMappingID.length; i++) {
		
		attachMPG_VO.setAttachmentMappingID(Integer.parseInt(attachmentMappingID[i]));
		
	//	attachMPG_DAO.delete(attachMPG_VO);
		
	}
	
	
	show(request, response);
	
	
		
	}

public void edit_package(HttpServletRequest request, HttpServletResponse response, int id) throws ServletException, IOException
{
	//String selected_id1= request.getParameter("id");	
	//int selected_id=Integer.parseInt(selected_id1);
	System.out.println("Hello");
	System.out.println(id);
	packageVO packageobj = new packageVO();
	packageFileUploadVO packageFileobj=new packageFileUploadVO();
	packageobj.setPackage_id(id);
	packageFileobj.setPackageObj(packageobj);
	List l = new ArrayList();
	List l1=new ArrayList();
	packageDAO daoobj = new packageDAO();
	l = daoobj.edit_package(packageobj);
	l1=daoobj.edit_packageAttachment(packageFileobj);
	for(int i=0;i<l1.size();i++)
	{
		System.out.println(l1.get(i));
	}
	HttpSession httpSession=request.getSession();
	httpSession.setAttribute("edit_package_session", l);
	HttpSession httpSession1=request.getSession();
	httpSession1.setAttribute("edit_packageattachment_session", l1);
	
	response.sendRedirect("admin/edit_package.jsp");
	
}

	
	protected void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {

		String attachmentType = request.getParameter("attachmentType");
		
		AttachmentVO attachmentVO = new AttachmentVO();
		attachmentVO.setAttachmentType(attachmentType);
		
		AttachmentDAO attachmentDAO = new AttachmentDAO();
		attachmentDAO.insert(attachmentVO);
		
		
		AttachmentMappingVO attachMPGVO = new AttachmentMappingVO();
		
		attachMPGVO.setAttachmentID(attachmentVO);
		
		

		AttachmentMappingDAO attachMPG_DAO= new AttachmentMappingDAO();
		
		
		//getting file from Session
		
		HttpSession session =request.getSession();
		
		List myList=(List)session.getAttribute("fileList");
		
		 Iterator itr =  myList.iterator();
         
         System.out.println("Reading for session");
         int i =0;
         while (itr.hasNext()) {
     
        	 attachMPGVO.setAttachmentName("Photo"+i);
        	 attachMPGVO.setPath((String)itr.next());
        	 
        	 attachMPG_DAO.insert(attachMPGVO);
        	 
        	 i++;
			}
		

		
		session.removeAttribute("fileList");
				
		
		
		
		show(request, response);
		
		
	}
	
	protected void show(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		AttachmentMappingDAO attachDAO = new AttachmentMappingDAO();
		List myList = attachDAO.showAll();
		
		HttpSession session = request.getSession();
		session.setAttribute("myList", myList);
		
		response.sendRedirect(request.getContextPath()+"/admin/edit_package.jsp");
		
		
		
	}

}
