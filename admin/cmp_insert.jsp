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
String a=request.getParameter("ud");
String b=request.getParameter("ci");
String c=request.getParameter("cm");
String d=request.getParameter("cd");
int z=s.stm.executeUpdate("insert into complaints values(null,'"+a+"','"+b+"','"+c+"','"+d+"')");
out.println("<script>alert('Inserted');document.location='cmp_view.jsp'</script>");
}
%>
