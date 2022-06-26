
<%@page import="com.learning.entities.admin"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.learning.entities.faculty"%>
<%@page import="com.learning.entities.faculty"%>
<%@page import="com.learning.dao.FacultyDao"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.learning.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Admin Page</title>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        <link rel="stylesheet" href="css/admincss.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="js/adminjs.js"></script>
    </head>
    <body id="body-pd" style="overflow-y: hidden;" >
        
        <%
            admin ad = (admin) session.getAttribute("Admin");
            if (ad == null) {
                response.sendRedirect("adminLogin.jsp");
            }
        %>
        <header class="header" id="header">
            <div class="header_toggle"> <i class='bx bx-menu' id="header-toggle"></i> </div>
            <div class="header_img"> <i class="fa-solid fa-user"></i> </div>
        </header>
        <div class="l-navbar" id="nav-bar" >
            <nav class="nav">
                <div> <a href="#" class="nav_logo"> <i class='bx bx-user nav_logo-icon'></i> <span class="nav_logo-name">E-Learning</span> </a>
                    <div class="nav_list"> 
                    <a href="#a-dashboard" class="nav_link active"> <i class='bx bx-grid-alt nav_icon'></i> <span class="nav_name" id="dashboard">Dashboard</span> </a> 
                    <a href="#a-courses" class="nav_link"> <i class='bx bx-book-content nav_icon'></i> <span class="nav_name" id="allcourses">All Courses</span> </a> 
                    <a href="#a-students" class="nav_link" > <i class='bx bxs-user-detail nav_icon'></i> <span class="nav_name" id="allstudents">All Students</span> </a> 
                    <a href="#a-faculties" type="submit" class="nav_link" > <i class='bx bx-user-voice nav_icon'></i> <span class="nav_name" id="allstudents">All Faculties</span> </a>
                    <a href="#a-assignments" class="nav_link"> <i class='bx bx-bookmark nav_icon'></i> <span class="nav_name" id="assignments">Assignments</span> </a>  
                    </div>
                </div> <a href="adminLogout" class="nav_link"> <i class='bx bx-log-out nav_icon'></i> <span class="nav_name">Sign Out</span> </a>
            </nav>
        </div>
        <!--Container Main start-->
        <div class="height-100 " id="a-dashboard">
            <h4>Dashboard</h4>
            
            <div class="row">
                 <%
                            String noSt="0",noCo="0",noFac="0";
                            try{
                            
                           Connection con = ConnectionProvider.getConnection();    
                           String query = "select count('c_id') from course";
                           Statement stm = con.createStatement();
                           ResultSet rs = stm.executeQuery(query);
                            while(rs.next()){
                               noCo = rs.getString(1);
                            }
                            query = "select count('id') from student";
                            rs = stm.executeQuery(query);
                            while(rs.next()){
                                noSt = rs.getString(1);
                            }
                            
                            query = "select count('f_id') from faculty";
                            rs = stm.executeQuery(query);
                            while(rs.next()){
                                noFac = rs.getString(1);
                            }
                            
                            }catch(Exception e){
                                    e.printStackTrace();
                                    out.println(e);
                            }
                                  
                      %>
              <!-- Earnings (Monthly) Card Example -->
              <div class="col-xl-3 col-md-6 mb-4">
                  <div class="card border-left-primary shadow h-100 py-2" style="border-left: .25rem solid #4e73df !important;">
                      <div class="card-body" >
                          <div class="row no-gutters align-items-center">
                              <div class="col mr-2" >
                                  <div class="text-xs font-weight-bold text-primary text-uppercase mb-1">
                                      Earnings Till Now</div>
                                  <div class="h5 mb-0 font-weight-bold text-gray-800">₹0</div>
                              </div>
                              <div class="col-auto">
                                  <i class="fa fa-inr fa-2x text-gray-300"></i>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>

              <!-- Earnings (Monthly) Card Example -->
              <div class="col-xl-3 col-md-6 mb-4">
                  <div class="card border-left-success shadow h-100 py-2" style="border-left: .25rem solid #1cc88a !important;">
                      <div class="card-body">
                          <div class="row no-gutters align-items-center">
                              <div class="col mr-2">
                                  <div class="text-xs font-weight-bold text-success text-uppercase mb-1">
                                      Faculties Enrolled</div>
                                  <div class="h5 mb-0 font-weight-bold text-gray-800"><%=noFac%></div>
                              </div>
                              <div class="col-auto">
                                  <i class="fas fa-chalkboard-teacher fa-2x text-gray-300"></i>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>

              <!-- Earnings (Monthly) Card Example -->
              <div class="col-xl-3 col-md-6 mb-4">
                  <div class="card border-left-info shadow h-100 py-2" style="border-left: .25rem solid #36b9cc !important;">
                      <div class="card-body">
                          <div class="row no-gutters align-items-center">
                              <div class="col mr-2">
                                  <div class="text-xs font-weight-bold text-info text-uppercase mb-1">Students Enrolled
                                  </div>
                                  <div class="row no-gutters align-items-center">
                                      <div class="col-auto">
                                          <div class="h5 mb-0 mr-3 font-weight-bold text-gray-800"><%=noSt%></div>
                                      </div>
                                  </div>
                              </div>
                              <div class="col-auto">
                                  <i class="fas fa-user-graduate fa-2x text-gray-300"></i>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>

              <!-- Pending Requests Card Example -->
              <div class="col-xl-3 col-md-6 mb-4">
                  <div class="card border-left-warning shadow h-100 py-2" style="border-left: .25rem solid #f6c23e !important;">
                      <div class="card-body">
                          <div class="row no-gutters align-items-center">
                              <div class="col mr-2">
                                  <div class="text-xs font-weight-bold text-warning text-uppercase mb-1">
                                      Courses Offered</div>
                                  <div class="h5 mb-0 font-weight-bold text-gray-800"><%=noCo%></div>
                              </div>
                              <div class="col-auto">
                                  <i class="fas fa-award fa-2x text-gray-300"></i>
                              </div>
                          </div>
                      </div>
                  </div>
              </div>
          </div>


        </div>
        <div class="height-100 " id="a-courses">
            <h4>All Courses</h4>
            <div class="table-wrapper-scroll-y my-custom-scrollbar">
                <table class="table table-bordered table-striped mb-0">
                  <thead>
                    <tr>
                      <th scope="col">Course ID</th>
                      <th scope="col">Course Name</th>
                      <th scope="col">Faculty Name</th>                      
                      <th scope="col">Price</th>
                      <th scope="col">Duration</th>
                      <th scope="col">Action</th>
                    </tr>
                  </thead>
                  <tbody>
                    <!--get all courses using jsp start-->
                        <%
                            try{

                           Connection con = ConnectionProvider.getConnection();    
                           String query = "select * from course";
                           Statement stm = con.createStatement();
                           ResultSet rs = stm.executeQuery(query);
                            while(rs.next()){
                                query = "select f_name from faculty where f_id="+rs.getString("f_id");
                                Statement stm2 = con.createStatement();
                               ResultSet rs2 = stm2.executeQuery(query);
                               String fname="";
                               while(rs2.next())
                                fname = rs2.getString("f_name");
                      %>
                    <tr>
                      <td><%=rs.getString("c_id")%></td>
                      <td><%=rs.getString("c_name")%></td>
                      <td><%=fname%></td>                      
                      <td><%=rs.getString("c_price")%></td>
                      <td><%=rs.getString("c_dur")%></td>
                      
                      
                      <%String url = "deleteCourse?id="+rs.getString("c_id");%>   
                      
                        <td>
                            <a href="<%=url%>"> 
                                <button type="button" class="btn btn-danger btn-rounded" style="font-size: 12px; padding: 2px 6px 2px 6px;">Delete</button>
                            </a>
                        </td>
                    </tr>
                     <%
                        }
                    }catch(Exception e){
                        e.printStackTrace();
                        out.println(e);
                    }
                    %>
                  </tbody>
                </table>
              </div>
              <div class="text-center">
                  <a href="addCourseAdminForm.jsp">
                    <button type="button" class="btn btn-success btn-rounded">Add Course</button>
                  </a>
            </div>
        </div>
        <div class="height-100" id="a-students">
            <h4>All Students</h4>
            <div class="table-wrapper-scroll-y my-custom-scrollbar">
                <table class="table table-bordered table-striped mb-0">
                  <thead>
                    <tr>
                      <th scope="col">Student ID</th>
                      <th scope="col">Student Name</th>
                      <th scope="col">Phone no.</th>
                      <th scope="col">E-Mail</th>
                      <th scope="col">Action</th>
                    </tr>
                  </thead>
                  <tbody>
                      <!--get all student using jsp start-->
                        <%
                            try{

                           Connection con = ConnectionProvider.getConnection();    
                           String query = "select * from student";
                           Statement stm = con.createStatement();
                           ResultSet rs = stm.executeQuery(query);
                            while(rs.next()){
                      %>
                    <tr>
                      <td><%=rs.getString("id")%></td>
                      <td><%=rs.getString("name")%></td>                      
                      <td><%=rs.getString("phone")%></td>
                      <td><%=rs.getString("email")%></td>
                      <td><button type="button" class="btn btn-primary btn-rounded" style="font-size: 12px; padding: 2px 6px 2px 6px;">More</button></td>
                    </tr>
                    
                    <%
                        }
                    }catch(Exception e){
                        e.printStackTrace();
                        out.println(e);
                    }
                    %>
                  </tbody>
                </table>
              </div>
        </div>
        
        
        
        <div class="height-100" id="a-faculties">
            <h4>All Faculties</h4>
            <div class="table-wrapper-scroll-y my-custom-scrollbar">
                <table class="table table-bordered table-striped mb-0">
                  <thead>
                    <tr>
                      <th scope="col">Faculty ID</th>
                      <th scope="col">Faculty Name</th>
                      <th scope="col">Courses</th>
                      <th scope="col">E-Mail</th>
                      <th scope="col">Action</th>
                    </tr>
                  </thead>
                  <tbody>
                      
                      <!--get all faculties using jsp start-->
                        <%
                            try{

                            Connection con = ConnectionProvider.getConnection();    
                           String query = "select * from faculty";
                           Statement stm = con.createStatement();
                           ResultSet rs = stm.executeQuery(query);
                            while(rs.next()){
                                query = "select c_name from course where f_id="+rs.getString("f_id");
                                Statement stm2 = con.createStatement();
                               ResultSet rs2 = stm2.executeQuery(query);
                               String cname="";
                               while(rs2.next()){
                                    cname += rs2.getString("c_name");
                                    cname+=", ";
                               }
                               cname = cname.substring(0, cname.length() - 2);
                      %>
                    <tr>
                      <td><%=rs.getString("f_id")%></td>
                      <td><%=rs.getString("f_name")%></td>
                      <td><%=cname%></td>                      
                      <td><%=rs.getString("f_email")%></td>
                      <td>
                          <%String url = "deleteFaculty?id="+rs.getString("f_id");%>   
                          <a href="<%=url%>"> 
                          <button type="button" class="btn btn-danger btn-rounded" style="font-size: 12px; padding: 2px 6px 2px 6px;">Delete</button>
                          </a>
                          <% url = "openUpdateFaculty?id="+rs.getString("f_id");%>   
                          <a href="<%=url%>"> <button type="button" class="btn btn-success btn-rounded" style="font-size: 12px; padding: 2px 6px 2px 6px;">Update</button></a>
                      </td>
                    </tr>
                    <%
                        }
                    }catch(Exception e){
                        e.printStackTrace();
                        out.println(e);
                    }
                    %>
                    <!--get all faculties using jsp end-->

                  </tbody>
                </table>
              </div>
              <div class="text-center">
                  <a href="addFacultyForm.jsp"><button type="button" class="btn btn-success btn-rounded">Add Faculty</button></a>
            </div>
        </div>
        <div class="height-100" id="a-assignments">
            <h4>Assignments</h4>
            <div class="table-wrapper-scroll-y my-custom-scrollbar">
                <table class="table table-bordered table-striped mb-0">
                    <thead>
                    <tr>
                        <th scope="col">Student ID</th>
                        <th scope="col">Student Name</th>
                        <th scope="col">Courses</th>
                        <th scope="col">Assignment</th>
                    </tr>
                    </thead>
                    <tbody>
                    <tr>
                        <th scope="row">1</th>
                        <td>Mark</td>
                        <td>Otto</td>
                        <td>@mdo</td>
                    </tr>
                    </tbody>
                </table>
            </div>
        </div>
        <div class="height-100" id="a-report">
            <h4>Report</h4>
        </div>
    </body>
</html>
