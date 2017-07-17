package Controller;

import java.io.IOException;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import DAO.UaddToCartDAO;
import DAO.UcheckoutDAO;
import VO.UaddToCartMstVO;
import VO.UaddToCartVO;
import VO.UregistrationVO;
import VO.cityVO;
import VO.countryVO;
import VO.loginVO;
import VO.stateVO;

/**
 * Servlet implementation class UCheckoutServlet
 */
@WebServlet("/UCheckoutServlet")
public class UCheckoutServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public UCheckoutServlet() {
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
			insert(request,response);
		}
	}

	private void insert(HttpServletRequest request, HttpServletResponse response) {
		// TODO Auto-generated method stub
		
		HttpSession hs=request.getSession();
		
		String address=request.getParameter("address");
		int country_id=Integer.parseInt(request.getParameter("dropdown_country"));
		int state_id=Integer.parseInt(request.getParameter("state_id"));
		int city_id=Integer.parseInt(request.getParameter("city_id"));
		Long zip_code=Long.parseLong(request.getParameter("postcode"));
		Long mob_num=Long.parseLong(request.getParameter("phone_mobile"));
		String info=request.getParameter("info");
		
		countryVO cvo=new countryVO();
		cvo.setCountry_id(country_id);
		
		stateVO stateVo=new stateVO();
		stateVo.setState_id(state_id);
		
		cityVO cityVo=new cityVO();
		cityVo.setCity_id(city_id);
		
		int user_id=Integer.parseInt(hs.getAttribute("userID").toString());
		loginVO logVo=new loginVO();
		logVo.setLogin_id(user_id);
		
		UaddToCartDAO daoObj=new UaddToCartDAO();
		List luser=daoObj.search_user_id(logVo);
		UregistrationVO regVo=null;
		if(luser!=null && luser.size()>0)
		{
		regVo=(UregistrationVO)luser.get(0);
		}
		UaddToCartMstVO cartMstVo=new UaddToCartMstVO();
		cartMstVo.setCountryVO(cvo);
		cartMstVo.setStateVO(stateVo);
		cartMstVo.setCityVO(cityVo);
		cartMstVo.setShipping_address(address);
		cartMstVo.setContact_no(mob_num);
		cartMstVo.setZip_code((long) zip_code);
		cartMstVo.setAdditional_info(info);
		cartMstVo.setBuyer_user_id(regVo);
		cartMstVo.setCart_type("Checkout");
		
		List cupdate=(List)hs.getAttribute("product_data_db");
		List insert=(List)hs.getAttribute("product_data");
		System.out.println("cuuuuuuppppppdddddddttttttttt  sssssssssiiiiiiizzzzzzzzzzzeeeeeeeeee........."+cupdate.size());
//		System.out.println("Insserttttt  sssssssssiiiiiiizzzzzzzzzzzeeeeeeeeee........."+insert.size());
		String qty[]=(String[])hs.getAttribute("quantity");
		if(cupdate.size()==0 && insert.size()>0)
		{
			System.out.println("cupdate==null && insert.size()>0");
			UcheckoutDAO checkDao= new UcheckoutDAO();
			checkDao.insert_mst_data(cartMstVo);
			for(int i=0;i<insert.size();i++)
			{
				
				UaddToCartVO temp=(UaddToCartVO)insert.get(i);
				temp.setQuantity(Integer.parseInt(qty[i]));
				temp.setCartMstVOObj(cartMstVo);
				daoObj.save_to_cart(temp);
			}
		}
		if(cupdate!=null && cupdate.size()>0)
		{
			int cart_mst_id=Integer.parseInt(hs.getAttribute("cart_mst_id").toString());
			System.out.println("cupdate!=null && cupdate.size()>0");
			UcheckoutDAO checkDao= new UcheckoutDAO();
			daoObj.update_cartmst_data(cartMstVo);
			
			for(int i=0;i<cupdate.size();i++)
			{
				cartMstVo.setCart_mst_id(cart_mst_id);
				UaddToCartVO temp=(UaddToCartVO)cupdate.get(i);
				temp.setCartMstVOObj(cartMstVo);
				daoObj.update_cartdtl_data(temp);
			}
			if(insert!=null && insert.size()>0)
			{
				System.out.println("insert.size()>0 ");
				for(int i=0;i<insert.size();i++)
				{
					cartMstVo.setCart_mst_id(cart_mst_id);
					System.out.println("Cart msssssssstttttttttt iiiiiiiiidddddd"+cartMstVo.getCart_mst_id());
					UaddToCartVO temp=(UaddToCartVO)insert.get(i);
					temp.setCartMstVOObj(cartMstVo);
					daoObj.save_to_cart(temp);
				}
				
			}
		}
		
		
	}

}
