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
String a=request.getParameter("nf");
String b=request.getParameter("nt");
String c=request.getParameter("n");
String d=request.getParameter("sd");
String e=request.getParameter("st");
int z=s.stm.executeUpdate("insert into notice values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')");
out.println("<script>alert('Inserted');document.location='notice_view.jsp'</script>");
}
%>
