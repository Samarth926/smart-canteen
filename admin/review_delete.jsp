<%@page import="java.sql.*"%>
<%@page import="canteen.dbconnect"%>
<jsp:useBean id="s" class="canteen.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
 <% 
  String id=request.getParameter("id");
  if(id==null)
  {
  out.println("<script>history.back()</script>;");
  }
  else
  {
  
  int a=s.stm.executeUpdate("delete from review where r_id='"+id+"'");
  out.println("<script>alert('Record deleted');document.location='review_view.jsp'</script>");
  }
  %>