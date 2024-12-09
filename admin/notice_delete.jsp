<%@page import="canteen.dbconnect"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="s" class="canteen.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String id=request.getParameter("id");
if(id==null){
 out.println("<script>history.back();</script>");
 }
 else{
 
 int a=s.stm.executeUpdate("delete from notice where n_id='"+id+"'");
 out.println("<script>alert('Deleted sucsessfull');document.location='notice_view.jsp'</script>");
 }
 %>