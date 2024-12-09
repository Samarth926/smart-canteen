<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<!-- Main Content Start -->
        <div class="main-panel">
          <div class="content-wrapper">

                     
            <div class="row">
             
              <div class="col-md-12 col-xl-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Order Details <a href="order_form.jsp" class="btn btn-success btn-sm">Add New</a></h4>
                    
                    <table class="table table-hover">
                      <thead>
    <tr>
      <td width="45"><div align="center"><strong>Id</strong></div></td>
      <td width="190"><div align="center"><strong>Order Code </strong></div></td>
      <td width="163"><div align="center"><strong>User </strong></div></td>
      <td width="126"><div align="center"><strong>Dish </strong></div></td>
      <td width="147"><div align="center"><strong> Quentity </strong></div></td>
      <td width="93"><div align="center"><strong> Date</strong></div></td>
      <td width="144"><div align="center"><strong>Arriving Time </strong></div></td>
      <td width="80"><div align="center"><strong> Status </strong></div></td>
      <td width="182"><div align="center"><strong>Action</strong></div></td>
    </tr>
  </thead>
  <tbody>
    <%@page import="canteen.dbconnect"%>
    <%@page import="java.sql.*"%>
    <jsp:useBean id="s" class="canteen.dbconnect"/>
    
    <jsp:getProperty name="s" property="conn"/>

<%
response.setHeader("Cache Control","no-cache, no-store, must-revalidate");
if (session.getAttribute("uname")==null) 
  {
  out.println("<title>Access Denide...</title> <script>alert('Session Expired. Please Re-Login');document.location='../index.jsp';</script>");
}
else
{
%>

    <%
	ResultSet a=s.stm.executeQuery("select * from order_details o,dish_details d,user_details u where o.d_id=d.d_id and o.u_id=u.u_id");
  int b=0;
	while(a.next())
	{
	b++;
	int id=a.getInt("or_id");
	%>
    <tr>
      <td><div align="center"><%=b%></div></td>
      <td><div align="center"><%=a.getString("or_code")%></div></td>
      <td><div align="center"><%=a.getString("u_fname")+" "+a.getString("u_lname")%></div></td>
      <td><div align="center"><%=a.getString("d_name")%></div></td>
      <td><div align="center"><%=a.getString("or_quantity")%></div></td>
      <td><div align="center"><%=a.getString("or_date")%></div></td>
      <td><div align="center"><%=a.getString("u_arriving_time")%></div></td>
      <td><div align="center"><%=a.getString("or_status")%></div></td>
      <td><div align="center"><strong><a class="btn btn-primary btn-sm" href="order_edit.jsp?id=<%=id%>">Edit</a> <a onclick="return confirm('Are you sure?')" class="btn btn-danger btn-sm" href="order_delete.jsp?id=<%=id%>">Delete</a></div></td>
    </tr>
    <%
	}
	%>
 </tbody>
                    </table>

                  </div>
                </div>
              </div>
             
            </div>
           
          </div>
  

<!-- Main Content End -->
<jsp:include page="footer.jsp"></jsp:include>
<%}%>