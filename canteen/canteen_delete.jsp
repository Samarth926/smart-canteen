<%@page import="java.sql.*"%>
<%@page import="canteen.dbconnect"%>
<jsp:useBean id="s" class="canteen.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("id");
if(a==null)
{
out.println("<script>history.back();</script>");
}
else{


int z=s.stm.executeUpdate("delete from canteen_details where ct_id='"+a+"'");
out.println("<script>alert('Deleted');document.location='canteen_view.jsp'</script>");
}


%>