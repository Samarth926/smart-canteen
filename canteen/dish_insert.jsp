 <title>Processing...</title>
 <%@page import="java.sql.*"%>
 <%@page import="canteen.dbconnect"%>
 <jsp:useBean id="i" class="canteen.dbconnect"/>
 <jsp:getProperty name="i" property="conn"/>
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
  String f=request.getParameter("ct");

 int h=i.stm.executeUpdate("insert into dish_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"')");
 out.println("<script>alert('Inserted');document.location='dish_view.jsp'</script>");
 }
 %>


 
  
 