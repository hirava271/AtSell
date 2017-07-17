package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import VO.DclothFileUploadVO;
import VO.DclothVO;
import VO.UregistrationVO;
import VO.categoryVO;
import VO.loginVO;
import VO.subcategoryVO;

import DAO.DclothDAO;
import DAO.UaddToCartDAO;
import DAO.UmenuDAO;

/**
 * Servlet implementation class UClothServlet
 */
@WebServlet("/UMenuServlet")
public class UMenuServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UMenuServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		System.out.println("inside servelet");
	
		UmenuDAO catobj = new UmenuDAO();
		List L = catobj.search_cloth_category();

		List L1 = catobj.search_cloth_subcategory();

		Iterator iterator = L.iterator();

		Map mp = new HashMap();
		while (iterator.hasNext()) {
			categoryVO catVO = (categoryVO) iterator.next();
			int catId = catVO.getCategory_id();

			Iterator iterator2 = L1.iterator();
			List lsans = new ArrayList();
			while (iterator2.hasNext()) {
				subcategoryVO subcatVO = (subcategoryVO) iterator2.next();
				int scatId = subcatVO.getCatVO().getCategory_id();

				if (catId == scatId) {
					lsans.add(subcatVO);
				}
			}
			mp.put(catVO.getCategory_name(), lsans);
		}
		HttpSession session = request.getSession();

		session.setAttribute("menu", mp);
		session.setAttribute("category", L);
		session.setAttribute("subcategory", L1);

		catobj = new UmenuDAO();
		L = catobj.search_accessories_category();

		L1 = catobj.search_accessories_subcategory();

		iterator = L.iterator();

		mp = new HashMap();
		while (iterator.hasNext()) {
			categoryVO catVO = (categoryVO) iterator.next();
			int catId = catVO.getCategory_id();

			Iterator iterator2 = L1.iterator();
			List lsans = new ArrayList();
			while (iterator2.hasNext()) {
				subcategoryVO subcatVO = (subcategoryVO) iterator2.next();
				int scatId = subcatVO.getCatVO().getCategory_id();

				if (catId == scatId) {
					lsans.add(subcatVO);
				}
			}
			mp.put(catVO.getCategory_name(), lsans);
		}
		session = request.getSession();

		session.setAttribute("menu_ac", mp);
		session.setAttribute("category_ac", L);
		session.setAttribute("subcategory_ac", L1);
		
		catobj = new UmenuDAO();
		
		List lr = catobj.search_cloth_fileUpload();
		
		session = request.getSession();
		
		session.setAttribute("file_upload1", lr);
		System.out.println(lr.size() + " : cnjhcbhjsbj");
		
		int user_id=Integer.parseInt(session.getAttribute("userID").toString());
		System.out.println("User id=========="+user_id);
		loginVO logVo=new loginVO();
		logVo.setLogin_id(user_id);
		
		UaddToCartDAO cartDao=new UaddToCartDAO();
		
		List luser=cartDao.search_user_id(logVo);
		if(luser!=null && luser.size()>0)
		{
		UregistrationVO regVo=(UregistrationVO)luser.get(0);
		int buyer_user_id=regVo.getBuyer_user_id();
		System.out.println("Buyer user ID====="+buyer_user_id);
		List wishlist=cartDao.get_wishlist_detail(buyer_user_id);
		List addtocart=cartDao.get_cart_detail(buyer_user_id);
		session.setAttribute("product_data_db", addtocart);
		session.setAttribute("list_size_db", addtocart.size());
		session.setAttribute("product_data_wishlist_db", wishlist);
		session.setAttribute("product_size_wishlist_db", wishlist.size());
		
		}
		
		/*sorting-----code*/
		
		catobj = new UmenuDAO();
		List lsortD=catobj.sorting_designer();
		session.setAttribute("sorting_designer", lsortD);
		
		lsortD = catobj.sorting_color();
		session.setAttribute("sorting_color", lsortD);
		
		lsortD = catobj.sorting_material();
		session.setAttribute("sorting_material", lsortD);
		
		lsortD = catobj.sorting_neck();
		session.setAttribute("sorting_neck", lsortD);
		
		lsortD = catobj.sorting_sleeve();
		session.setAttribute("sorting_sleeves", lsortD);
		response.sendRedirect("user/Ucode.jsp");
		
	}


	
	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	private void load_cloth_category(HttpServletRequest request,
			HttpServletResponse response) {
		// TODO Auto-generated method stub
		System.out.println("inside servelet");
		UmenuDAO menuObj=new UmenuDAO();
		List list=new ArrayList();
		list=menuObj.search_cloth_category();
		}; 
		
		
	}
	

