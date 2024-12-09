<title>
processing....</title>
<%@page import="canteen.dbconnect"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="s" class="canteen.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String chk=request.getParameter("valid");
if(chk==null){
out.println("<script>history.back();</script>");
}
else{

String a=request.getParameter("cn");
String b=request.getParameter("ct");
String d=request.getParameter("on");
String e=request.getParameter("el");
String f=request.getParameter("mn");
String g=request.getParameter("ad");
String h=request.getParameter("st");
//String j=request.getParameter("pho");
//String k=request.getParameter("pht");

ResultSet p=s.stm.executeQuery("select * from canteen_details  where ct_email='"+e+"'");

if(p.next())
{
 out.println("<script>alert('Email Alredy Exest');history.back();</script>");
 }
else{ 
		ResultSet i=s.stm.executeQuery("select * from canteen_details  where ct_mobile='"+f+"'");
			if(i.next())
			{

				out.println("<script>alert('Mobile Alredy Exest');history.back();</script>");
			}
			else
			{
				int z=s.stm.executeUpdate("insert into canteen_details values(null,'"+a+"','"+b+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"','noimg.png','noimg.png')");
				out.println("<script>alert('Inserted');document.location='canteen_view.jsp';</script>");
			}

}
}
%>
 