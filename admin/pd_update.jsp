<title>
processing....</title>
<%@page import="canteen.dbconnect"%>
<%@page import="java.sql.*"%>
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
String id=request.getParameter("id");
String a=request.getParameter("ac");
String b=request.getParameter("ui");
String d=request.getParameter("up");
String e=request.getParameter("am");
int z=s.stm.executeUpdate("update payment_details set ac_holder='"+a+"',upi_id='"+b+"',upi_pin='"+d+"',amount='"+e+"' where py_id='"+id+"'");
out.println("<script>alert('Updated');document.location='pd_view.jsp';</script>");
}
%>
 