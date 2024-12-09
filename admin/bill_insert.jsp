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
String a=request.getParameter("oi");
String b=request.getParameter("ba");
String c=request.getParameter("bd");
String d=request.getParameter("bt");
int z=s.stm.executeUpdate("insert into bill values(null,'"+a+"','"+b+"','"+c+"','"+d+"')");
out.println("<script>alert('Inserted');document.location='bill_view.jsp'</script>");
}
%>
