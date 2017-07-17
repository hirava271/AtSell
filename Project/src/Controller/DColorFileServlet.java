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

import VO.DclothVO;
import VO.DcolorFileVO;

import DAO.DclothDAO;
import DAO.DcolorFileDAO;

/**
 * Servlet implementation class DColorFileServlet
 */
@WebServlet("/DColorFileServlet")
public class DColorFileServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DColorFileServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flg=request.getParameter("flag");
		if(flg.equals("load_subcat"))
		{
			load_subcategory(request,response);
		}
		
		if(flg.equals("load_cat"))
		{
			load_category_ajax(request,response);
		}
		if(flg.equals("load_cat_ac"))
		{
			load_category_ac_ajax(request,response);
		}
		if(flg.equals("load_product"))
		{
			load_product_ajax(request,response);
		}
	}
	private void load_product_ajax(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		
		System.out.println("Inside ajax load cat ac");
		int id = Integer.parseInt(request.getParameter("product_id"));
		List list=new ArrayList();
		DcolorFileDAO colFileDAO=new DcolorFileDAO();
		list=colFileDAO.search_product_ajax(id);
		
		HttpSession httpSession=request.getSession();
		httpSession.setAttribute("product", list);
		System.out.println("List size Subcat="+list.size());
		response.sendRedirect("designer/load_product_ajax.jsp");
	}

	private void load_category_ac_ajax(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
			
			System.out.println("Inside ajax load cat ac");
			String id = request.getParameter("item_type_id");
			List list=new ArrayList();
			DclothDAO clothobj = new DclothDAO();
			list=clothobj.search_category_ac_ajax(id);
			
			HttpSession httpSession=request.getSession();
			httpSession.setAttribute("category", list);
			System.out.println("List size Subcat="+list.size());
			response.sendRedirect("designer/load_category_ajax.jsp");
		}

		private void load_category_ajax(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
			
			System.out.println("Inside ajax load cat");
			String id = request.getParameter("item_type_id");
			List list=new ArrayList();
			DclothDAO clothobj = new DclothDAO();
			list=clothobj.search_category_ajax(id);
			
			HttpSession httpSession=request.getSession();
			httpSession.setAttribute("category", list);
			System.out.println("List size Subcat="+list.size());
			response.sendRedirect("designer/load_category_ajax.jsp");
		}


		public void load_subcategory(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
		{
			int id = Integer.parseInt(request.getParameter("category_id"));
			List list=new ArrayList();
			DclothDAO clothobj = new DclothDAO();
			list=clothobj.search_subcategory(id);
			
			HttpSession httpSession=request.getSession();
			httpSession.setAttribute("subcategory", list);
			System.out.println("List size Subcat="+list.size());
			response.sendRedirect("designer/load_subcategory.jsp");
		}
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String flg=request.getParameter("flag");
		if(flg.equals("insert"))
		{
			insert(request,response);
		}
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		System.out.println("servlet+++");
		String color_code=request.getParameter("color");
		int product_id=Integer.parseInt(request.getParameter("product_name"));
		
		DclothVO clVo=new DclothVO();
		clVo.setCloth_id(product_id);
		
		
		DcolorFileVO clothfileVO = new DcolorFileVO();
		clothfileVO.setClothObj(clVo);
		clothfileVO.setColor_code(color_code);
		
		DcolorFileDAO colDao=new DcolorFileDAO();
	
		HttpSession session =request.getSession();
		
		List myList=(List)session.getAttribute("fileList");
		
		Iterator itr =  myList.iterator();
         
         System.out.println("Reading for session");
         int i =0;
         
         while (itr.hasNext()) {
     
        	 clothfileVO.setPath((String)itr.next());
        	 colDao.insert(clothfileVO);
        	 i++;
			}
		

		
		session.removeAttribute("fileList"); 
				
		response.sendRedirect("designer/add_color_file.jsp");
	}

}
