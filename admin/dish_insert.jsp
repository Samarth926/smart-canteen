 <title>Processing...</title>
 <%@page import="java.sql.*"%>
 <%@page import="canteen.dbconnect"%>
 <jsp:useBean id="s" class="canteen.dbconnect"/>
 <jsp:getProperty name="s" property="conn"/>
 <%
 String chk=request.getParameter("valid");
 if (chk==null){
 out.println("<script>history.back();</script>");
 }
 else{
 String a=request.getParameter("dn");
 String b=request.getParameter("dt");
 String c=request.getParameter("dp");
  String d=request.getParameter("dd");
  String e=request.getParameter("ds");

 int h=s.stm.executeUpdate("insert into dish_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"')");
 out.println("<script>alert('Inserted');document.location='dish_view.jsp'</script>");
 }
 %>


 
  
 