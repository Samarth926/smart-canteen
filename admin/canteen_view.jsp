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
                    <h4 class="card-title">Canteen Details <!--<a href="canteen_form.jsp" class="btn btn-success btn-sm">Add New</a>--></h4>
                    <div class="table-responsive">
                    <table class="table table-hover">
                      <thead>
    <tr>
      <td width="76" height="80"><div align="center"><strong>ID</strong></div></td>
      <td width="233"><div align="center"><strong>CANTEEN NAME </strong></div></td>
      <td width="115"><div align="center"><strong>TYPE</strong></div></td>
      <td width="161"><div align="center"><strong>OWNER</strong></div></td>
      <td width="288"><div align="center"><strong>EMAIL</strong></div></td>
      <td width="172"><div align="center"><strong>MOBILE</strong></div></td>
      <td width="215"><div align="center"><strong>ADDRESSS</strong></div></td>
      <td width="157"><div align="center"><strong>STATUS</strong></div></td>
      <td width="169"><div align="center"><strong>PHOTO1</strong></div></td>
      <td width="204"><div align="center"><strong>PHOTO2</strong></div></td>
      <td width="204"><div align="center"><strong>STATUS 2</strong></div></td>
      <td width="282"><div align="center"><strong>ACTION</strong></div></td>
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
	ResultSet a=s.stm.executeQuery("select * from canteen_details c,login l where c.ct_email=l.username");
  int n=0;
	while(a.next())
	{
	int id=a.getInt("ct_id");
  String sts=a.getString("status");
  String eml=a.getString("ct_email");
	n++;
	%>
    <tr>
      <td><div align="center"><%=n%></div></td>
      <td><div align="center"><%=a.getString("ct_name")%></div></td>
      <td><div align="center"><%=a.getString("ct_type")%></div></td>
      <td><div align="center"><%=a.getString("ct_owner")%></div></td>
      <td><div align="center"><%=a.getString("ct_email")%></div></td>
      <td><div align="center"><%=a.getString("ct_mobile")%></div></td>
      <td><div align="center"><%=a.getString("ct_address")%></div></td>
      <td><div align="center"><%=a.getString("ct_status")%></div></td>
     <td><div align="center"><img class="wfs-img" src='../uploads/<%=a.getString("ct_photo1")%>'>
       <!--<a style="font-size: 10px; text-decoration: none;" href="canteen_select_photo.jsp?id=<%=id%>"> Change Photo</a>--></div></td>
      <td><div align="center"><img class="wfs-img" src='../uploads/<%=a.getString("ct_photo2")%>'> </div></td>
       <!-- <a style="font-size: 10px; text-decoration: none;" href="canteen_select_photo.jsp?id=<%=id%>"> Change Photo</a></div></td>
      <td><div align="center"><strong><a class="btn btn-primary btn-sm" href="canteen_edit.jsp?id=<%=id%>">Edit</a> <a onclick="return confirm('Are you sure?')" class="btn btn-danger btn-sm" href="canteen_delete.jsp?id=<%=id%>">Delete</a></div></td>-->
    <td><div align="center">
      
      <%if(sts.equals("active")){%><label class="badge badge-success">Active</label>
      <%} else if(sts.equals("rejected")){%><label class="badge badge-danger">Rejected</label>
      <%} else {%><label class="badge badge-primary">Requested</label> <%}%> 

    </div></td>
    <td><div align="center">
             <% if(sts.equals("requested")) { %> 
                <a href="canteen_prms.jsp?un=<%=eml%>&pr=acpt" onclick="return confirm('Are you sure?')" title="Accept" class="btn btn-success btn-sm"><i class="fa fa-check"></i></a> <a href="canteen_prms.jsp?un=<%=eml%>&pr=rjct" onclick="return confirm('Are you sure?')" title="Reject" class="btn btn-danger btn-sm"><i class="fa fa-window-close"></i></a>
             <% } else { out.println("-"); }%>
           </div></td>

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
              </div>
             
            </div>
           
          </div>
        </div>

        
  

<!-- Main Content End -->
<jsp:include page="footer.jsp"></jsp:include>
<%}%>