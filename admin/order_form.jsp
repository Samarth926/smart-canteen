
<%@page import="canteen.dbconnect"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="s" class="canteen.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>  
<%@page import="java.util.Date"%>
<% Date d=new Date();
int dd=d.getDate();
 int mm=d.getMonth()+1;
 int yy=d.getYear()+1900;
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
                    <h4 class="card-title">Order Details <a href="order_view.jsp" class="btn btn-primary btn-sm">Back</a></h4>
<form id="WFS_Riz" name="form1" method="post" action="order_insert.jsp">
  
    
     <div class="row">
      <div class="form-group col-md-6">
      <label>Order Code </label>
      <input class="validate[required] form-control" name="oc" type="text" id="oc">
    </div>

    <div class="form-group col-md-6">
      <label>User</label>
        <select class="validate[required] form-control" name="ud"  id="ud">
          <option style="color: white" value="">-select user-</option>
          <%
	   ResultSet rs=s.stm.executeQuery("select *  from user_details");
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
      <label>Dish </label>
      <select class="validate[required] form-control" name="dd" id="dd">
        <option style="color: white" value="">-select user-</option>
        <%
	   ResultSet rs1=s.stm.executeQuery("select *  from dish_details");
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
      <label>Quantity</label>
      <input class="validate[required,custom[onlyNumber] form-control" name="qt" type="text" id="qt">
    </div>

    <div class="form-group col-md-6">
      <label>Order Date </label>
      <input class="validate[required,custom[date]] form-control" name="od" type="text" id="od" value="<%=td%>" readonly="od">
    </div>

    <div class="form-group col-md-6">
      <label>Arriving Time </label>
      <input class="validate[required] form-control" name="ot" type="text" id="ot">
    </div>

    <div class="form-group col-md-6">
      <label>Status</label>
      <input class="validate[required,custom[onlyLetter]] form-control" name="st" type="text" id="st">
    </div>
  </div>

    <div>
      <div colspan="2"><div align="center">
<input name="valid" type="submit"  class="btn btn-success" id="valid" value="Submit">          
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