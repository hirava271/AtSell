package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.UsortingDAO;

/**
 * Servlet implementation class USortingServlet
 */
@WebServlet("/USortingServlet")
public class USortingServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public USortingServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flg=request.getParameter("flag");
		
		if(flg.equals("designer"))
		{
			sort_designer(request,response);
		}
	}

	private void sort_designer(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		HttpSession session=request.getSession();
		int designer_id = Integer.parseInt(request.getParameter("id"));
		String display_name=request.getParameter("name");
		UsortingDAO sortDao=new UsortingDAO();
		List l=sortDao.sort_designer(designer_id);
		
		if (l.size() > 0) {
			session.setAttribute("sorted_product", l);
			session.setAttribute("size", l.size());
			session.setAttribute("sorting_type",display_name );
			response.sendRedirect("user/sorting_selection.jsp");
		} else {
			response.sendRedirect("<%=request.getContextPath()%>/UProductSelectionServlet");
		}

		
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flg=request.getParameter("flag");
		if(flg.equals("shopBy"))
		{
			sort(request,response);
		}
	}

	private void sort(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		String designer[]= request.getParameterValues("d_sort");
		String color[]= request.getParameterValues("c_sort");
		String material[]= request.getParameterValues("m_sort");
		String neck[]= request.getParameterValues("n_sort");
		String sleeve[]= request.getParameterValues("s_sort");
		String range=request.getParameter("price_range");
		/*String lower_range=request.getParameter("lower_range");*/
		
		String str_designer="";
		String str_color="";
		String str_material="";
		String str_neck="";
		String str_sleeve="";
		float uRange=-1;
		float lRange = -1;
		/*if(upper_range!=null && lower_range!=null)
		{
			uRange=Integer.parseInt(upper_range);
			lRange=Integer.parseInt(lower_range);
			System.out.println(uRange);
		}*/
		if(range!=null && range.length()>0)
		{
			System.out.println("Price  range:"+range );
			String srange[]=range.split("-");
			lRange=Float.parseFloat(srange[0].substring(1));
			uRange=Float.parseFloat(srange[1].substring(2));
		}
		if(designer!=null && designer.length>0)
		{
		
		for(int i=0;i<designer.length;i++)
		{
			str_designer=str_designer+","+designer[i];
		}
		System.out.println("Designers....."+str_designer);
		}
		
		if(color!=null && color.length>0)
		{
		
		for(int i=0;i<color.length;i++)
		{
			str_color=str_color+","+"'"+color[i]+"'";
		}
		System.out.println("color....."+str_color);
		}
		
		
		if(material!=null && material.length>0)
		{
		for(int i=0;i<material.length;i++)
		{
			str_material=str_material+","+material[i];
		}
		System.out.println("material....."+str_material);
		}
		
		if(neck!=null && neck.length>0)
		{
		for(int i=0;i<neck.length;i++)
		{
			str_neck=str_neck+","+neck[i];
		}
		System.out.println("neck....."+str_neck);
		}
		if(sleeve!=null && sleeve.length>0)
		{
		for(int i=0;i<sleeve.length;i++)
		{
			str_sleeve=str_sleeve+","+sleeve[i];
		}
		System.out.println("sleeve....."+str_sleeve);
		}
		UsortingDAO daoobj = new UsortingDAO();
		List l=daoobj.sorting(str_designer, str_color, str_material,str_neck, str_sleeve, uRange, lRange);
		HttpSession hs=request.getSession();
		hs.setAttribute("sorted_product", l);
		response.sendRedirect("user/sorting_selection.jsp");
		
	}

}
