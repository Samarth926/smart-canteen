
<%@page import="java.sql.*"%>
<%@page import="canteen.dbconnect"%>
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
 response.setHeader("Cache control","no-cache, no-store, must-revalidate");
 if (session.getAttribute("uname")==null)
  {
   out.println("<title>Access Denied...</title><script>alert('Sessoin Expired. Please Re-Login');document.location='../index.jsp';</script>");
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
                    <h4 class="card-title">Bill Details <a href="bill_view.jsp" class="btn btn-primary btn-sm">Back</a></h4>
<form id="WFS_Riz" name="form1" method="post" action="bill_insert.jsp">
<div class="row">
  <div class="form-group col-md-6">
    <lable>Order ID</lable>
    <select class="validate[required] form-control" name="oi" id="oi">
	  <option style="color: white" value="">-- Select Order --</option>
	  <%
	  ResultSet rs=s.stm.executeQuery("select * from order_details");
	  while(rs.next())
	  {
	  
	  
	%>
	<option style="color: white" value="<%=rs.getInt("or_id")%>"><%=rs.getInt("or_id")%></option>
	<%
	}
	%>
	</select>
	</div>
  
  <div class="form-group col-md-6">
   <lable>Bill Amount</lable>
   <input class="validate[required,custom[onlyNumber] form-control" name="ba" type="text" id="ba">
  </div>


    <div class="form-group col-md-6">
      <label>Date</label>
      <input class="validate[required,custom[date]] form-control" name="bd" type="text" id="bd" value="<%=td%>" readonly="bd">
    </div>

    <div class="form-group col-md-6">
      <label>Type</label>
      <input class="validate[required,custom[onlyLetter]] form-control" name="bt" type="text" id="bt">
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
  </div>
                </div>
              </div>
             
            </div>
           
          </div>
  

<!-- Main Content End -->
<jsp:include page="footer.jsp"></jsp:include></body>
</html>
<%}
%>
