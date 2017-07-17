package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.DclothVO;
import VO.UaddToCartMstVO;
import VO.UaddToCartVO;
import VO.loginVO;

public class UaddToCartDAO {

	public void save_to_cart(UaddToCartVO uaddToCartVO) {
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  session.save(uaddToCartVO);
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}

	public void save_to_wishlist(UaddToCartMstVO mstVO) {
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  System.out.println("save_to_wishlist DAO INVOCKED----------------------------------------------------Query");
			  session.save(mstVO);
			  System.out.println("insert WISH_List-------------------------------------------------------");
			  
			  
			  tr.commit();
			  
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	
	public List search_user_id(loginVO voobj) {
		// TODO Auto-generated method stub
		List l=null;
		
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from UregistrationVO where login_id = '"+voobj.getLogin_id()+"'");
			 
			 l=q.list();
			  
			 System.out.println("user reg table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}

	public List get_wishlist_detail(int buyer_user_id) {
		// TODO Auto-generated method stub
		List l=null;
		
		try
		{
				System.out.println("Inside get wishlist dtl.....");
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from UaddToCartVO as dtl, UaddToCartMstVO as mst where dtl.cartMstVOObj.cart_mst_id=mst.cart_mst_id AND mst.cart_type='add_to_wishlist' AND mst.buyer_user_id='"+buyer_user_id+"'");
			 
			 l=q.list();
			  
			 System.out.println("Wish list dtl table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}

	public List get_cart_detail(int buyer_user_id) {
		// TODO Auto-generated method stub
		List l=null;
		
		try
		{
				System.out.println("Inside get cart dtl.....");
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 /*Query q=session.createQuery("from UaddToCartVO as dtl, UaddToCartMstVO as mst where dtl.cartMstVOObj.cart_mst_id=mst.cart_mst_id AND mst.cart_type='add_to_cart' AND mst.buyer_user_id='"+buyer_user_id+"'");*/
			  
			  Query q=session.createQuery("from UaddToCartVO where cartMstVOObj.cart_type='add_to_cart' AND cartMstVOObj.buyer_user_id='"+buyer_user_id+"'");
			 
			 l=q.list();
			  
			 System.out.println("Cart list dtl table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}

	public void update_cartmst_data(UaddToCartMstVO temp) {
		// TODO Auto-generated method stub
		List l=null;
		
		try
		{
				System.out.println("Inside update cart mst.....");
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 /*Query q=session.createQuery("from UaddToCartVO as dtl, UaddToCartMstVO as mst where dtl.cartMstVOObj.cart_mst_id=mst.cart_mst_id AND mst.cart_type='add_to_cart' AND mst.buyer_user_id='"+buyer_user_id+"'");*/
			  
			  Query q=session.createQuery("UPDATE UaddToCartMstVO as c SET c.cart_type='"+temp.getCart_type()+"',c.shipping_address='"+temp.getShipping_address()+"',c.countryVO.country_id='"+temp.getCountryVO().getCountry_id()+"',c.stateVO.state_id='"+temp.getStateVO().getState_id()+"',c.cityVO.city_id='"+temp.getCityVO().getCity_id()+"',c.contact_no='"+temp.getContact_no()+"',c.zip_code='"+temp.getZip_code()+"',c.additional_info='"+temp.getAdditional_info()+"' where c.buyer_user_id.buyer_user_id='"+temp.getBuyer_user_id().getBuyer_user_id()+"' AND c.cart_type='add_to_cart'" );
			 
			 int i=q.executeUpdate(); 
			 System.out.println("Cart update mst="+i);
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
	}
	
	public void update_cartdtl_data(UaddToCartVO temp) {
		try
		{
				System.out.println("cart dtl update>>>>>>>>>>>>>>>"+temp.getCart_id());
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  session.saveOrUpdate(temp);
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}


}
