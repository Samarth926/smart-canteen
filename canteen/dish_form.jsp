<%
response.setHeader("Cache Control","no-cache, no-store, must-revalidate");
if (session.getAttribute("uname")==null) 
  {
  out.println("<title>Access Denide...</title> <script>alert('Session Expired. Please Re-Login');document.location='../index.jsp';</script>");
}
else
{
%>
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
                    <h4 class="card-title">Dish Details <a href="dish_view.jsp" class="btn btn-primary btn-sm">Back</a></h4>
 <%@page import="java.sql.*"%>
<%@page import="canteen.dbconnect"%>
<jsp:useBean id="s" class="canteen.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<jsp:include page="val.jsp"></jsp:include> 
<form id="WFS_Riz" name="form1" method="post" action="dish_insert.jsp">
   <div class="row">
    <div class="form-group col-md-6">
      <label>Dish Name </label>
      <input class="validate[required,custom[onlyLetter]] form-control" name="dn" type="text" id="dn">
    </div>

      <div class="form-group col-md-6">
      <label>Dish Type</label>
      <select style="color: white" class="validate[required] form-control"  name="dt" id="dt">
       <option value="">--Select Type--</option>
       <option>Veg</option>
       <option>Non-Veg</option>
      </select>
    </div>
    
    <div class="form-group col-md-6">
      <label>Dish Price </label>
      <input class="validate[required,custom[onlyNumber] form-control" name="dp" type="text" id="dp">
    </div>  

    <div class="form-group col-md-6">
      <label>Dish Description </label>
      <input class="validate[required] form-control" name="dd" type="text" id="dd">
    </div>
  
    
     <div class="form-group col-md-6">
      <label>Dish Status</label>
      <select style="color: white" class="validate[required] form-control"  name="ds" id="ds">
       <%-- <option value="">--Select Status--</option> --%>
       <option>Available</option>
       <option>Not-Available</option>
      </select>
    </div>
   
    <div class="form-group col-md-6">
      <label>Canteeen </label>
      <select style="color: #fff;" readonly class="validate[required] form-control" name="ct" id="ud">
    <%
      String rz=session.getAttribute("uname").toString();
    ResultSet rs1=s.stm.executeQuery("select * from canteen_details where ct_email='"+rz+"'");
    while(rs1.next())
    {
    %>
    <option style="color: white" value="<%=rs1.getInt("ct_id")%>"><%=rs1.getString("ct_name")%></option>
  <%
  }
  %>
  </select>

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