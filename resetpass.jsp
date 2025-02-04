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
	String un=request.getParameter("un");
	String np=request.getParameter("np");
	String cp=request.getParameter("cp");
		
		if(np.equals(cp))
		{
			int z=s.stm.executeUpdate("update login set password='"+np+"' where username='"+un+"'");
			out.println("<script>alert('Password Reset Successfully');document.location='index.jsp'</script>");

		}
		else
		{
			out.println("<script>alert('Confirm Password Did Not Match');history.back();</script>");
			
		}
}
%>