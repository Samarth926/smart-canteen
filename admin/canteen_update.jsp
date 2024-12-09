<title>
processing....</title>
<%@page import="canteen.dbconnect"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="s" class="canteen.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String id=request.getParameter("id");
String chk=request.getParameter("valid");
if(chk==null){
out.println("<script>history.back();</script>");
}
else{

String a=request.getParameter("cn");
String b=request.getParameter("ct");
String d=request.getParameter("on");
String e=request.getParameter("el");
String f=request.getParameter("mn");
String g=request.getParameter("ad");
String h=request.getParameter("st");
//String j=request.getParameter("pho");
//String k=request.getParameter("pht"); 



int z=s.stm.executeUpdate("update canteen_details set ct_name='"+a+"',ct_type='"+b+"',ct_owner='"+d+"',ct_email='"+e+"',ct_mobile='"+f+"',ct_address='"+g+"',ct_status='"+h+"' where ct_id='"+id+"'");
out.println("<script>alert('updated');document.location='canteen_view.jsp';</script>");
			


}
%>
 