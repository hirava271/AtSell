package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.hibernate.type.BooleanType;

import DAO.SearchDao;
import DAO.packageDAO;
import VO.AttachmentMappingVO;
import VO.categoryVO;
import VO.packageFileUploadVO;
import VO.packageVO;

/**
 * Servlet implementation class PackageServlet
 */
@WebServlet("/PackageServlet")
public class PackageServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public PackageServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String flg=request.getParameter("flag");
		if(flg.equals("search"))
		{
			search_package(request,response);
		}
		
		if(flg.equals("delete"))
		{
			delete_package(request,response);
		}
		
		if(flg.equals("edit"))
		{
			edit_package(request,response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flg=request.getParameter("flag");
		if(flg.equals("insert"))
		{
			insert_package(request,response);
		}
		
		if(flg.equals("save"))
		{
			save_package(request,response);
		}

	}
	public void search_package(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		List list=new ArrayList();
		System.out.println("Hello");
		packageDAO searchDao=new packageDAO();
		list=searchDao.search_package();
		HttpSession httpSession=request.getSession();
		httpSession.setAttribute("search_package", list);
		response.sendRedirect("admin/search_package.jsp");
		
	}
	
	public void insert_package(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String package_name=request.getParameter("add_package_name");
		String package_description=request.getParameter("add_package_description");
		String package_duration=request.getParameter("add_package_duration");
		int package_price=Integer.parseInt(request.getParameter("add_package_price"));
		int package_status=Integer.parseInt(request.getParameter("status"));
		
		packageVO packageobj=new packageVO();
		packageobj.setPackage_name(package_name);
		packageobj.setPackage_description(package_description);
		packageobj.setPackage_duration(package_duration);
		packageobj.setPackage_price(package_price);
		packageobj.setIsActive(package_status);
		System.out.println(package_status);
		packageDAO obj=new packageDAO();
		obj.insert_package(packageobj);
		
		packageFileUploadVO packagefileVO = new packageFileUploadVO();
		HttpSession session =request.getSession();
		
		List myList=(List)session.getAttribute("fileList");
		
		 Iterator itr =  myList.iterator();
         
         System.out.println("Reading for session");
         int i =0;
         
         while (itr.hasNext()) {
     
        	 packagefileVO.setPath((String)itr.next());
        	 packagefileVO.setPackageObj(packageobj);
        	 
        	 obj.insert_package(packagefileVO);
        	 
        	 i++;
			}
		

		
		session.removeAttribute("fileList");
				
		
		
		response.sendRedirect("admin/add_package.jsp");
	}
	
	public void delete_package(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String selected_id1 = request.getParameter("id");
		int selected_id = Integer.parseInt(selected_id1);
		packageVO packageobj = new packageVO();
		packageobj.setPackage_id(selected_id);
		
		packageDAO daoobj = new packageDAO();
		daoobj.delete_package(packageobj);
		search_package(request,response);
	}	
	
	public void edit_package(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String selected_id1= request.getParameter("id");	
		int selected_id=Integer.parseInt(selected_id1);
		System.out.println("Hello");
		System.out.println(selected_id);
		packageVO packageobj = new packageVO();
		packageFileUploadVO packageFileobj=new packageFileUploadVO();
		packageobj.setPackage_id(selected_id);
		packageFileobj.setPackageObj(packageobj);
		List l = new ArrayList();
		List l1=new ArrayList();
		packageDAO daoobj = new packageDAO();
		l = daoobj.edit_package(packageobj);
		l1=daoobj.edit_packageAttachment(packageFileobj);
		
		HttpSession httpSession=request.getSession();
		httpSession.setAttribute("edit_package_session", l);
		HttpSession httpSession1=request.getSession();
		httpSession1.setAttribute("edit_packageattachment_session", l1);
		
		response.sendRedirect("admin/edit_package.jsp");
		
	}
	
	public void save_package(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		System.out.println("Welcome to SAVE");
		String selected_id1= request.getParameter("id");	
		int selected_id=Integer.parseInt(selected_id1);
		String package_name=request.getParameter("add_package_name");
		String package_description=request.getParameter("add_package_description");
		int package_price=Integer.parseInt(request.getParameter("add_package_price"));
		String package_duration= request.getParameter("add_package_duration");
		int package_status= Integer.parseInt(request.getParameter("status"));
		
		System.out.println(selected_id);
		System.out.println(package_name);
		System.out.println(package_description);
		
		packageVO packageobj = new packageVO();
		packageobj.setPackage_id(selected_id);
		packageobj.setPackage_name(package_name);
		packageobj.setPackage_description(package_description);
		packageobj.setPackage_duration(package_duration);
		packageobj.setPackage_price(package_price);
		packageobj.setIsActive(package_status);
		
		packageDAO saveobj = new packageDAO();
		saveobj.save_package(packageobj);
		
		
		packageFileUploadVO packagefileVO = new packageFileUploadVO();
		
		HttpSession session =request.getSession();
		
		List myList=(List)session.getAttribute("fileList");
		
		 Iterator itr =  myList.iterator();
         
         System.out.println("Reading for session");
         int i =0;
         
         while (itr.hasNext()) {
     
        	 packagefileVO.setPath((String)itr.next());
        	 packagefileVO.setPackageObj(packageobj);
        	 
        	 saveobj.insert_package(packagefileVO);
        	 
        	 i++;
			}
		

		
		session.removeAttribute("fileList");

		search_package(request,response);
	}
	
	
	
}
