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
                    <h4 class="card-title">Notice Details <a href="notice_form.jsp" class="btn btn-success btn-sm">Add New</a></h4>
                    <table class="table table-hover">
                      <thead>
    <tr>
      <td width="211" height="56"><div align="center"><strong>Id</strong></div></td>
      <td width="211" height="56"><div align="center"><strong>Sent From </strong></div></td>
      <td width="333"><div align="center"><strong>Sent TO</strong></div></td>
      <td width="160"><div align="center"><strong>Notice</strong></div></td>
      <td width="164"><div align="center"><strong>Sent Date</strong></div></td>
      <td width="174"><div align="center"><strong>Status</strong></div></td>
      <td width="214"><div align="center"><strong>ACTION</strong></div></td>
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

ResultSet res=s.stm.executeQuery("select * from notice n,canteen_details c where n.n_to=c.ct_id");
int a=0;
while(res.next())
{
  a++;
  int id=res.getInt("n_id");
%>

    <tr>
	  <td height="39"><div align="center"><%=a%></div></td>
      <td><div align="center"><%=res.getString("n_from")%></div></td>
      <td><div align="center"><%=res.getString("ct_name")%></div></td>
      <td><div align="center"><%=res.getString("notice")%></div></td>
      <td><div align="center"><%=res.getString("s_date")%></div></td>
      <td><div align="center"><%=res.getString("Status")%></div></td>
      <td><div align="center"><strong><!--<a class="btn btn-primary btn-sm" href="notice_edit.jsp?id=<%=id%>">Edit</a> --><a onclick="return confirm('Are you sure?')" class="btn btn-danger btn-sm" href="notice_delete.jsp?id=<%=id%>" >Delete</a></div></td>
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