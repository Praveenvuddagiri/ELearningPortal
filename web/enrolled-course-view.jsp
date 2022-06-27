<%-- 
    Document   : enrolled-course-view
    Created on : 27-Jun-2022, 5:06:11 pm
    Author     : praveen vuddagiri
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">

<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/css/bootstrap.min.css">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta1/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/boxicons@latest/css/boxicons.min.css">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.1.1/css/all.min.css"
        integrity="sha512-KfkfwYDsLkIlwQp6LFnl8zNdLGxu9YAA1QvwINks4PhcElQSvqcyVLLD9aMhXd13uQjoXtEKNosOWaZqXgel0g=="
        crossorigin="anonymous" referrerpolicy="no-referrer" />
    <link rel="stylesheet" href="css/ecv-homecss.css">
    <title>Course - View</title>
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top">
        <!-- Container wrapper -->
        <div class="container">
            <!-- Navbar brand -->
            <a href="student.jsp#s-courses"><button type="button" class="btn btn-primary me-3 mt-4">
                <i class="fa-solid fa-arrow-left"></i> Back
                </button></a>
        </div>
    </nav>
    <!-- Navbar -->
    <div style="height: 100vh; padding-top: 5%;">
        <div class="wrapper">
            <h1>Java Course</h1>
            <div class="cols">
                <div class="col" ontouchstart="this.classList.toggle('hover');">
                    <div class="container">
                        <div class="front" style="background-image: url(src/course-img.jpg)">
                            <div class="inner">
                                <p style="font-size: 30px;">Course</p>
                                <span>Read Modules <i class="fa-solid fa-arrow-right"></i></span>
                            </div>
                        </div>
                        <div class="back">
                            <div class="inner">
                                <p> From this page you can get access to all the course modules. </p>
                                <a href="course-access.jsp?c_id=<%=request.getParameter("c_id")%>"><button type="button" class="btn btn-primary">Access
                                        Course</button></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col" ontouchstart="this.classList.toggle('hover');">
                    <div class="container">
                        <div class="front" style="background-image: url(src/project-img.jpg)">
                            <div class="inner">
                                <p style="font-size: 30px;">Project</p>
                                <span>Submit Project<i class="fa-solid fa-arrow-right"></i></span>
                            </div>
                        </div>
                        <div class="back">
                            <div class="inner">
                                <p>From this page you can study description of course project and after you can also submit your project.</p>
                                <a href="project-submit.jsp?c_id=<%=request.getParameter("c_id")%>"><button type="button" class="btn btn-primary">Upload
                                        Project</button></a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col" ontouchstart="this.classList.toggle('hover');">
                    <div class="container">
                        <div class="front" style="background-image: url(src/exam-img.jpg)">
                            <div class="inner">
                                <p style="font-size: 30px;">Exam</p>
                                <span>Give Exam<i class="fa-solid fa-arrow-right"></i></span>
                            </div>
                        </div>
                        <div class="back">
                            <div class="inner">
                                <p>From this page you can give exam and prove your understanding level of this course. Based on performance your certificate will be issued.</p>
                                <a href="exam-des.jsp?c_id=<%=request.getParameter("c_id")%>"><button type="button" class="btn btn-primary">Start
                                        Exam</button></a>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</body>

</html>
