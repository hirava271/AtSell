package DAO;
import org.hibernate.Query;

import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration; 
import VO.categoryVO;
import java.util.*;
public class SearchDao {

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
		
	public List search_subcategory()
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
			 Query q=session.createQuery("from subcategoryVO");
			 System.out.println("Query");
			 list=q.list();
			 System.out.println("Data taken");
			 System.out.println("category table size="+list.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			System.out.println("Error");
		}
		return list;
	}

		public List edit(categoryVO v) {

			List l=null;
		
			try
			{
				  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
				  
				  Session session =sessionFactory.openSession();
			   
				  Transaction tr = session.beginTransaction();
				  
				 Query q=session.createQuery(" from categoryVO where category_id=" +v.getCategory_id());
				 
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
		
		public void edit_category(Object v){
			try
			{
				  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
				  
				  Session session =sessionFactory.openSession();
			   
				  Transaction tr = session.beginTransaction();
				  
				  session.saveOrUpdate(v);
				  
				  tr.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
		}
		
		
}
