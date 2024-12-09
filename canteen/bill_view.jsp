
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
                    <h4 class="card-title">Bill Details <!--<a href="bill_form.jsp" class="btn btn-success btn-sm">Add New</a>--></h4>
                    
                    <table class="table table-hover">
                      <thead>
  <tr>
    <td width="115"><div align="center"><strong>Bill ID</strong></div></td>
    <td width="155"><div align="center"><strong>ORDER ID</strong></div></td>
    <td width="218"><div align="center"><strong>BILL_AMOUNT</strong></div></td>
    <td width="166"><div align="center"><strong>BILL_DATE</strong></div></td>
    <td width="162"><div align="center"><strong>BILL_TYPE</strong></div></td>
   <!-- <td width="166"><div align="center"><strong>ACTION</strong></div></td>-->
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
ResultSet z=s.stm.executeQuery("select * from bill b,order_details od where b.or_id=od.or_id");
while(z.next())
{
n++;
int id=z.getInt("bl_id");
%>
  <tr>
    <td><div align="center"><%=n%></div></td>
    <td><div align="center"><%=z.getString("or_id")%></div></td>
    <td><div align="center"><%=z.getString("bill_amount")%></div></td>
    <td><div align="center"><%=z.getString("bill_date")%></div></td>
    <td><div align="center"><%=z.getString("bill_type")%></div></td>
   <!-- <td><div align="center"><a class="btn btn-primary btn-sm" href="bill_edit.jsp?id=<%=id%>%22">Edit</a> <a onclick="return confirm('Are you sure?')" class="btn btn-danger btn-sm" href="bill_delete.jsp?id=<%=id%>">Delete</a></div></td>-->
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