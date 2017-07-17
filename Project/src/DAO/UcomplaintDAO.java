package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class UcomplaintDAO {
	
	public void insert_complaint(Object v){
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  session.save(v);
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	
	public List search_complaint()
	{
		List l=null;
		
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from UcomplaintVO where status='Pending'");
			 
			 l=q.list();
			  
			 System.out.println("UcomplaintVO table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public List search_user_email(int id)
	{
	List l=null;
		
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from loginVO where login_id="+id);
			 
			 l=q.list();
			  
			 System.out.println("UcomplaintVO table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}

	public void change_status(int comp_id) {
		// TODO Auto-generated method stub
		List l=null;
		
		try
		{
				System.out.println("Inside update complaint mst.....");
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 /*Query q=session.createQuery("from UaddToCartVO as dtl, UaddToCartMstVO as mst where dtl.cartMstVOObj.cart_mst_id=mst.cart_mst_id AND mst.cart_type='add_to_cart' AND mst.buyer_user_id='"+buyer_user_id+"'");*/
			  
			  Query q=session.createQuery("UPDATE UcomplaintVO SET status ='Replied' where complaint_id="+comp_id );
			 
			 int i=q.executeUpdate(); 
			 System.out.println("UcomplaintVO update mst="+i);
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		
	}
}
