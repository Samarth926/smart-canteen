
<%@page import="java.sql.*"%>
<%@page import="canteen.dbconnect"%>
<jsp:useBean id="s" class="canteen.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%@page import="java.util.Date"%>
<% 
Date d=new Date();
int dd=d.getDate();
 int mm=d.getMonth()+1;
 int yy=d.getYear()+1900;
 String td=yy+"-"+mm+"-"+dd;
 
String id=request.getParameter("id");
if(id==null)
{
out.println("<script>history.back();</script>");
}
else{
ResultSet a=s.stm.executeQuery("select * from bill where bl_id='"+id+"'");
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
                    <h4 class="card-title">Bill Details <a href="bill_view.jsp" class="btn btn-primary btn-sm">Back</a></h4>
<form id="WFS_Riz" name="form1" method="post" action="bill_update.jsp">
<input value="<%=id%>" name="id" type="hidden" id="id">
  
    <div class="row">
      <div class="form-group col-md-6">
      <label>Order_Id</label>
      <input class="validate[required] form-control" value="<%=a.getString("or_id")%>" type="text" name="oi" id="oi">
    </div>

 <div class="form-group col-md-6">
      <label>Bill_Amount</label>
      <input class="validate[required,custom[onlyNumber] form-control" value="<%=a.getString("bill_amount")%>" name="ba" type="text" id="ba">
    </div>

     <div class="form-group col-md-6">
      <label>Date</label>
      <input class="validate[required,custom[date]] form-control" name="bd" type="text" id="bd" value="<%=td%>" readonly="bd">
    </div>

     <div class="form-group col-md-6">
      <label>Type</label>
      <input class="validate[required,custom[onlyLetter]] form-control" value="<%=a.getString("bill_type")%>" name="bt" type="text" id="bt">
    </div>
  </div>


     <div>
      <div colspan="2">      <div align="center">
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