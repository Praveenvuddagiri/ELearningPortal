<%-- 
    Document   : course-access
    Created on : 27-Jun-2022, 11:28:46 pm
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
    <title>Learn Course</title>
</head>

<body>
    <!-- Navbar -->
    <nav class="navbar navbar-expand-lg navbar-light fixed-top">
        <!-- Container wrapper -->
        <div class="container">
            <!-- Navbar brand -->
            <a href="enrolled-course-view.jsp?c_id=<%=request.getParameter("c_id")%>"><button type="button" class="btn btn-primary me-3 mt-4">
                    <i class="fa-solid fa-arrow-left"></i> Back
                </button></a>
        </div>
    </nav>
    <!-- Navbar -->
    <div style="height: 100vh;" id="c-one">
        <div style=" height: 100px;"></div>
        <div class="row" style="margin: 0% 8% 3% 8%;">
            <div class="card text-center shadow" id="firstcard">
                <div style="padding-top: 20px; font-size: 22px;">Module 1 : Introduction</div>
                <hr>
                <div class="card-body">
                    <h5 class="card-title">Special title treatment</h5>
                    <p class="card-text">Click below to download the module notes.</p>
                    <a href="#" class="btn btn-primary"><i class="fa-solid fa-download"></i> Download</a>
                </div>
            </div>

            <div class="card shadow" id="secondcard" style="margin-left: 50px;">
                <iframe width="820" height="413" src="https://www.youtube.com/embed/sY-s7O0FiYE"
                    title="Introduction to Pointers | C Language Tutorial" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen style="margin-top: 12px; border-radius: 3px;"></iframe>
                <p class="text-center" style="margin-top: 12px;">Course Video</p>
            </div>
        </div>
        <div class="text-center">
            <a href=""><button type="button" class="btn btn-primary btn-rounded"
                    style="border-radius: 25px; margin-right: 40px;"><i class="fa-solid fa-circle-arrow-up"></i>
                    Previous</button></a>
            <a href="#c-two"><button type="button" class="btn btn-success btn-rounded" style="border-radius: 25px;"><i
                        class="fa-solid fa-circle-arrow-down"></i> Next</button></a>
        </div>
    </div>

    <div style="height: 100vh;" id="c-two">
        <div style=" height: 100px;"></div>
        <div class="row" style="margin: 0% 8% 3% 8%;">
            <div class="card text-center shadow" id="firstcard">
                <div style="padding-top: 20px; font-size: 22px;">Module 2 : Data Type</div>
                <hr>
                <div class="card-body">
                    <h5 class="card-title">Special title treatment</h5>
                    <p class="card-text">Click below to download the module notes.</p>
                    <a href="#" class="btn btn-primary"><i class="fa-solid fa-download"></i> Download</a>
                </div>
            </div>

            <div class="card shadow" id="secondcard" style="margin-left: 50px;">
                <iframe width="820" height="413" src="https://www.youtube.com/embed/cnT1oW5_ePM"
                    title="Introduction to Pointers | C Language Tutorial" frameborder="0"
                    allow="accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture"
                    allowfullscreen style="margin-top: 12px; border-radius: 3px;"></iframe>
                <p class="text-center" style="margin-top: 12px;">Course Video</p>
            </div>
        </div>
        <div class="text-center">
            <a href="#c-one"><button type="button" class="btn btn-primary btn-rounded"
                    style="border-radius: 25px; margin-right: 40px;"><i class="fa-solid fa-circle-arrow-up"></i>
                    Previous</button></a>
            <a href=""><button type="button" class="btn btn-success btn-rounded" style="border-radius: 25px; "><i
                        class="fa-solid fa-circle-arrow-down"></i> Next</button></a>
        </div>
    </div>
</body>

<style>
    @import url("https://fonts.googleapis.com/css2?family=Poppins:wght@400;600;700&display=swap");

    html {
        scroll-behavior: smooth;
    }

    body {
        font-family: 'Poppins', sans-serif;
        background-color: rgb(236, 236, 236);
        overflow: hidden;
    }

    #firstcard {
        width: 30%;
    }

    #secondcard {
        width: 845px;
        height: 473px;
    }
</style>

</html>