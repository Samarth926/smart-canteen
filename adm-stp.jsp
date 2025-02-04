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
	String un=request.getParameter("uname");
	String sp=request.getParameter("spass");
	String cp=request.getParameter("cpass");
	if(sp.equals(cp))
	{
	
			int z=s.stm.executeUpdate("insert into login values('"+un+"','"+sp+"','admin','-','-','active')");
			out.println("<script>alert('Registerd Successfully');document.location='index.jsp'</script>");
	}
	else
	{
		out.println("<script>alert('Confirm Password Does not Matched...');document.location='index.jsp'</script>");
	}
}
%>
