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
else{

String a=request.getParameter("oc");
String b=request.getParameter("ud");
String d=request.getParameter("dd");
String e=request.getParameter("qt");
String f=request.getParameter("od");
String g=request.getParameter("ot");
String h=request.getParameter("st");


				int z=s.stm.executeUpdate("insert into order_details values(null,'"+a+"','"+b+"','"+d+"','"+e+"','"+f+"','"+g+"','"+h+"')");
				out.println("<script>alert('Inserted');document.location='order_view.jsp';</script>");
			


}
%>
 