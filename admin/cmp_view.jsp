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
                    <h4 class="card-title">Complaint Details <!--<a href="cmp_form.jsp" class="btn btn-success btn-sm">Add New</a>--></h4>
                    
                    <table class="table table-hover">
                      <thead>
    <tr>
      <td width="221" height="72"><div align="center"><strong>Complaint Id </strong></div></td>
      <td width="160"><div align="center"><strong>User</strong></div></td>
      <td width="131"><div align="center"><strong>Canteen</strong></div></td>
      <td width="262"><div align="center"><strong>Complaints</strong></div></td>
      <td width="131"><div align="center"><strong>Date</strong></div></td>
      <!--<td width="149"><div align="center"><strong>Action</strong></div></td>-->
    </tr>
  </thead>
  <tbody>
	<%@page import="java.sql.*"%>
<%@page import="canteen.dbconnect"%>
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
int n=0;
ResultSet z=s.stm.executeQuery("select * from complaints c,user_details u,canteen_details ct where c.u_id=u.u_id and c.ct_id=ct.ct_id");
while(z.next())
{
n++;
int id=z.getInt("cm_id");
%>

    <tr>
      <td><div align="center"><%=n%></div></td>
      <td><div align="center"><%=z.getString("u_fname")+" "+z.getString("u_lname")%></div></td>
      <td><div align="center"><%=z.getString("ct_name")%></div></td>
      <td><div align="center"><%=z.getString("complaints")%></div></td>
      <td><div align="center"><%=z.getString("cm_date")%></div></td>
      <!--<td><div align="center"><strong><a class="btn btn-primary btn-sm" href="cmp_edit.jsp?id=<%=id%>%22">Edit</a> <a onclick="return confirm('Are you sure?')" class="btn btn-danger btn-sm" href="cmp_delete.jsp?id=<%=id%>">Delete</a></div></td>-->
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