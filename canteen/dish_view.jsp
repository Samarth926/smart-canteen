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
                    <h4 class="card-title">Dish Details <a href="dish_form.jsp" class="btn btn-success btn-sm">Add New</a></h4>
                    
                    <table class="table table-hover">
                      <thead>
    <tr>
      <td width="94" height="51"><div align="center"><strong>Dish id </strong></div></td>
      <td width="136"><div align="center"><strong>Dish Name </strong></div></td>
      <td width="123"><div align="center"><strong>Dish Type </strong></div></td>
      <td width="162"><div align="center"><strong>Dish Price</strong></div></td>
      <td width="290"><div align="center"><strong>Dish Description</strong></div></td>
      <td width="290"><div align="center"><strong>canteen Name</strong></div></td>

      <td width="195"><div align="center"><strong>Action</strong></div></td>
    </tr>
  </thead>
  <tbody>
    <%@page import="java.sql.*"%>
    <%@page import="canteen.dbconnect"%>
    <jsp:useBean id="i" class="canteen.dbconnect"/>
    <jsp:getProperty name="i" property="conn"/> 

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
    String rz=session.getAttribute("uname").toString();
ResultSet res=i.stm.executeQuery("select * from dish_details d,canteen_details c where d.ct_id=c.ct_id and c.ct_email='"+rz+"'");
int a=0;
while(res.next())
{
  a++;
int id=res.getInt("d_id");

%>
    <tr>
      <td><div align="center"><%=a%></div></td>
      <td><div align="center"><%=res.getString("d_Name")%></div></td>
      <td><div align="center"><%=res.getString("d_type")%></div></td>
      <td><div align="center"><%=res.getString("d_Price")%></div></td>
      <td><div align="center"><%=res.getString("d_desc")%></div></td>
       <td><div align="center"><%=res.getString("ct_name")%></div></td>
      <td><div align="center"><strong> <a onclick="return confirm('Are You Sure?..')" class="btn btn-danger btn-sm" href="dish_delete.jsp?id=<%=id%>">Delete</a></div></td>
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