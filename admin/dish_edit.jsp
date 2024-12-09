 <title>Processing...</title>
 <%@page import="java.sql.*"%>
 <%@page import="canteen.dbconnect"%>
 <jsp:useBean id="i" class="canteen.dbconnect"/>
 <jsp:getProperty name="i" property="conn"/>
 <%
 String id=request.getParameter("id");
 if(id==null){
out.println("<script>history.back();</script>");
}
else{
 ResultSet a=i.stm.executeQuery("select * from dish_details where d_id='"+id+"'");
 a.next();
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
                    <h4 class="card-title">Dish Detail <a href="dish_view.jsp" class="btn btn-primary btn-sm">Back</a></h4>
<form id="WFS_Riz" name="form1" method="post" action="dish_update.jsp">
<input value="<%=id%>" name="id" type="hidden" id="id">
  <div class="row">
  <div class="form-group col-md-6">
      <label>Dish Name </label>
      <input class="validate[required,custom[onlyLetter]] form-control" value="<%=a.getString("d_name")%>" name="dn" type="text" id="dn">
    </div>
    <div class="form-group col-md-6">
      <label>Dish Type</label>
      <select class="validate[required] form-control" name="dt">
        <option value="">--Select Type--</option>
        <option style="color: white">Veg</option>
        <option style="color: white">Non-veg</option>
      </select>
    </div>
    <div class="form-group col-md-6">
      <label>Dish Price </label>
      <input class="validate[required,custom[onlyNumber] form-control" value="<%=a.getString("d_price")%>" name="dp" type="text" id="dp">
    </div>
    <div class="form-group col-md-6">
      <label>Dish Description </label>
      <input class="validate[required] form-control" value="<%=a.getString("d_desc")%>" name="dd" type="text" id="dd">
    </div>

    <div class="form-group col-md-6">
      <label>Dish Status</label>
      <select class="validate[required] form-control" name="ds">
        <option value="">--Select Status--</option>
        <option style="color: white">Available</option>
        <option style="color: white">Non-Availabel</option>
      </select>
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
<%
}
%>
</div>
                </div>
              </div>
             
            </div>
           
          </div>
  

<!-- Main Content End -->
<jsp:include page="footer.jsp"></jsp:include>

