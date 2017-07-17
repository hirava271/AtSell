<%@page import="java.util.ArrayList"%>
<%@page import="DAO.codeDAO"%>
<%@page import="VO.UaddToCartMstVO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.io.BufferedWriter"%>
<%@page import="java.io.FileWriter"%>
<%@taglib prefix="c" uri="http://java.sun.com/jstl/core_rt"%>
<%@taglib prefix="function" uri="http://java.sun.com/jsp/jstl/functions"%>


<%
codeDAO cDao = new codeDAO();
List t_addtocart=cDao.total_addtocart();
int total_addtocart=(Integer.parseInt(t_addtocart.get(0).toString()));

List t_addtowish=cDao.total_addtowishlist();
int total_addtowish=(Integer.parseInt(t_addtowish.get(0).toString()));

List t_checkout=cDao.total_checkout();
int total_checkout=(Integer.parseInt(t_checkout.get(0).toString()));

List ls1 = new ArrayList();
Object [] obj1 = new Object[2];
obj1[0]="Add to cart";
obj1[1]=total_addtocart;
ls1.add(obj1); 
 obj1 = new Object[2];
obj1[0]="Add to wish-list";
obj1[1]=total_addtowish;
ls1.add(obj1);
obj1 = new Object[2];
obj1[0]="Sold-out";
obj1[1]=total_checkout;
ls1.add(obj1);
session.setAttribute("lspichart",ls1);

String filePath = getServletContext().getRealPath(request.getServletPath());
int path = filePath.lastIndexOf('\\');
String path1= filePath.substring(0, path); //+"\\doc\\";


FileWriter f=new FileWriter(path1+"\\h.json");
BufferedWriter b=new BufferedWriter(f);

b.write("{\"JSChart\" : {\"datasets\" : [{\"type\" : \"pie\",\"data\" : [");

List ls =(List)session.getAttribute("lspichart");

System.out.println("List size is : "+ls.size());

int i=0;
for (Iterator iterator = ls.iterator(); iterator.hasNext();) {
	Object[] type = (Object[]) iterator.next();
	String str ="{\"unit\":\""+type[0]+"\",\"value\":\""+type[1]+"\"}";
	
	b.write(str);
	i++;	
	if(i<ls.size()){
		b.write(",");
	}

	
	
	
}

b.write("] } ] } }");

b.close();

%>