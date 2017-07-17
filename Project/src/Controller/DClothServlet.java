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

import VO.DSleevesVO;
import VO.DclothColorVO;
import VO.DclothFileUploadVO;
import VO.DclothVO;
import VO.DcolourVO;
import VO.DmaterialVO;
import VO.DneckVO;
import VO.DsizeVO;
import VO.categoryVO;
import VO.loginVO;
import VO.packageFileUploadVO;
import VO.packageVO;
import VO.registrationVO;
import VO.subcategoryVO;

import DAO.DclothDAO;
import DAO.SearchDao;
import DAO.packageDAO;

/**
 * Servlet implementation class DClothServlet
 */
@WebServlet("/DClothServlet")
public class DClothServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DClothServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		
		String flg=request.getParameter("flag");
		
		if(flg.equals("load"))
		{
			load(request,response);
		}
		
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
		if(flg.equals("search"))
		{
			search(request,response);
		}
		if(flg.equals("cloth"))
		{
			search_cloth(request,response);
		}
		if(flg.equals("delete"))
		{
			delete_cloth(request,response);
		}
		
		if(flg.equals("edit"))
		{
			edit_cloth(request,response);
		}
		
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

		private void edit_cloth(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		
	}

		private void delete_cloth(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
			System.out.println("Inside del servlet..");
			int id=Integer.parseInt(request.getParameter("id"));
			System.out.println(id);
			DclothVO obj=new DclothVO();
			obj.setCloth_id(id);
			DclothFileUploadVO cloUploadVO = new DclothFileUploadVO();
			cloUploadVO.setClothObj(obj);
			
			DclothDAO cloDao = new DclothDAO();
			cloDao.delete_attachment(cloUploadVO);
			cloDao.delete_item(obj);
			System.out.println("Inside del servlet..");
			search_cloth(request,response);
	}

		private void search_cloth(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		String item_type = request.getParameter("item");
		
		System.out.println("I am cloth");
		
		DclothVO voobj = new DclothVO();
		voobj.setItem_type(item_type);
		
		DclothDAO obj=new DclothDAO();
		
		List list=new ArrayList();
		list=obj.search_cloth(voobj);		
		HttpSession httpSession=request.getSession();
		httpSession.setAttribute("item", list);
		httpSession.setAttribute("item_type", item_type);
		response.sendRedirect("designer/search_cloths.jsp");
	
		
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
	
	public void load(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		List list=new ArrayList();
		DclothDAO clothdao = new DclothDAO();
		HttpSession httpSession=request.getSession();
		
		list = clothdao.search_material();
		System.out.println("List size="+list.size());
		httpSession=request.getSession();
		httpSession.setAttribute("material", list);

		list = clothdao.search_size();
		System.out.println("List size="+list.size());
		httpSession=request.getSession();
		httpSession.setAttribute("size", list);

		list = clothdao.search_sleeve();
		System.out.println("List size="+list.size());
		httpSession=request.getSession();
		httpSession.setAttribute("sleeve", list);

		list = clothdao.search_neck();
		System.out.println("List size="+list.size());
		httpSession=request.getSession();
		httpSession.setAttribute("neck", list);

		response.sendRedirect("designer/add_cloths.jsp");
		
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
	
	public void search(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
//		String flg=request.getParameter("value");
//		
//		DclothDAO obj=new DclothDAO();
//		List list=new ArrayList();
//		list=obj.search_cloth();
//		HttpSession httpSession=request.getSession();
//		httpSession.setAttribute("cloth", list);
		
		response.sendRedirect("designer/search_cloths.jsp");
	}
	
	public void insert(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		DclothVO voobj = new DclothVO();
		String item_type=request.getParameter("type");
		int cat_id=Integer.parseInt(request.getParameter("category_name"));
		int subcat_id=Integer.parseInt(request.getParameter("subcategory_id"));
		String pro_name=request.getParameter("product_name");
		String pro_description=request.getParameter("product_description");
		voobj.setItem_type(item_type);
		if(request.getParameter("length")!=null && request.getParameter("length")!="")
		{
			System.out.println("Hello!!! I am length" +request.getParameter("length"));
		int length=Integer.parseInt(request.getParameter("length"));
		voobj.setLength(length);
		}
		if(request.getParameter("material")!=null && request.getParameter("material")!="")
		{
		int material=Integer.parseInt(request.getParameter("material"));
		DmaterialVO materialVo = new DmaterialVO();
		materialVo.setMaterial_id(material);
		voobj.setMaterial(materialVo);
		
		}
		if(request.getParameter("sleeve")!=null && request.getParameter("sleeve")!="")
		{
		int sleeve=Integer.parseInt(request.getParameter("sleeve"));
		DSleevesVO sleevVo = new DSleevesVO();
		sleevVo.setSleeves_id(sleeve);
		voobj.setSleeve(sleevVo);
		
		}
		if(request.getParameter("neck")!=null && request.getParameter("neck")!="")
		{
		int neck=Integer.parseInt(request.getParameter("neck"));
		DneckVO neckVo = new DneckVO();
		neckVo.setNeck_id(neck);
		voobj.setNeck(neckVo);
		
		}
		
		//int colour=Integer.parseInt(request.getParameter("colour"));
			
		int price=Integer.parseInt(request.getParameter("price"));
		
		
		categoryVO catVo = new categoryVO();
		catVo.setCategory_id(cat_id);
		
		subcategoryVO subcatVo= new subcategoryVO();
		subcatVo.setSubcategory_id(subcat_id);
		
		voobj.setProduct_name(pro_name);
		voobj.setProduct_description(pro_description);
		
		voobj.setPrice(price);
		voobj.setCatVO(catVo);
		voobj.setSubcatVO(subcatVo);
		//voobj.setColour(colourVo);
		
		HttpSession session =request.getSession();
		int user_id=Integer.parseInt(session.getAttribute("userID").toString());
		loginVO logvo=new loginVO();
		logvo.setLogin_id(user_id);
		
		

		DclothDAO obj=new DclothDAO();
		List ldesigner=obj.search_designer_id(logvo);
		
		int designerId = -1;
		registrationVO regVo = (registrationVO)ldesigner.get(0);
		
		voobj.setRegVoObj(regVo);
		
		obj.insert(voobj);	
		
		/*DclothFileUploadVO clothfileVO = new DclothFileUploadVO();
		HttpSession session =request.getSession();
		
		List myList=(List)session.getAttribute("fileList");
		
		 Iterator itr =  myList.iterator();
         
         System.out.println("Reading for session");
         int i =0;
         
         while (itr.hasNext()) {
     
        	 clothfileVO.setPath((String)itr.next());
        	 clothfileVO.setClothObj(voobj);
        	 
        	 obj.insert(clothfileVO);
        	 
        	 i++;
			}
		

		
		session.removeAttribute("fileList"); 
				
*/		
		
		response.sendRedirect("designer/add_cloths.jsp");
	}

	
}
