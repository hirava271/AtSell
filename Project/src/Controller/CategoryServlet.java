package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import VO.categoryVO;

import DAO.DeleteDao;
import DAO.InsertDao;
import DAO.SearchDao;

/**
 * Servlet implementation class CategoryServlet
 */
@WebServlet("/CategoryServlet")
public class CategoryServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CategoryServlet() {
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
			delete_category(request,response);
		}
		if(flg.equals("load")){
			load_category(request,response);
		}
		if(flg.equals("edit"))
		{
			edit_category(request,response);
		}
		if(flg.equals("save"))
		{
			save_category(request,response);
		}
		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flg = request.getParameter("flag");
		
		if(flg.equals("add_category")){
			
		String category_name=request.getParameter("add_category_name");
		String item_type=request.getParameter("type");
		String category_description=request.getParameter("add_category_description");
		System.out.println(category_name);
	
		System.out.println(category_description);
		categoryVO catVO=new categoryVO();
		catVO.setItem_type(item_type);
	    catVO.setCategory_name(category_name);
	    catVO.setCategory_description(category_description);
	    DAO.InsertDao insertDao=new DAO.InsertDao();
	    insertDao.insert(catVO);
	    response.sendRedirect("admin/add_category.jsp");
		}
		
		if(flg.equals("save")){
			save_category(request,response);
		}
			}
	public void load_category(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		List list=null;
		System.out.println("Hello");
		SearchDao searchDao=new SearchDao();
		list=searchDao.search_category();
		HttpSession httpSession=request.getSession();
		httpSession.setAttribute("search_category", list);
		response.sendRedirect("admin/search_category.jsp");
		
	}
	
	public void delete_category(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String id1= request.getParameter("id");	
		int id=Integer.parseInt(id1);
		System.out.println("Hello");
		System.out.println(id);
		categoryVO catVO=new categoryVO();
		catVO.setCategory_id(id);
		DeleteDao delDao = new DeleteDao();
		delDao.delete(catVO);
		load_category(request,response);
	}
	
	public void edit_category(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String id1= request.getParameter("id");	
		int id=Integer.parseInt(id1);
		System.out.println("Hello");
		System.out.println(id);
		categoryVO catVO=new categoryVO();
		catVO.setCategory_id(id);
		SearchDao edit = new SearchDao();
		List l = edit.edit(catVO);
		HttpSession httpSession=request.getSession();
		httpSession.setAttribute("edit_cat_session", l);
		response.sendRedirect("admin/edit_category.jsp");
		
	}
	
	public void save_category(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		String id1= request.getParameter("id");	
		int edited_id=Integer.parseInt(id1);
		String category_name=request.getParameter("add_category_name");
		String category_description=request.getParameter("add_category_description");
		System.out.println(edited_id);
		System.out.println(category_name);
		System.out.println(category_description);
		categoryVO catVO=new categoryVO();
		catVO.setCategory_id(edited_id);
	    catVO.setCategory_name(category_name);
	    catVO.setCategory_description(category_description);
		SearchDao save = new SearchDao();
		save.edit_category(catVO);
		load_category(request,response);
	}
	
	}

