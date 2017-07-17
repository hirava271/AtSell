package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.packageFileUploadVO;
import VO.packageVO;
import VO.subcategoryVO;

public class packageDAO {
	

		public void insert_package(Object v){
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

		public List search_package()
		{
			List l=new ArrayList();
		
			try
			{
				  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
				  
				  Session session =sessionFactory.openSession();
			   
				  Transaction tr = session.beginTransaction();
				  System.out.println("B4 query");
				  
				 Query q=session.createQuery("from packageVO");
				 
				 l=q.list();
				  
				 System.out.println("package table size="+l.size());
				 
				  tr.commit();
			}
			catch(Exception ex)
			{
				ex.printStackTrace();
			}
			return l;
		}
	

	public List edit_package(packageVO v) {

		List l=null;
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery(" from packageVO where package_id=" +v.getPackage_id());
			 
			 l=q.list();
			  
			 System.out.println("package table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	public List edit_packageAttachment(packageFileUploadVO v) {

		List l=null;
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery(" from packageFileUploadVO where package_id=" +v.getPackageObj().getPackage_id());
			 
			 l=q.list();
			  
			 System.out.println("package table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}

	public void save_package(Object v){
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
	
	public void delete_package(Object v){
		try
		{
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
}

