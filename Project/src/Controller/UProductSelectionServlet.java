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
import javax.websocket.Session;

import DAO.DcolorFileDAO;
import DAO.UmenuDAO;
import DAO.UproductSelectionDAO;
import VO.DclothFileUploadVO;
import VO.DclothVO;
import VO.DcolorFileVO;
import VO.DsizeVO;
import VO.UaddToCartVO;
import VO.loginVO;
import VO.registrationVO;
import VO.subcategoryVO;

/**
 * Servlet implementation class UProductSelectionServlet
 */
@WebServlet("/UProductSelectionServlet")
public class UProductSelectionServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public UProductSelectionServlet() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("doGet of UproductServlet");
		String flg = request.getParameter("flag");
		System.out.println("doGet of UproductServlet" + flg);
		if (flg != null && flg != "") {
					
			if (flg.equals("delete")) {
				//search_product(request, response);
				delete(request,response);
			}
			if (flg.equals("delete_wishlist")) {
				//search_product(request, response);
				try {
					delete_wishlist(request,response);
				} catch (Exception e) {
					// TODO Auto-generated catch block
					e.printStackTrace();
				}
			}
			
			if (flg.equals("subcategory_search")) {
				search_product(request, response);
			}
			if (flg.equals("particular_search")) {
				particular_product_seach(request, response);
			}

		}
		if (flg.equals("add_to_cart")) {
			add_to_cart_seach(request, response);
		}
		if (flg.equals("add_to_wishlist")) {
			add_to_wishlist_seach(request, response);
		}

	}

	private void delete_wishlist(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("id"));		
		id=id-1;
		HttpSession hs=request.getSession();
		List l=(List)hs.getAttribute("product_data_wishlist");
		//List ls=(List)hs.getAttribute("product_size_wishlist");
		System.out.println("Delete method....old size.."+l.size());
		List lnew=new ArrayList();
		List lnewsize=new ArrayList();
		for(int i=0;i<l.size();i++)
		{
			if(i!=id)
			{
				lnew.add(l.get(i));
			//	lnewsize.add(ls.get(i));
			}
		}
		
		//System.out.println("Delete method....new size.."+lnew.size());
		hs.setAttribute("product_data_wishlist", lnew);
		hs.setAttribute("product_size_wishlist", lnewsize);
		response.sendRedirect("user/add_to_wishlist.jsp");
		
	}

	private void add_to_wishlist_seach(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		System.out.println("Inside wish list ");

		int id = Integer.parseInt(request.getParameter("id"));
		int price = Integer.parseInt(request.getParameter("price"));
		String product_name = request.getParameter("name");
		String img_path = request.getParameter("img");
		String size_name = request.getParameter("size");
		String color_code = request.getParameter("colorcode");
		int duser_id = Integer.parseInt(request.getParameter("duser_id"));
		System.out.println("Size = "+size_name);
		
		registrationVO tmp=new registrationVO();
		tmp.setDesigner_user_id(duser_id);
		/*DsizeVO sizVo = new DsizeVO();
		sizVo.setSize(size_name);

		
		System.out.println("img path" + img_path);
		System.out.println("img path" + color_code);

		DclothVO clothObj = new DclothVO();
		clothObj.setCloth_id(id);
		clothObj.setPrice(price);
		clothObj.setProduct_name(product_name);

		DcolorFileVO coloFileVO = new DcolorFileVO();
		coloFileVO.setColor_code(color_code);
		coloFileVO.setPath(img_path);
		coloFileVO.setClothObj(clothObj);*/
		
		UaddToCartVO cartVO = new UaddToCartVO();
		cartVO.setCloth_id(id);
		cartVO.setProduct_name(product_name);
		cartVO.setPrice(price);
		cartVO.setPath(img_path);
		cartVO.setSize(size_name);
		cartVO.setColor_code(color_code);
		cartVO.setDesigner_user_id(tmp);
		
		HttpSession session = request.getSession();

		List l = (List) session.getAttribute("product_data_wishlist");
		/*List lsize = (List) session.getAttribute("product_size_wishlist");
		for(int i=0;i<lsize.size();i++)
		{
			System.out.println("list.."+lsize.get(i));
		}*/

		if (l == null) {
			l = new ArrayList();
		//	lsize = new ArrayList();
			l.add(cartVO);
		}

		else {
			l.add(cartVO);
			System.out.println("Session list size..." + l.size());
		}
		
		session.setAttribute("product_data_wishlist", l);
		session.setAttribute("product_size_wishlist", l.size());

		response.sendRedirect("user/add_to_wishlist.jsp");

	}

	private void delete(HttpServletRequest request, HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int id=Integer.parseInt(request.getParameter("id"));		
		id=id-1;
		HttpSession hs=request.getSession();
		List l=(List)hs.getAttribute("product_data");
		List ls=(List)hs.getAttribute("product_size");
		System.out.println("Delete method....old size.."+l.size());
		List lnew=new ArrayList();
		List lnewsize=new ArrayList();
		for(int i=0;i<l.size();i++)
		{
			if(i!=id)
			{
				lnew.add(l.get(i));
			//	lnewsize.add(ls.get(i));
			}
		}
		
		//System.out.println("Delete method....new size.."+lnew.size());
		hs.setAttribute("product_data", lnew);
		hs.setAttribute("product_size", lnewsize);
		response.sendRedirect("user/add_to_cart.jsp");
		
	}

	private void add_to_cart_seach(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		
		System.out.println("Inside add to cart");

		int id = Integer.parseInt(request.getParameter("id"));
		int price = Integer.parseInt(request.getParameter("price"));
		String product_name = request.getParameter("name");
		String img_path = request.getParameter("img");
		String size_name = request.getParameter("size");
		String color_code = request.getParameter("colorcode");
		int duser_id = Integer.parseInt(request.getParameter("duser_id"));
		
		registrationVO tmp=new registrationVO();
		tmp.setDesigner_user_id(duser_id);
		System.out.println("Size = "+size_name);
		
		/*DsizeVO sizVo = new DsizeVO();
		sizVo.setSize(size_name);

		
		System.out.println("img path" + img_path);
		System.out.println("img path" + color_code);

		DclothVO clothObj = new DclothVO();
		clothObj.setCloth_id(id);
		clothObj.setPrice(price);
		clothObj.setProduct_name(product_name);

		DcolorFileVO coloFileVO = new DcolorFileVO();
		coloFileVO.setColor_code(color_code);
		coloFileVO.setPath(img_path);
		coloFileVO.setClothObj(clothObj);*/
		
		UaddToCartVO cartVO = new UaddToCartVO();
		cartVO.setCloth_id(id);
		cartVO.setProduct_name(product_name);
		cartVO.setPrice(price);
		cartVO.setPath(img_path);
		cartVO.setSize(size_name);
		cartVO.setColor_code(color_code);
		cartVO.setDesigner_user_id(tmp);
		HttpSession session = request.getSession();

		List l = (List) session.getAttribute("product_data");
		List lsize = (List) session.getAttribute("product_size");
		for(int i=0;i<lsize.size();i++)
		{
			System.out.println("list.."+lsize.get(i));
		}

		if (l == null) {
			l = new ArrayList();
			lsize = new ArrayList();
			l.add(cartVO);
		}

		else {
			l.add(cartVO);
			System.out.println("Session list size..." + l.size());
		}
		
		session.setAttribute("product_data", l);
		session.setAttribute("list_size", l.size());

		response.sendRedirect("user/add_to_cart.jsp");

	}

	private void particular_product_seach(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		DclothVO clothObj = new DclothVO();
		clothObj.setCloth_id(id);

		DsizeVO sizVo = new DsizeVO();

		DcolorFileVO vo = new DcolorFileVO();
		vo.setClothObj(clothObj);

		DcolorFileDAO dao = new DcolorFileDAO();
		List lcolor = dao.search_color(vo);

		UproductSelectionDAO proSelectionDAO = new UproductSelectionDAO();
		List lsize = proSelectionDAO.search_size();
		List lcloth = proSelectionDAO.search_product_detail(clothObj);
		DclothVO temp = null;
		if(lcloth.size()>0)
		{
		temp=(DclothVO)lcloth.get(0);
		}
		
		loginVO logVo=new loginVO();
		registrationVO regVo=new registrationVO();
		regVo.setDesigner_user_id(temp.getRegVoObj().getDesigner_user_id());
		HttpSession session = request.getSession();
		List ldesigner=proSelectionDAO.search_designer(regVo);
		if(ldesigner.size()>0)
		{
			registrationVO dnameVo=(registrationVO)ldesigner.get(0);
			session.setAttribute("dname", dnameVo.getUser_name());
			System.out.println("Designer Name++++++++++++="+dnameVo.getUser_name());
		}
		
		
		session.setAttribute("product", lcloth);
		session.setAttribute("product_size", lsize);
		session.setAttribute("product_colors", lcolor);
		response.sendRedirect("user/product_detail_view.jsp");
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request,
			HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	private void search_product(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		int id = Integer.parseInt(request.getParameter("id"));
		String name = request.getParameter("name");
		String description = request.getParameter("desc");

		subcategoryVO subcatvo = new subcategoryVO();
		subcatvo.setSubcategory_id(id);

		DclothVO voobj = new DclothVO();
		voobj.setSubcatVO(subcatvo);

		List L = new ArrayList();

		UmenuDAO daoobj = new UmenuDAO();
		L = daoobj.search_product(voobj);

		DclothFileUploadVO clothvo = null;
		HttpSession session = request.getSession();
		System.out.println("List size=" + L.size());
		if (L.size() > 0) {

			session.setAttribute("search_product", L);
			session.setAttribute("size", L.size());
			session.setAttribute("subcat_name", name);
			session.setAttribute("subcat_desc", description);
			response.sendRedirect("user/product_selection.jsp");
		} else {
			response.sendRedirect("<%=request.getContextPath()%>/UProductSelectionServlet");
		}

	}

}
