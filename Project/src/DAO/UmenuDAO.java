package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.DclothVO;

public class UmenuDAO {
	
	public List search_cloth_category()
	{
		List l=null;
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from categoryVO where item_type='Cloths'");
			 
			 l=q.list();
			  
			 System.out.println("category table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public List sorting_designer()
	{
		List l=null;
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from registrationVO");
			 
			 l=q.list();
			  
			 System.out.println("designer_name table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public List sorting_color()
	{
		List l=null;
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 /*Query q=session.createQuery("select distinct c.color_code, c.path from DcolorFileVO as c");*/
			  Query q=session.createQuery("from DcolorFileVO");
			 
			 l=q.list();
			  
			 System.out.println("color table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)                                              
		{
			ex.printStackTrace();
		}
		return l;
	}

	public List search_cloth_subcategory() {
		List l=null;
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from subcategoryVO where catVO.item_type='Cloths'");
			 
			 l=q.list();
			  
			 System.out.println("category table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public List search_cloth_fileUpload() {
		List l=null;
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			/* Query q=session.createQuery("from DclothFileUploadVO as d RIGHT OUTER JOIN d.clothObj");*/
			  Query q=session.createQuery("from DcolorFileVO as dcfu RIGHT OUTER JOIN dcfu.clothObj ");
			 l=q.list();
			  
			 System.out.println("Dcloth_attachment table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public List search_accessories_category()
	{
		List l=null;
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from categoryVO where item_type='Accessories'");
			 
			 l=q.list();
			  
			 System.out.println("category table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}

	public List search_accessories_subcategory() {
		List l=null;
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from subcategoryVO where catVO.item_type='Accessories'");
			 
			 l=q.list();
			  
			 System.out.println("subcategory table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}

	public List search_product(DclothVO voobj) {
		// TODO Auto-generated method stub
		List l=null;
		
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from DcolorFileVO as dcfu RIGHT OUTER JOIN dcfu.clothObj as cl where cl.subcatVO.subcategory_id = '"+voobj.getSubcatVO().getSubcategory_id()+"'");
			 
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

	public List sorting_material() {
		// TODO Auto-generated method stub
		List l=null;
		
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from DmaterialVO");
			 
			 l=q.list();
			  
			 System.out.println("material table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}

	public List sorting_neck() {
		// TODO Auto-generated method stub
		List l=null;
		
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from DneckVO");
			 
			 l=q.list();
			  
			 System.out.println("neck table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}

	public List sorting_sleeve() {
		// TODO Auto-generated method stub
		List l=null;
		
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from DSleevesVO");
			 
			 l=q.list();
			  
			 System.out.println("sleeves table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}


}
