<title>Procesing...</title>
<%@page import="java.sql.*"%>
<%@page import="canteen.dbconnect"%>
<jsp:useBean id="s" class="canteen.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String chk=request.getParameter("valid");
if(chk==null)
{
out.println("<script>history.back();</script>");
}
else  
{
	String op=request.getParameter("op");
	String np=request.getParameter("np");
	String cp=request.getParameter("cp");
	String un=session.getAttribute("uname").toString();
	ResultSet rs=s.stm.executeQuery("select * from login where username='"+un+"' and password='"+op+"'");
	if(rs.next())
	{
		if(np.equals(cp))
		{
			int z=s.stm.executeUpdate("update login set password='"+np+"' where username='"+un+"'");
			out.println("<script>alert('Password Updated');document.location='home.jsp'</script>");

		}
		else
		{
			out.println("<script>alert('Password Did Not Match');document.location='pass_change.jsp'</script>");
			
		}
	}
	else
	{
		out.println("<script>alert('Incurrect Old Password');document.location='pass_change.jsp'</script>");
			
	}
}
%>