<title>
processing....</title>
<%@page import="canteen.dbconnect"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="s" class="canteen.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%

String chk=request.getParameter("valid");
if(chk==null){
out.println("<script>history.back();</script>");
}
else
{
String id=request.getParameter("id");
String a=request.getParameter("oc");
String b=request.getParameter("ud");
String d=request.getParameter("dd");
String e=request.getParameter("qt");
String f=request.getParameter("od");
String g=request.getParameter("ot");
String h=request.getParameter("st");


int z=s.stm.executeUpdate("update order_details set or_code='"+a+"',u_id='"+b+"',d_id='"+d+"',or_quantity='"+e+"',or_date='"+f+"',u_arriving_time='"+g+"',or_status='"+h+"' where or_id='"+id+"'");
out.println("<script>alert('Updated');document.location='order_view.jsp';</script>");
			
}
%>
 