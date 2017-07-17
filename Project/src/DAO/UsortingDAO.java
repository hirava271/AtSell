package DAO;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.Transaction;
import org.hibernate.cfg.Configuration;

public class UsortingDAO {
	
	public List sort_designer(int id)
	{
		// TODO Auto-generated method stub
		List l=null;
		
		try
		{
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			 Query q=session.createQuery("from DcolorFileVO as dcfu RIGHT OUTER JOIN dcfu.clothObj as cl where cl.regVoObj.designer_user_id = '"+id+"'");
			 
			 l=q.list();
			  
			 System.out.println("Designer sorting table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}

	public List sorting(String str_designer, String str_color,
			String str_material, String str_neck, String str_sleeve, float uRange, float lRange) {
		// TODO Auto-generated method stub
		List l=null;
		
		try
		{
				
			  SessionFactory sessionFactory = new Configuration().configure().buildSessionFactory();
			  
			  Session session =sessionFactory.openSession();
		   
			  Transaction tr = session.beginTransaction();
			  
			  String q="FROM DclothVO AS dm, DcolorFileVO AS dfm WHERE dm.cloth_id = dfm.clothObj.cloth_id ";
			  
			  String p="";
			  if(str_designer!=null && str_designer!="" && str_designer.length()>0)
			  {
				  System.out.println("Inside designer...");
				  q=q+" AND dm.regVoObj.designer_user_id IN (#designer#)";
				  q=q.replaceAll("#designer#", str_designer.substring(1));
			  }
			  if(str_color!=null && str_color!="" && str_color.length()>0)
			  {
				  q=q+" AND dfm.color_code IN (#color#)";
				  q=q.replaceAll("#color#", str_color.substring(1));
			  }
			  if(str_material!=null && str_material!="" && str_material.length()>0)
			  {
				  q=q+" AND dm.material.material_id IN (#material#)";
				  q=q.replaceAll("#material#", str_material.substring(1));
			  }
			  if(str_neck!=null && str_neck!="" && str_neck.length()>0)
			  {
				  q=q+" AND dm.neck.neck_id IN (#neck#)";
				  q=q.replaceAll("#neck#", str_neck.substring(1));
			  }
			  if(str_sleeve!=null && str_sleeve!="" && str_sleeve.length()>0)
			  {
				  q=q+" AND dm.sleeve.sleeves_id IN (#sleeve#)";
				  q=q.replaceAll("#sleeve#", str_sleeve.substring(1));
			  }
			  if(uRange != -1 && lRange != -1)
			  {
				  q=q+" AND (dm.price BETWEEN '"+lRange+"' AND '"+uRange+"')";
			  }
			 // q=q.replaceAll("#color#", str_color.substring(1));
			  System.out.println(q);
			 Query query=session.createQuery(q);
			 
			 l=query.list();
			  
			 System.out.println("Designer sorting table size="+l.size());
			 
			  tr.commit();
		}
		catch(Exception ex)
		{
			ex.printStackTrace();
		}
		return l;
	}
	
	
}
