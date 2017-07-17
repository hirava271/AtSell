package Controller;

import java.io.IOException;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Date;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.UaddToCartDAO;
import DAO.cityDAO;
import VO.UaddToCartMstVO;
import VO.UaddToCartVO;
import VO.UregistrationVO;
import VO.loginVO;

/**
 * Servlet implementation class UAddToCartServlet
 */
@WebServlet("/UAddToCartServlet")
public class UAddToCartServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UAddToCartServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flg=request.getParameter("flag");
		
		if(flg.equals("insert"))
		{
			try {
				save_to_cart(request,response);
			} catch (ParseException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
		if(flg.equals("checkout"))
		{
			System.out.println("Inside checkout");
			checkout(request,response);
		}
		
		if(flg.equals("insert_w"))
		{
			try {
				save_to_wishlist(request,response);
			} catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		}
	}

	private void checkout(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
		HttpSession hs = request.getSession();
		
		String quantity[] = request.getParameterValues("qty_name");
		hs.setAttribute("quantity", quantity);
		List lqty = new ArrayList();
		for(int i=0;i<quantity.length;i++)
		{
			System.out.println(quantity[i]);
			
		}
		
		int loginId=Integer.parseInt(hs.getAttribute("userID").toString());
		loginVO logVo=new loginVO();
		logVo.setLogin_id(loginId);
		
		cityDAO cityDao=new cityDAO();
		List country=cityDao.search_country();
		
		UaddToCartDAO cartDao=new UaddToCartDAO();
		List user_data=cartDao.search_user_id(logVo);
		
		hs.setAttribute("udata", user_data);
		hs.setAttribute("country", country);
		response.sendRedirect("user/checkout.jsp");
		
		
		
	}

	private void save_to_wishlist(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		// TODO Auto-generated method stub
		
		System.out.println("inside save to wishlist");
		String cart_type = request.getParameter("cart_type");
		System.out.println(cart_type);
		String quantity[] = request.getParameterValues("qty_name");
		List lqty = new ArrayList();
		for(int i=0;i<quantity.length;i++)
		{
			System.out.println(quantity[i]);
			
		}
		
		
		UaddToCartMstVO mstVO = new UaddToCartMstVO();
		System.out.println("cart typw3333333333333333333333333333333"+cart_type);
		mstVO.setCart_type(cart_type);
		
		HttpSession hs = request.getSession();
		int user_id=Integer.parseInt(hs.getAttribute("userID").toString());
		System.out.println("User............"+user_id);
		
		UaddToCartDAO addCartDAO;
		addCartDAO=new UaddToCartDAO();

		int BuyerregId = -1;
		loginVO logVo=new loginVO();
		logVo.setLogin_id(user_id);
		List luser=addCartDAO.search_user_id(logVo);
		if(luser!=null && luser.size()>0)
		{
			UregistrationVO regVo=(UregistrationVO)luser.get(0);
			BuyerregId=regVo.getBuyer_user_id();
			System.out.println("Buyer user Id======================================================"+BuyerregId);
		}
		
		UregistrationVO regVo=new UregistrationVO();
		regVo.setBuyer_user_id(BuyerregId);
		//System.out.println("User login id...."+ regVo.getLoginVoObj().getLogin_id());
		
		mstVO.setBuyer_user_id(regVo);
		
				
		addCartDAO.save_to_wishlist(mstVO);
		
		System.out.println("--------------------------------------------------child Data insertion---------------------------------");
		
		
		List l= (List)hs.getAttribute("product_data_wishlist");
		
		System.out.println("LIST value::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"+l.toString());
		
		
		UaddToCartVO addCartVO[]=new UaddToCartVO[l.size()];
		
		UaddToCartVO temp=new UaddToCartVO();
		
		
		
		for(int i=0;i<l.size();i++)
		{
			
			temp=(UaddToCartVO)l.get(i);
			addCartVO[i]=new UaddToCartVO();
			addCartVO[i].setCloth_id(temp.getCloth_id());
			addCartVO[i].setColor_code(temp.getColor_code());
			addCartVO[i].setPrice(temp.getPrice());
			addCartVO[i].setProduct_name(temp.getProduct_name());
			addCartVO[i].setSize(temp.getSize());
			addCartVO[i].setQuantity(Integer.parseInt(quantity[i]));
			addCartVO[i].setDesigner_user_id(temp.getDesigner_user_id());
			addCartVO[i].setCartMstVOObj(mstVO);
			addCartDAO.save_to_cart(addCartVO[i]);
			
		}
		
		
		
		
		/*String type=mstVO.getCart_type();
		int userId=((UregistrationVO)mstVO.getBuyer_user_id()).getBuyer_user_id();
		
		System.out.println("---------------------------------------------------------------------------------------------------------------");
		System.out.println("TYPE value is ::::::::::::::"+type);
		System.out.println("USERID value is ::::::::::::::"+userId);

		System.out.println("---------------------------------------------------------------------------------------------------------------");
		
*/		
		response.sendRedirect(request.getContextPath()+"/user/add_to_wishlist.jsp");
	}

	private void save_to_cart(HttpServletRequest request,
			HttpServletResponse response) throws IOException, ParseException {
		// TODO Auto-generated method stub
		
		System.out.println("inside save to cart");
		String cart_type = request.getParameter("cart_type");
		System.out.println(cart_type);
		String quantity[] = request.getParameterValues("qty_name");
		List lqty = new ArrayList();
		for(int i=0;i<quantity.length;i++)
		{
			System.out.println(quantity[i]);
			
		}
		
		
		UaddToCartMstVO mstVO = new UaddToCartMstVO();
		
		DateFormat dateFormat = new SimpleDateFormat("yyyy/MM/dd HH:mm:ss");
		Calendar cal = Calendar.getInstance();
		mstVO.setDate(dateFormat.format(cal.getTime())); //2014/08/06 16:00:22
		
	
		
		//Date cart_date;
		/*try{
			cart_date=ft.parse(d.toString());
			mstVO.setDate(cart_date);
			
		}catch(Exception e){
			System.out.println("Date invalid:: "+e.getMessage());
		}
		*/
		System.out.println("cart typw3333333333333333333333333333333"+cart_type);
		mstVO.setCart_type(cart_type);
		HttpSession hs = request.getSession();
		int user_id=Integer.parseInt(hs.getAttribute("userID").toString());
		System.out.println("User............"+user_id);
		
		UaddToCartDAO addCartDAO;
		addCartDAO=new UaddToCartDAO();

		int BuyerregId = -1;
		loginVO logVo=new loginVO();
		logVo.setLogin_id(user_id);
		List luser=addCartDAO.search_user_id(logVo);
		if(luser!=null && luser.size()>0)
		{
			UregistrationVO regVo=(UregistrationVO)luser.get(0);
			BuyerregId=regVo.getBuyer_user_id();
			System.out.println("Buyer user Id======================================================"+BuyerregId);
		}
		
		UregistrationVO regVo=new UregistrationVO();
		regVo.setBuyer_user_id(BuyerregId);
		//System.out.println("User login id...."+ regVo.getLoginVoObj().getLogin_id());
		
		mstVO.setBuyer_user_id(regVo);
		
				
		addCartDAO.save_to_wishlist(mstVO);
		
		System.out.println("--------------------------------------------------child Data insertion---------------------------------");
		
		
		List l= (List)hs.getAttribute("product_data");
		
		System.out.println("LIST value::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::::"+l.toString());
		
		
		UaddToCartVO addCartVO[]=new UaddToCartVO[l.size()];
		
		UaddToCartVO temp=new UaddToCartVO();
		
		
		
		for(int i=0;i<l.size();i++)
		{
			
			temp=(UaddToCartVO)l.get(i);
			addCartVO[i]=new UaddToCartVO();
			addCartVO[i].setCloth_id(temp.getCloth_id());
			addCartVO[i].setColor_code(temp.getColor_code());
			addCartVO[i].setPrice(temp.getPrice());
			addCartVO[i].setProduct_name(temp.getProduct_name());
			addCartVO[i].setSize(temp.getSize());
			addCartVO[i].setPath(temp.getPath());
			addCartVO[i].setQuantity(Integer.parseInt(quantity[i]));
			addCartVO[i].setDesigner_user_id(temp.getDesigner_user_id());
			addCartVO[i].setCartMstVOObj(mstVO);
			addCartDAO.save_to_cart(addCartVO[i]);
			
		}
		
		
		
		
		/*String type=mstVO.getCart_type();
		int userId=((UregistrationVO)mstVO.getBuyer_user_id()).getBuyer_user_id();
		
		System.out.println("---------------------------------------------------------------------------------------------------------------");
		System.out.println("TYPE value is ::::::::::::::"+type);
		System.out.println("USERID value is ::::::::::::::"+userId);

		System.out.println("---------------------------------------------------------------------------------------------------------------");
		
*/		
		response.sendRedirect(request.getContextPath()+"/user/add_to_cart.jsp");
	}

}
