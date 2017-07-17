package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.DclothColorVO;
import VO.DclothFileUploadVO;
import VO.DclothVO;
import VO.loginVO;

public class DclothDAO {
	
	public void insert(Object v){
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
			  System.out.println("Insert");
			  Transaction tr = session.beginTransaction();
			  
			  session.save(v);
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	
	public void insert_color(Object v){
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
			  System.out.println("Insert");
			  Transaction tr = session.beginTransaction();
			  
			  session.save(v);
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	
	public List search_color(DclothColorVO voobj)
	{
		List l=null;
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  System.out.println(voobj.getClothVoObj().getCloth_id());
			 Query q=session.createQuery("from DclothColorVO where cloth_id='"+voobj.getClothVoObj().getCloth_id()+"'");
			 
			 l=q.list();
			  
			 System.out.println("cloth table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}

	
	public List search_cloth(DclothVO voobj)
	{
		List l=null;
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  System.out.println(voobj.getItem_type());
			 Query q=session.createQuery("from DclothVO where item_type='"+voobj.getItem_type()+"'");
			 
			 l=q.list();
			  
			 System.out.println("cloth table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}

	public void delete_item(Object v){
		try
		{
				System.out.println("Delete_dao");
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  session.delete(v);
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	
	public void delete_attachment(DclothFileUploadVO v){
		try
		{
				System.out.println("DeleteAttachment_dao");
				
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  //session.delete(v);
			  Query q=session.createQuery("delete from DclothFileUploadVO where cloth_id='"+v.getClothObj().getCloth_id()+"'");
			  int flag= q.executeUpdate();
			
			  tr.commit();
			 
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}
	public List search_accessories()
	{
		List l=null;
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from DclothVO where item_type='Accessories'");
			 
			 l=q.list();
			  
			 System.out.println("accessories table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	public List search_category()
	{
		List l=null;
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from categoryVO");
			 
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
	
	public List search_subcategory(int id)
	{
		List list=new ArrayList();
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  System.out.println("Configured");
			  Session session =sessionFactory.openSession();
			  System.out.println("Session created");
			  Transaction tr = session.beginTransaction();
			  System.out.println("Transaction began");
			 Query q=session.createQuery("from subcategoryVO where category_id = "+id);
			 System.out.println("Query");
			 list=q.list();
			 System.out.println("Data taken");
			 System.out.println("subcategory table size="+list.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			System.out.println("Error");
		}
		return list;
	}
	
	public List search_material()
	{
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
	
	public List search_colour()
	{
		List l=null;
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from DcolourVO");
			 
			 l=q.list();
			  
			 System.out.println("colour table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public List search_size()
	{
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
	
	public List search_sleeve()
	{
		List l=null;
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from DSleevesVO");
			 
			 l=q.list();
			  
			 System.out.println("sleeve table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public List search_neck()
	{
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

	public List search_category_ajax(String id) {
		List list=new ArrayList();
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  System.out.println("Configured");
			  Session session =sessionFactory.openSession();
			  System.out.println("Session created");
			  Transaction tr = session.beginTransaction();
			  System.out.println("Transaction began");
			 Query q=session.createQuery("from categoryVO where item_type = 'Cloths'");
			 System.out.println("Query");
			 list=q.list();
			 System.out.println("Data taken");
			 System.out.println("subcategory table size="+list.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			System.out.println("Error");
		}
		return list;
	}

	public List search_category_ac_ajax(String id) {
		List list=new ArrayList();
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  System.out.println("Configured");
			  Session session =sessionFactory.openSession();
			  System.out.println("Session created");
			  Transaction tr = session.beginTransaction();
			  System.out.println("Transaction began");
			 Query q=session.createQuery("from categoryVO where item_type = 'Accessories'");
			 System.out.println("Query");
			 list=q.list();
			 System.out.println("Data taken");
			 System.out.println("subcategory table size="+list.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			System.out.println("Error");
		}
		return list;
	}

	public List search_designer_id(loginVO logvo) {
		List list=new ArrayList();
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  System.out.println("Configured");
			  Session session =sessionFactory.openSession();
			  System.out.println("Session created");
			  Transaction tr = session.beginTransaction();
			  System.out.println("Transaction began");
			 Query q=session.createQuery("from registrationVO where login_id = '"+logvo.getLogin_id()+"'");
			 System.out.println("Query");
			 list=q.list();
			 System.out.println("Data taken");
			 System.out.println("designer reg table size="+list.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			System.out.println("Error");
		}
		return list;
	}

	
	
}
