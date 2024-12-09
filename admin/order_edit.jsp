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
	String id=request.getParameter("id");
	if(id==null){
out.println("<script>history.back();</script>");
}
else{
	ResultSet a=s.stm.executeQuery("select * from order_details where or_id='"+id+"'");
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
                    <h4 class="card-title">Order Details <a href="order_view.jsp" class="btn btn-primary btn-sm">Back</a></h4>
<form id="WFS_Riz" name="form1" method="post" action="order_update.jsp">
<input name="id" type="hidden" value="<%=id%>">

    <div class="row">
    <div class="form-group col-md-6">
      <label>Order Code </label>
      <input class="validate[required] form-control" value="<%=a.getString("or_code")%>" name="oc" type="text" id="oc">
    </div>

    <div class="form-group col-md-6">
      <label>User Id </label>
      <input class="validate[required] form-control"  value="<%=a.getString("u_id")%>"  name="ud" type="text" id="ud">
    </div>

    <div class="form-group col-md-6">
      <label>Dish Id </label>
      <input class="validate[required] form-control" value="<%=a.getString("d_id")%>"  name="dd" type="text" id="dd">
    </div>

    <div class="form-group col-md-6">
      <label>Quantity</label>
      <input class="validate[required,custom[onlyNumber] form-control" value="<%=a.getString("or_quantity")%>"  name="qt" type="text" id="qt">
    </div>

    <div class="form-group col-md-6">
      <label>Order Date </label>
      <input class="validate[required,custom[date]] form-control" value="<%=td%>"  name="od" type="text" id="od"></td>
    </div>

    <div class="form-group col-md-6">
      <label>Arriving Time </label>
      <input class="validate[required] form-control" value="<%=a.getString("u_arriving_time")%>"  name="ot" type="text" id="ot">
    </div>

    <div class="form-group col-md-6">
      <label>Status</label>
      <input class="validate[required,custom[onlyLetter]] form-control" value="<%=a.getString("or_status")%>" name="st" type="text" id="st">
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