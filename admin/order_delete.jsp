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
else{


int z=s.stm.executeUpdate("delete from order_details where or_id='"+id+"'");
out.println("<script>alert('Deleted');document.location='order_view.jsp'</script>");
}
%>