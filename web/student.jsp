<%-- 
    Document   : student
    Created on : 25-Jun-2022, 8:04:31 pm
    Author     : praveen vuddagiri
--%>

<%@page import="com.learning.entities.student"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
    <head>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
        <link rel="stylesheet" href="css/studentcss.css">
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css" integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g==" crossorigin="anonymous" referrerpolicy="no-referrer" />
        <script src="js/studentjs.js"></script>
        <title>Welcome Student</title>
    </head>
    <body id="body-pd" style="overflow-y: hidden;" >
        
        <%
            
            student st = (student)session.getAttribute("Student");
            if(st==null){
                response.sendRedirect("studentLog.jsp");
                st = new student();
                st.setPass("");
            }
        %>
        <header class="header" id="header">
            <div class="header_toggle"> <i class='bx bx-menu' id="header-toggle"></i> </div>
        </header>
        <div class="l-navbar" id="nav-bar" >
            <nav class="nav">
                <div> <p href="" class="nav_logo"> <i class='bx bx-user nav_logo-icon'></i> <span class="nav_logo-name">E-Learning</span> </p>
                    <div class="nav_list"> 
                    <a href="#s-dashboard" class="nav_link active"> <i class='bx bx-grid-alt nav_icon'></i> <span class="nav_name" id="dashboard">Dashboard</span> </a> 
                    <a href="#s-courses" class="nav_link"> <i class='bx bx-book-content nav_icon'></i> <span class="nav_name" id="allcourses">Courses</span> </a> 
                    <a href="#s-certificates" class="nav_link" > <i class="fa-solid fa-address-card"></i> <span class="nav_name" id="allstudents">Certificates</span> </a> 
                    <a href="#s-transactions" class="nav_link" > <i class="fa-solid fa-money-check-dollar"></i> <span class="nav_name" id="allstudents">Transactions</span> </a>
                    </div>
                </div> <a href="adminLogout" class="nav_link"> <i class='bx bx-log-out nav_icon'></i> <span class="nav_name">Sign Out</span> </a>
            </nav>
        </div>
        <!--Container Main start-->
        <div class="height-100 " id="s-dashboard">
            <h4>Dashboard</h4>
                <section>
                    <div class=" py-3" style="padding-right: 18px;">
                      <div class="row">
                        <div class="col-lg-4">
                          <div class="card mb-4 shadow bg-white rounded">
                            <div class="card-body text-center">
                              <img src="src/stud-img/<%=st.getImg()%>" alt="avatar"
                                class="rounded-circle img-fluid" style="width: 109.5px;">
                              <h5 class="my-3"><%= st.getName() %></h5>
                              <div class="d-flex justify-content-center mb-2">
                                  <a href="updateStudent.jsp"><button type="button" class="btn btn-outline-primary ms-1">Edit Profile</button></a>
                              </div>
                            </div>
                          </div>
                          <div class="card mb-4 mb-lg-0 shadow bg-white rounded">
                            <div class="card-body p-0">
                              <ul class="list-group list-group-flush rounded-3 scroll">
                                <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                                  <h5 class="mb-0">Courses Enrolled</h5>
                                </li>
                                <%
                                    
                                %>
                                <li class="list-group-item d-flex justify-content-between align-items-center p-3">
                                  <p class="mb-0">Java</p>
                                </li>
                                
                              </ul>
                            </div>
                          </div>
                        </div>
                        <div class="col-lg-8">

                        <div class="card mb-4 shadow bg-white rounded" >
                            <div class="card-body">
                                
                                <p class="mb-0" style="font-size: 30px;">Profile</p>
                                
                                <hr>
                                <div class="row">
                                <div class="col-sm-3">
                                    <p class="mb-0">Full Name</p>
                                </div>
                                <div class="col-sm-9">
                                    <p class="text-muted mb-0"><%= st.getName() %></p>
                                </div>
                                </div>
                                <hr>
                                <div class="row">
                                <div class="col-sm-3">
                                    <p class="mb-0">Email</p>
                                </div>
                                <div class="col-sm-9">
                                    <p class="text-muted mb-0"><%= st.getEmail() %></p>
                                </div>
                                </div>
                                <hr>
                                <div class="row">
                                <div class="col-sm-3">
                                    <p class="mb-0">Phone</p>
                                </div>
                                <div class="col-sm-9">
                                    <p class="text-muted mb-0"><%= st.getPhone() %></p>
                                </div>
                                </div>
                                <hr>
                                <div class="row">
                                <div class="col-sm-3">
                                    <p class="mb-0">Address</p>
                                </div>
                                <div class="col-sm-9">
                                    <p class="text-muted mb-0"><%= st.getAdd() %></p>
                                </div>
                                </div>
                                <hr>
                                <div class="row">
                                <div class="col-sm-3">
                                    <p class="mb-0">Gender</p>
                                </div>
                                <div class="col-sm-9">
                                    <p class="text-muted mb-0"><%= st.getGen() %></p>
                                </div>
                                </div>
                                <hr>
                                <div class="row">
                                <div class="col-sm-3">
                                    <p class="mb-0">Password</p>
                                </div>
                                <div class="col-sm-9">
                                    <%
                                        String pass = "";
                                        for(int i=0;i<st.getPass().length();i++){
                                            
                                            if(i>2){
                                                pass+="*";
                                            }else{
                                                pass+=st.getPass().charAt(i);
                                            }
                                            
                                        }
                                    %>
                                    <p class="text-muted mb-0"><%= pass %></p>
                                </div>
                                </div>
                                <hr>
                                <div class="row">
                                <div class="col-sm-3">
                                    <p class="mb-0">DOB</p>
                                </div>
                                <div class="col-sm-9">
                                    <p class="text-muted mb-0"><%= st.getDob() %></p>
                                </div>
                                </div>
                                <hr>
                                <div class="row">
                                <div class="col-sm-3 " >
                                    <p class="mb-0">College Name</p>
                                </div>
                                <div class="col-sm-9">
                                    <p class="text-muted mb-0"><%= st.getClg() %></p>
                                </div>
                                </div>
                            </div>

                        </div>
                          
                        </div>
                      </div>
                    </div>
                  </section>


        </div>
        <div class="height-100 " id="s-courses">
            <h4>Courses</h4>
            <div class="tabs" style="margin-top: 20px;">
                <input type="radio" name="tabs" id="tabone" checked="checked">
                <label for="tabone">Current</label>
                <div class="tab">
                    <div class="row">
                   <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.1s">
                    <div class="course-item bg-light">
                        <div class="position-relative overflow-hidden">
                            <img class="img-fluid" src="../img/course1.png" alt="">
                        </div>
                        <div class="text-center p-4 pb-0">
                            <h5 class="mb-4">Machine Learning</h5>
                        </div>
                        <div class="d-flex border-top">
                            <small class="flex-fill text-center border-end py-2"><i class="fa fa-file text-primary me-2"></i>4 Modules</small>
                            <small class="flex-fill text-center border-end py-2"><i class="fa fa-clock text-primary me-2"></i>300 Hrs</small>
                            <small class="flex-fill text-center py-2"><i class="fa fa-arrow-right text-primary me-2"></i>Read More</small>
                        </div>
                    </div>
                </div>
                </div>
                </div>
                
                <input type="radio" name="tabs" id="tabtwo">
                <label for="tabtwo">Completed</label>
                <div class="tab">
                    <div class="row">
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.3s">
                    <div class="course-item bg-light">
                        <div class="position-relative overflow-hidden">
                            <img class="img-fluid" src="../img/course2.svg" alt="">
                        </div>
                        <div class="text-center p-4 pb-0">
                            <h5 class="mb-4">Java Development Course for Beginners</h5>
                        </div>
                        <div class="d-flex border-top">
                            <small class="flex-fill text-center border-end py-2"><i class="fa fa-file text-primary me-2"></i>3 Modules</small>
                            <small class="flex-fill text-center border-end py-2"><i class="fa fa-clock text-primary me-2"></i>300 Hrs</small>
                            <small class="flex-fill text-center py-2"><i class="fa fa-arrow-right text-primary me-2"></i>Read More</small>
                        </div>
                    </div>
                    </div>
                    <div class="col-lg-4 col-md-6 wow fadeInUp" data-wow-delay="0.5s">
                        <div class="course-item bg-light">
                            <div class="position-relative overflow-hidden">
                                <img class="img-fluid" src="../img/course3.png" alt="">
                            </div>
                            <div class="text-center p-4 pb-0">
                                <h5 class="mb-4">Android Development Course for Beginners</h5>
                            </div>
                            <div class="d-flex border-top">
                                <small class="flex-fill text-center border-end py-2"><i class="fa fa-file text-primary me-2"></i>5 Modules</small>
                                <small class="flex-fill text-center border-end py-2"><i class="fa fa-clock text-primary me-2"></i>300 Hrs</small>
                                <small class="flex-fill text-center py-2"><i class="fa fa-arrow-right text-primary me-2"></i>Read More</small>
                            </div>
                        </div>
                    </div>
                </div>
                </div>
            </div>   
        </div>
        <div class="height-100" id="s-certificates">
            <h4>Certificates</h4>
            <div class="table-wrapper-scroll-y my-custom-scrollbar">
                <table class="table table-bordered table-striped mb-0">
                  <thead>
                    <tr>
                      <th scope="col">Course ID</th>
                      <th scope="col">Course Name</th>
                      <th scope="col">Duration</th>
                      <th scope="col">Date of Issue</th>
                      <th scope="col">Total Marks obtained</th>
                      <th scope="col">Certificate</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <td>PJ12</td>
                      <td>Java</td>
                      <td>2 Months</td>
                      <td>21-02-2022</td>
                      <td>97</td>
                      <td><button type="button" class="btn btn-primary btn-rounded" style="font-size: 12px; padding: 2px 6px 2px 6px;">View Certificate</button></td>
                    </tr>
                    
                  </tbody>
                </table>
              </div>
        </div>
        <div class="height-100" id="s-transactions">
            <h4>Transaction History</h4>
            <div class="table-wrapper-scroll-y my-custom-scrollbar">
                <table class="table table-bordered table-striped mb-0">
                  <thead>
                    <tr>
                      <th scope="col">Course ID</th>
                      <th scope="col">Course Name</th>
                      <th scope="col">Date of Purchase</th>
                      <th scope="col">Payment Method</th>
                      <th scope="col">Transaction ID</th>
                    </tr>
                  </thead>
                  <tbody>
                    <tr>
                      <th>1</th>
                      <td>Mark</td>
                      <td>Otto</td>
                      <td>G-Pay</td>
                      <td>@mdo</td>
                    </tr>
                  </tbody>
                </table>
              </div>
        </div>
    </body>
</html>