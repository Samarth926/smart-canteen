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
	String ps=request.getParameter("pass");

	ResultSet rs=s.stm.executeQuery("select * from login where username='"+un+"'");
	if(rs.next())
	{
		ResultSet rs1=s.stm.executeQuery("select * from login where username='"+un+"' and password='"+ps+"'");
		if(rs1.next())
		{
			ResultSet rs2=s.stm.executeQuery("select * from login where username='"+un+"' and password='"+ps+"' and status='active'");
			if(rs2.next())
			{
				String utp=rs2.getString("u_type");
				session.setAttribute("uname",un);
				session.setAttribute("utype",utp);
				if(utp.equals("admin"))
				{
					response.sendRedirect("admin/home.jsp");
				}
				else if(utp.equals("canteen"))
				{
					response.sendRedirect("canteen/home.jsp");
				}
				else if(utp.equals("user"))
				{
					response.sendRedirect("user/home.jsp");
				}
			}
			else
			{
				out.println("<script>alert('In-active Account. Try Letter');document.location='index.jsp'</script>");
			}
		}
		else
		{
			out.println("<script>alert('Invalid OR Wrong Password');document.location='index.jsp'</script>");
		}
	}
	else
	{
		out.println("<script>alert('Invalid Username OR Username Not Found');document.location='index.jsp'</script>");
	}
}
%>
