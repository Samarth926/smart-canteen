<%@page import="canteen.dbconnect"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="s" class="canteen.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String id=request.getParameter("id");
if(id==null){
out.println("<script>history.back();</script>");
}
else{
ResultSet a=s.stm.executeQuery("select * from 	payment_details where py_id='"+id+"'");
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
                    <h4 class="card-title">Payment Detail <a href="pd_view.jsp" class="btn btn-primary btn-sm">Back</a></h4>
<form id="WFS_Riz" name="form1" method="post" action="pd_update.jsp">
<input type="hidden" name="id" value="<%=id%>" id="id">
  
    <div class="row">
    <div class="form-group col-md-6">
      <label>Account Holder </label>
      <input class="validate[required,custom[onlyLetter]] form-control" value="<%=a.getString("ac_holder")%>" name="ac" type="text" id="ac">
    </div>
  
    <div class="form-group col-md-6">
      <label>UPI Id </label>
      <input class="validate[required] form-control" value="<%=a.getString("upi_id")%>" name="ui" type="text" id="ui">
    </div>
  
    <div class="form-group col-md-6">
      <label>UPI Pin </label>
      <input class="validate[required,custom[onlyNumber] form-control" value="<%=a.getString("upi_pin")%>" name="up" type="text" id="up">
    </div>
  
    <div class="form-group col-md-6">
      <label>Amount</label>
      <input class="validate[required,custom[onlyNumber] form-control" value="<%=a.getString("amount")%>" name="am" type="text" id="am">
    </div>
  </div>
    <div>
      <div colspan="2"><div align="center">
        <input name="valid" type="submit" class="btn btn-success" id="valid" value="Submit">      
        <input name="reset" type="reset" class="btn btn-secondary" id="reset" value="Reset">
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