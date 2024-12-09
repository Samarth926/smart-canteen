
<%@page import="canteen.dbconnect"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="s" class="canteen.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>  

<%@page import="java.util.Date"%>
<% Date d=new Date();
  int dd,mm,yy;
  dd=d.getDate();
  mm=d.getMonth()+1;
  yy=d.getYear()+1900;
  String td=yy+"-"+mm+"-"+dd;
  %>

<%
response.setHeader("Cache Control","no-cache, no-store, must-revalidate");
if (session.getAttribute("uname")==null) 
  {
  out.println("<title>Access Denide...</title> <script>alert('Session Expired. Please Re-Login');document.location='../index.jsp';</script>");
}
else
{
%>

<jsp:include page="val.jsp"></jsp:include>
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
                    <h4 class="card-title">Review Details <a href="review_view.jsp" class="btn btn-primary btn-sm">Back</a></h4>
<form id="WFS_Riz" name="form1" method="post" action="review_insert.jsp">
  
    <div class="row">
      <div class="form-group col-md-6">
      <label>User</label>
      <select class="validate[required] form-control" name="ui" id="ui">
	  <option style="color: white" value="">--select user--</option>
	  <%
	  ResultSet rs=s.stm.executeQuery("select * from user_details");
	  while(rs.next())
	  {
	  %>
	  <option style="color: white" value="<%=rs.getInt("u_id")%>"><%=rs.getString("u_fname")+" "+rs.getString("u_lname")%></option>
	  <%
	  }
	  %>
	  </select>
	 
    </div>

    <div class="form-group col-md-6">
      <label>Dish Id</label>
      <select class="validate[required] form-control" name="di"  id="di">
	  <option style="color: white" value="">--select dish--</option>
	  <%
	  ResultSet rs1=s.stm.executeQuery("select * from dish_details");
	  while(rs1.next())
	  {
	  %>
	  <option style="color: white" value="<%=rs1.getInt("d_id")%>"><%=rs1.getString("d_name")%></option>
	  <%
	  }
	  %>
	  </select>
    </div>

    <div class="form-group col-md-6">
      <label>Review</label>
      <input class="validate[required,custom[onlyLetter]] form-control" name="rw" type="text" id="rw">
    </div>

    <div class="form-group col-md-6">
      <label>Rating</label>
      <input class="validate[required] form-control" name="rt" type="text" id="rt">
    </div>

    <div class="form-group col-md-6">
      <label>Date</label>
      <input class="validate[required,custom[date]] form-control" name="dt" type="text" id="dt" value="<%=td%>">
    </div>
  </div>

    <div>
      <div colspan="2"><div align="center">
          <input name="valid" type="submit" class="btn btn-success" id="valid" value="Submit">
          <input type="reset" name="Reset" class="btn btn-secondary" value="Reset">
      </div></div>
    </div>
  </table>
</form>
</div>
                </div>
              </div>
             
            </div>
           
          </div>
  

<!-- Main Content End -->
<jsp:include page="footer.jsp"></jsp:include>
<%}%>