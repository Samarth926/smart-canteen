 <title>Processing...</title>
 <%@page import="java.sql.*"%>
 <%@page import="canteen.dbconnect"%>
 <jsp:useBean id="i" class="canteen.dbconnect"/>
 <jsp:getProperty name="i" property="conn"/>
 <%
 String id=request.getParameter("id");
 String chk=request.getParameter("valid");
 if (chk==null){
 out.println("<script>history.back();</script>");
 }
 else{
 String a=request.getParameter("dn");
 String b=request.getParameter("dt");
 String c=request.getParameter("dp");
  String d=request.getParameter("dd");
 int h=i.stm.executeUpdate("update dish_details set d_name='"+a+"',	d_type='"+b+"',	d_price='"+c+"',d_desc='"+d+"' where d_id='"+id+"' ");
 out.println("<script>alert('Updated');document.location='dish_view.jsp'</script>");
 }
 %>


 
  
 