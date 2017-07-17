package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.subcategoryVO;

public class stateDAO {
	
	public void insert(Object v){
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
	
	public List edit(subcategoryVO v) {

		List l=null;
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery(" from subcategoryVO where subcategory_id=" +v.getSubcategory_id());
			 
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
	
	public void save(Object v){
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

	public List search_state()
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
			 Query q=session.createQuery("from stateVO");
			 System.out.println("Query");
			 list=q.list();
			 System.out.println("Data taken");
			 System.out.println("state table size="+list.size());
			 
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
