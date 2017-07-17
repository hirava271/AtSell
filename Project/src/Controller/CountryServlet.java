package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import VO.countryVO;
import VO.countryVO;

import DAO.DeleteDao;
import DAO.InsertDao;
import DAO.SearchDao;
import DAO.countryDAO;

/**
 * Servlet implementation class CategoryServlet
 */
@WebServlet("/CountryServlet")
public class CountryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CountryServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flg = request.getParameter("flag");
		if(flg.equals("delete"))
		{
			delete_country(request,response);
		}
		if(flg.equals("load")){
			load_country(request,response);
		}
		if(flg.equals("edit"))
		{
			edit_country(request,response);
		}
		
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flg = request.getParameter("flag");
		
		if(flg.equals("save"))
		{
			save_country(request,response);
		}
		
		if(flg.equals("insert")){
			
		String country_name=request.getParameter("add_country_name");
		String country_description=request.getParameter("add_country_description");
		System.out.println(country_name);
		System.out.println(country_description);
		
		countryVO countryobj = new countryVO();
		countryobj.setCountry_name(country_name);
		countryobj.setCountry_description(country_description);
		
		countryDAO daoobj = new countryDAO();
		daoobj.insert(countryobj);
		response.sendRedirect("admin/manage_country.jsp");
		}
		
	//	if(flg.equals("save")){
	//		save_category(request,response);
	//	}
}
	
	public void load_country(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		List list=null;
		System.out.println("Hello");
		countryDAO daoobj = new countryDAO();
		list=daoobj.search_country();
		HttpSession httpSession=request.getSession();
		httpSession.setAttribute("search_country", list);
		response.sendRedirect("admin/search_country.jsp");
		
	}
	
	public void delete_country(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String id1= request.getParameter("id");	
		int id=Integer.parseInt(id1);
		System.out.println("Hello");
		System.out.println(id);
		countryVO countryVO=new countryVO();
		countryVO.setCountry_id(id);
		countryDAO delDao = new countryDAO();
		delDao.delete(countryVO);
		load_country(request,response);
	}
	
	public void edit_country(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String id1= request.getParameter("id");	
		int id=Integer.parseInt(id1);
		System.out.println("Hello");
		System.out.println(id);
		countryVO catVO=new countryVO();
		catVO.setCountry_id(id);
		countryDAO edit = new countryDAO();
		List l = edit.edit(catVO);
		HttpSession httpSession=request.getSession();
		httpSession.setAttribute("edit_country_session", l);
		response.sendRedirect("admin/edit_country.jsp");
		
	}
	
	public void save_country(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String id1= request.getParameter("id");	
		int edited_id=Integer.parseInt(id1);
		String country_name=request.getParameter("add_country_name");
		String country_description=request.getParameter("add_country_description");
		System.out.println(edited_id);
		System.out.println(country_name);
		System.out.println(country_description);
		countryVO catVO=new countryVO();
		catVO.setCountry_id(edited_id);
	    catVO.setCountry_name(country_name);
	    catVO.setCountry_description(country_description);
	    countryDAO save = new countryDAO();
		save.save(catVO);
		load_country(request,response);
	}
	
	}

