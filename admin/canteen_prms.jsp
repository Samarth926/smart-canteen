<title>Processing...</title>
<%@page import="java.sql.*"%>
<%@page import="canteen.dbconnect"%>
<jsp:useBean id="s" class="canteen.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String un=request.getParameter("un");
String pr=request.getParameter("pr");
if(un==null)
{
out.println("<script>history.back();</script>");
}
else
{
	if(pr.equals("acpt"))
	{
		int z = s.stm.executeUpdate("update login set status='active' where username='"+un+"'");
		out.println("<script>alert('Request Accepted Successfully');document.location='canteen_view.jsp';</script>");
	}
	else if(pr.equals("rjct"))
	{
		int z2 = s.stm.executeUpdate("update login set status='rejected' where username='"+un+"'");
		out.println("<script>alert('Request Rejected Successfully');document.location='canteen_view.jsp';</script>");
	}
	else
	{
		out.println("<script>history.back();</script>");
	}
}
%>
