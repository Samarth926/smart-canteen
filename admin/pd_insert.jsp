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

String a=request.getParameter("ac");
String b=request.getParameter("ui");
String d=request.getParameter("up");
String e=request.getParameter("am");


				int z=s.stm.executeUpdate("insert into payment_details values(null,'"+a+"','"+b+"','"+d+"','"+e+"')");
				out.println("<script>alert('Inserted');document.location='pd_view.jsp';</script>");
			


}
%>
 