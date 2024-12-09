 <%@page import="java.sql.*"%>
<%@page import="canteen.dbconnect"%>
<jsp:useBean id="s" class="canteen.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String id=request.getParameter("id");
if(id==null)
{
out.println("<script>history.back();</script>");
}
else  
{
out.println("<script>confirm('Are you sure?');</script>");
int z=s.stm.executeUpdate("delete from complaints  where cm_id='"+id+"'");
out.println("<script>alert('Deleted');document.location='cmp_view.jsp'</script>");
}
%>
