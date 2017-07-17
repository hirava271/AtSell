package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class manageUserDAO {
	public List search_user()
	{
		List l=null;
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from UregistrationVO");
			 
			 l=q.list();
			  
			 System.out.println("UregistrationVO table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}


}
