package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class manageDeliveryDAO {

	public List search_delivery() {
		List l=null;
		
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from UaddToCartMstVO as mst, UaddToCartVO as dtl where mst.cart_mst_id=dtl.cartMstVOObj.cart_mst_id");
			 
			 l=q.list();
			  
			 System.out.println("Delivery table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public List search_shipping() {
		List l=null;
		
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from UaddToCartMstVO as mst, UaddToCartVO as dtl where mst.cart_mst_id=dtl.cartMstVOObj.cart_mst_id AND mst.cart_type='Checkout'");
			 
			 l=q.list();
			  
			 System.out.println("Shipping table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	public void change_status(int i) {
		List l=null;
		
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("UPDATE UaddToCartMstVO SET cart_type='Delivered' where cart_mst_id='"+i+"'");
			 
			 int j = q.executeUpdate();
			  
			 System.out.println("Delivery update table size="+j);
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	

}
