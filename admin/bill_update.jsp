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
String a=request.getParameter("oi");
String b=request.getParameter("ba");
String c=request.getParameter("bd");
String d=request.getParameter("bt");
int z=s.stm.executeUpdate("update bill set or_id='"+a+"',bill_amount='"+b+"',bill_date='"+c+"',bill_type='"+d+"' where bl_id='"+id+"'");
out.println("<script>alert('Updated');document.location='bill_view.jsp'</script>");
}
%>
