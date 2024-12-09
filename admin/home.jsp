<%@page import="java.sql.*"%>
<%@page import="canteen.dbconnect"%>
<jsp:useBean id="s" class="canteen.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
    response.setHeader("Cache Control","no-cache, no-store, must-revalidate");
    if(session.getAttribute("uname")==null)
    {
      out.println("<title>Access Denied...</title><script>alert('Sessoin -Expired. Please Re-Login');document.location='../index.jsp';</script>");
    }
    else
    {
%>
<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<!-- Main Content Start -->
        <div class="main-panel  col-md-12">
          <div class="content-wrapper">

            <%

             String un=session.getAttribute("uname").toString();
            ResultSet rs=s.stm.executeQuery("select * from login where username='"+un+"' and s_question='-' and s_answer='-'");
            if(rs.next())
              {
            %>
            <div class="card">
              <div class="card-body">
                <div class="center">
                  <center><label class="alert alert-danger">No Security Available. Please Setup Now.</label></center>

                    </br>
                 <center> <a class="btn btn-info btn-sm" href="securityf.jsp">Setup Now</a></center>
                </div>
              </div>
            </div>
              <%
            }
            else
            {
              %>
            <div class="row">

              <div class="col-sm-4 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <h5>Today's Orders</h5>
                    <div class="row">
                      <div class="col-8 col-sm-12 col-xl-8 my-auto">
                        <div class="d-flex d-sm-block d-md-flex align-items-center">
                          <h2 class="mb-0">20</h2>
                          <p class="text-success ms-2 mb-0 font-weight-medium">+3.5%</p>
                        </div>
                        <h6 class="text-muted font-weight-normal">11.38% Since last month</h6>
                      </div>
                      <div class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
                        <i class="icon-lg mdi mdi-phone text-primary ml-auto"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="col-sm-4 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <h5>Privies Orders</h5>
                    <div class="row">
                      <div class="col-8 col-sm-12 col-xl-8 my-auto">
                        <div class="d-flex d-sm-block d-md-flex align-items-center">
                          <h2 class="mb-0">500</h2>
                          <p class="text-success ms-2 mb-0 font-weight-medium">+8.3%</p>
                        </div>
                        <h6 class="text-muted font-weight-normal"> 9.61% Since last month</h6>
                      </div>
                      <div class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
                        <i class="icon-lg mdi mdi-bowl text-danger ml-auto"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>

              <div class="col-sm-4 grid-margin">
                <div class="card">
                  <div class="card-body">
                    <h5>Today's Total Profit</h5>
                    <div class="row">
                      <div class="col-8 col-sm-12 col-xl-8 my-auto">
                        <div class="d-flex d-sm-block d-md-flex align-items-center">
                          <h2 class="mb-0">20000</h2>
                          <p class="text-danger ms-2 mb-0 font-weight-medium">+4000 </p>
                        </div>
                        <h6 class="text-muted font-weight-normal">25000</h6>
                      </div>
                      <div class="col-4 col-sm-12 col-xl-4 text-center text-xl-right">
                        <i class="icon-lg mdi mdi-cash text-success ml-auto"></i>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>

           
            <div class="row">
             
              <div class="col-md-12 col-xl-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Portfolio Slide</h4>
                    <div class="owl-carousel owl-theme full-width owl-carousel-dash portfolio-carousel" id="owl-carousel-basic">
                      <div class="item">
                        <img src="../wfs_assets/images/dashboard/Rectangle.jpg" alt="">
                      </div>
                      <div class="item">
                        <img src="../wfs_assets/images/dashboard/Img_5.jpg" alt="">
                      </div>
                      <div class="item">
                        <img src="../wfs_assets/images/dashboard/img_6.jpg" alt="">
                      </div>
                    </div>
                  
                  </div>

                </div>

              </div>
             
            </div>

          <%}%>
        </div>
      </div>
<!-- Main Content End -->
<jsp:include page="footer.jsp"></jsp:include>
<%}%>