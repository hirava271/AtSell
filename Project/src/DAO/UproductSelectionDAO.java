package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.DclothFileUploadVO;
import VO.DclothVO;
import VO.registrationVO;

public class UproductSelectionDAO {

	public List search_product_detail(DclothVO voobj) {
		// TODO Auto-generated method stub
		List l=null;
		
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from DclothVO where cloth_id = '"+voobj.getCloth_id()+"'");
			 
			 l=q.list();
			  
			 System.out.println("product table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public List search_product_images(DclothFileUploadVO voobj) {
		// TODO Auto-generated method stub
		List l=null;
		
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from DclothFileUploadVO where cloth_id = '"+voobj.getClothObj().getCloth_id()+"'");
			 
			 l=q.list();
			  
			 System.out.println("image table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}

	public List search_size() {
		// TODO Auto-generated method stub
		List l=null;
		
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from DsizeVO");
			 
			 l=q.list();
			  
			 System.out.println("size table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}

	public List search_designer(registrationVO regVo) {
		// TODO Auto-generated method stub
		List l=null;
		
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from registrationVO where designer_user_id = '"+regVo.getDesigner_user_id()+"'");
			 
			 l=q.list();
			  
			 System.out.println("dname table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	

}
