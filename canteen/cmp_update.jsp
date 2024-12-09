 <%@page import="java.sql.*"%>
<%@page import="canteen.dbconnect"%>
<jsp:useBean id="s" class="canteen.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String id=request.getParameter("id");
String chk=request.getParameter("valid");
if(chk==null)
{
out.println("<script>history.back();</script>");
}
else  
{
String a=request.getParameter("ud");
String b=request.getParameter("ci");
String c=request.getParameter("cm");
String d=request.getParameter("cd");
int z=s.stm.executeUpdate("update complaints set u_id='"+a+"',ct_id='"+b+"',complaints='"+c+"',cm_date='"+d+"' where cm_id='"+id+"'");
out.println("<script>alert('Updated');document.location='cmp_view.jsp'</script>");
}
%>
