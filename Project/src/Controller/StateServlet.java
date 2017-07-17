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
import DAO.countryDAO;
import DAO.stateDAO;
import DAO.subcategoryDAO;
import VO.categoryVO;
import VO.countryVO;
import VO.stateVO;
import VO.subcategoryVO;

/**
 * Controller implementation class SubcategoryServlet
 */
@WebServlet("/StateServlet")
public class StateServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public StateServlet() {
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
				search_state(request,response);
			}
			
			if(flg.equals("load"))
			{
				load_country(request,response);
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
	
		if(flg.equals("insert"))
		{
			System.out.print("in block");
			insert_state(request, response);
		}
		
		if(flg.equals("save"))
		{
			save_subcategory(request,response);
		}
	}
	
	public void load_country(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		List list=new ArrayList();
		countryDAO daoobj = new countryDAO();
		list=daoobj.search_country();
		HttpSession httpSession=request.getSession();
		httpSession.setAttribute("country", list);
		response.sendRedirect("admin/manage_state.jsp");
		
	}
	
	public void insert_state(HttpServletRequest request,HttpServletResponse response)throws ServletException, IOException
	{
		String state_name=request.getParameter("add_state_name");
		String state_description=request.getParameter("add_state_description");
		String selected_country=request.getParameter("dropdown_country");
		int selected_country_id=Integer.parseInt(selected_country);
		
		System.out.println(state_name);
		System.out.println(state_description);
		System.out.println(selected_country);
		
		stateVO stateVO_obj = new stateVO();
		stateVO_obj.setState_name(state_name);
		stateVO_obj.setState_description(state_description);
		
		countryVO countryVO_obj = new countryVO();
		countryVO_obj.setCountry_id(selected_country_id);
		stateVO_obj.setCountryVO_obj(countryVO_obj);
		
		stateDAO stateDAO_obj = new stateDAO();
		stateDAO_obj.insert(stateVO_obj);
		response.sendRedirect("admin/manage_state.jsp");
	}
	
	public void search_state(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		List list=new ArrayList();
		System.out.println("Hello");
		stateDAO searchobj=new stateDAO();
		list=searchobj.search_state();
		HttpSession httpSession=request.getSession();
		httpSession.setAttribute("state", list);
		response.sendRedirect("admin/search_state.jsp");
		
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
		search_state(request,response);
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
		search_state(request,response);
	}
}

