package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

import VO.cityVO;
import VO.countryVO;
import VO.stateVO;

public class cityDAO {
	
	public List search_country()
	{
		List l=null;
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from countryVO");
			 
			 l=q.list();
			  
			 System.out.println("country table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	public List load_state(stateVO v)
	{
		List l=null;
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from stateVO where country_id = "+v.getCountryVO_obj().getCountry_id());
			 
			 l=q.list();
			  
			 System.out.println("state table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}

	public void insert_city(cityVO cityVO) {
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  session.save(cityVO);
			  
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
	}

	public List load_city(cityVO cityVo) {
		List l=null;
	
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from cityVO where stateObj.state_id = "+cityVo.getStateObj().getState_id());
			 
			 l=q.list();
			  
			 System.out.println("city table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
}
