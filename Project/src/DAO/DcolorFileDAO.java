package DAO;

import java.util.ArrayList;
import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.DclothVO;
import VO.DcolorFileVO;

public class DcolorFileDAO {

	public List search_product_ajax(int id) {
		List list=new ArrayList();
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  System.out.println("Configured");
			  Session session =sessionFactory.openSession();
			  System.out.println("Session created");
			  Transaction tr = session.beginTransaction();
			  System.out.println("Transaction began");
			 Query q=session.createQuery("from DclothVO where subcategory_id="+id);
			 System.out.println("Query");
			 list=q.list();
			 System.out.println("Data taken");
			 System.out.println("Product table size="+list.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
			System.out.println("Error");
		}
		return list;
	}

	public void insert(DcolorFileVO clothfileVO) {
		try
		{
				System.out.println("Insert method..........");
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  session.save(clothfileVO);
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}

	public List search_color(DcolorFileVO vo) {
		List list=new ArrayList();
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
			  
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from DcolorFileVO where cloth_id='"+vo.getClothObj().getCloth_id()+"'");
			 System.out.println("Query");
			 list=q.list();
			 System.out.println("Data taken");
			 System.out.println("Color table size="+list.size());
			 
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
