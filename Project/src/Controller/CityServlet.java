package Controller;

import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import VO.cityVO;
import VO.countryVO;
import VO.stateVO;

import DAO.SearchDao;
import DAO.cityDAO;
import DAO.countryDAO;

/**
 * Servlet implementation class CityServlet
 */
@WebServlet("/CityServlet")
public class CityServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public CityServlet() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flg=request.getParameter("flag");
		System.out.println("flag tested");
		if(flg.equals("load"))
		{
			search_country(request,response);
		}
		
		if(flg.equals("loadState"))
		{
			load_state(request,response);
		}
		
		if(flg.equals("loadCity"))
		{
			load_city(request,response);
		}
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		String flg=request.getParameter("flag");
		System.out.println("flag tested");
		if(flg.equals("insert"))
		{
			insert_city(request,response);
		}
	}
	
	private void insert_city(HttpServletRequest request,
			HttpServletResponse response) throws IOException {
		// TODO Auto-generated method stub
	int country_id=Integer.parseInt(request.getParameter("dropdown_country"));
	int state_id=Integer.parseInt(request.getParameter("state_id"));
	String city_name=request.getParameter("city_name");
	
	countryVO countryVO=new countryVO();
	countryVO.setCountry_id(country_id);
	
	stateVO stateVO=new stateVO();
	stateVO.setState_id(state_id);
	
	cityVO cityVO = new cityVO();
	cityVO.setCity_name(city_name);
	cityVO.setCountryObj(countryVO);
	cityVO.setStateObj(stateVO);
	
	cityDAO cityDAO=new cityDAO();
	cityDAO.insert_city(cityVO);
	
	response.sendRedirect("admin/manage_city.jsp");
	
	}

	public void search_country(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		List list=new ArrayList();
		countryDAO daoobj = new countryDAO();
		list=daoobj.search_country();
		HttpSession httpSession=request.getSession();
		httpSession.setAttribute("country", list);
		response.sendRedirect("admin/manage_city.jsp");	
	}
	
	public void load_state(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		System.out.println("load state......");
		int country_id = Integer.parseInt(request.getParameter("country_id"));
		List list=new ArrayList();
		countryVO voobj = new countryVO();
		voobj.setCountry_id(country_id);
		
		stateVO stateobj = new stateVO();
		stateobj.setCountryVO_obj(voobj);
		
		cityDAO daoobj = new cityDAO();
		list = daoobj.load_state(stateobj);
		
		HttpSession httpSession=request.getSession();
		httpSession.setAttribute("state", list);
		response.sendRedirect("admin/loadState.jsp");	

	}
	public void load_city(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException
	{
		System.out.println("load city......");
		int state_id = Integer.parseInt(request.getParameter("state_id"));
		List list=new ArrayList();
		
		stateVO stateVO=new stateVO();
		stateVO.setState_id(state_id);
		
		cityVO cityVo = new cityVO();
		cityVo.setStateObj(stateVO);
		
		cityDAO daoobj = new cityDAO();
		list = daoobj.load_city(cityVo);
		
		HttpSession httpSession=request.getSession();
		httpSession.setAttribute("city", list);
		response.sendRedirect("admin/loadCity.jsp");	

	}

	
}
