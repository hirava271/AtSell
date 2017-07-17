package Controller;

import java.io.IOException;
import java.util.*;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.DeleteDao;
import DAO.InsertDao;
import DAO.SearchDao;
import DAO.subcategoryDAO;
import VO.categoryVO;
import VO.subcategoryVO;

/**
 * Controller implementation class SubcategoryServlet
 */
@WebServlet("/SubcategoryServlet")
public class SubcategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public SubcategoryServlet() {
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
				search_subcategory(request,response);
			}
			
			if(flg.equals("load"))
			{
				load_category(request,response);
			}
			
			if(flg.equals("delete"))
			{
				delete_subcategory(request,response);
			}
			
			if(flg.equals("edit"))
			{
				edit_subcategory(request,response);
			}
			if(flg.equals("save"))
			{
				save_subcategory(request,response);
			}
			
			
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.print("in block");
		String flg=request.getParameter("flag");
	
		if(flg.equals("add_subcategory"))
		{
			System.out.print("in block");
			insert_subcategory(request, response);
		}
		
		if(flg.equals("save"))
		{
			save_subcategory(request,response);
		}
	}
	
	public void load_category(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		List list=new ArrayList();
		SearchDao searchDao=new SearchDao();
		list=searchDao.search_category();
		HttpSession httpSession=request.getSession();
		httpSession.setAttribute("category", list);
		response.sendRedirect("admin/add_subcategory.jsp");
		
	}
	
	public void insert_subcategory(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException
	{
		String subcategory_name=request.getParameter("add_subcategory_name");
		String subcategory_description=request.getParameter("add_subcategory_description");
		String selected_category=request.getParameter("dropdown_category");
		int selected_category_id=Integer.parseInt(selected_category);
		System.out.print(selected_category_id);
		System.out.println(subcategory_name);
	
		System.out.println(subcategory_description);
		subcategoryVO subcatVO=new subcategoryVO();
		subcatVO.setSubcategory_name(subcategory_name);
		subcatVO.setSubcategory_description(subcategory_description);
		
		categoryVO catVO=new categoryVO();
		catVO.setCategory_id(selected_category_id);
		subcatVO.setCatVO(catVO);
		InsertDao insertDao=new InsertDao();
		insertDao.insert(subcatVO);
		response.sendRedirect("admin/add_subcategory.jsp");
	}
	
	public void search_subcategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		List list=new ArrayList();
		System.out.println("Hello");
		SearchDao searchobj=new SearchDao();
		list=searchobj.search_subcategory();
		HttpSession httpSession=request.getSession();
		httpSession.setAttribute("subcategory", list);
		response.sendRedirect("admin/search_subcategory.jsp");
		
	}
	
	public void delete_subcategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String id1= request.getParameter("id");	
		int id=Integer.parseInt(id1);
		System.out.println("Hello");
		System.out.println(id);
		subcategoryVO subcatVO=new subcategoryVO();
		subcatVO.setSubcategory_id(id);
		DeleteDao delDao = new DeleteDao();
		delDao.delete(subcatVO);
		search_subcategory(request,response);
	}
	
	public void edit_subcategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String id1= request.getParameter("id");	
		int i=Integer.parseInt(id1);
		System.out.println("Hello");
		System.out.println(i);
		subcategoryVO subcatVO=new subcategoryVO();
		subcatVO.setSubcategory_id(i);
		subcategoryDAO editobj = new subcategoryDAO();
		List l = editobj.edit(subcatVO);
		HttpSession httpSession=request.getSession();
		httpSession.setAttribute("edit_subcat_session", l);
		List list=new ArrayList();
		SearchDao searchDao=new SearchDao();
		list=searchDao.search_category();
		HttpSession httpSession1=request.getSession();
		httpSession1.setAttribute("category", list);
		
		response.sendRedirect("admin/edit_subcategory.jsp");
		
	}
	
	public void save_subcategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String id1= request.getParameter("id");	
		int edited_id=Integer.parseInt(id1);
		String selected_category=request.getParameter("dropdown_category");
		System.out.print("option"+ selected_category);
		String subcategory_name=request.getParameter("add_subcategory_name");
		String subcategory_description=request.getParameter("add_subcategory_description");
		
		System.out.println(edited_id);
		System.out.println(subcategory_name);
		System.out.println(subcategory_description);
		
		subcategoryVO subcatVO=new subcategoryVO();
		subcatVO.setSubcategory_id(edited_id);
	    subcatVO.setSubcategory_name(subcategory_name);
	    subcatVO.setSubcategory_description(subcategory_description);
	    
	    categoryVO catVO=new categoryVO();
	    catVO.setCategory_id(Integer.parseInt(selected_category));
	    subcatVO.setCatVO(catVO);
	    
		subcategoryDAO saveobj = new subcategoryDAO();
		saveobj.save(subcatVO);
		search_subcategory(request,response);
	}
}

