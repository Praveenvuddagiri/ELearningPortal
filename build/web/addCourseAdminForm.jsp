<%-- 
    Document   : addCourseAdminForm
    Created on : 07-Jun-2022, 6:20:43 am
    Author     : praveen vuddagiri
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="com.learning.helper.ConnectionProvider"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" href="css/addFaculty.css"/>
        <title>Add Course</title>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" crossorigin="anonymous">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;700&display=swap" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.15.4/css/all.css" integrity="sha384-DyZ88mC6Up2uqS4h/KRgHuoeGwBcD4Ng9SiP4dIRy0EXTlnuz47vAwmeGwVChigm" crossorigin="anonymous"/>
        <link href="https://maxcdn.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
    </head>

    <body style="background-color: #7c7cf3;">     
        <div class="wrapper rounded bg-white">

            <div class="h3">Add Course</div>

            <form method="post" id="reg-form" action="addCourseAdmin" >
                <div class="form">
                    <div class="row">
                        <div class="col-md-6 mt-md-0 mt-3">
                            <label>Course Name</label>
                            <input name="cname" type="text" class="form-control" ondrop="return false;" onpaste="return false; " onkeypress="return (event.charCode>=65 && event.charCode<=90) || (event.charCode>=97 && event.charCode<=122) || event.charCode==32" required>
                        </div>
                        <div class="col-md-6 mt-md-0 mt-3">
                            <label>Course Price</label>
                            <div class="input-group mb-3">
                                <span class="input-group-text">???</span>
                                <input name="cprice" type="text" class="form-control" aria-label="Amount (to the nearest dollar)" onpaste="return false; " onkeypress="return event.charCode>=48 && event.charCode<=57" required>
                                <span class="input-group-text">.00</span>
                            </div>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mt-md-0 mt-3">
                            <label>Duration(months)</label>
                            <input name="cdur" type="text" class="form-control" onpaste="return false; " onkeypress="return event.charCode>=48 && event.charCode<=57" required>
                        </div>

                        <div class="col-md-6 mt-md-0 mt-3">
                            <label>Category</label>
                            <select id="sub" required name="cat">
                                <option value="" selected hidden>Choose Option</option>
                                <%
                                    try {

                                        Connection con = ConnectionProvider.getConnection();
                                        String query = "select * from category";
                                        Statement stm = con.createStatement();
                                        ResultSet rs = stm.executeQuery(query);
                                        while (rs.next()) {
                                %>
                                <option value='<%=rs.getString("cat_id")%>'  ><%=rs.getString("cat_name")%></option>
                                <%
                                        }
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                        out.println(e);
                                    }
                                %>

                            </select>
                        </div>
                    </div>
                    <div class="row">
                        <div class="col-md-6 mt-md-0 mt-3" >
                            <label>Faculty</label>
                            <select id="sub" required name="fac">
                                <option value="" selected hidden>Choose Option</option>
                                <%
                                    try {

                                        Connection con = ConnectionProvider.getConnection();
                                        String query = "select * from faculty";
                                        Statement stm = con.createStatement();
                                        ResultSet rs = stm.executeQuery(query);
                                        while (rs.next()) {
                                %>
                                <option value='<%=rs.getString("f_id")%>'  ><%=rs.getString("f_name")%></option>
                                <%
                                        }
                                    } catch (Exception e) {
                                        e.printStackTrace();
                                        out.println(e);
                                    }
                                %>
                            </select>
                        </div>

                        <div class="col-md-6 mt-md-0 mt-3" >
                            <label>Course Image</label>
                            <input type="file" name="cimg" class="form-control" required>
                        </div>
                    </div>

                    <div class=" my-md-2 my-3">
                        <label>Description</label>
                        <textarea id="sub" rows="4" required name="cdesc">
                        </textarea>
                    </div>

                    <button class="btn btn-primary" id="loader" disabled style=" display:none; background-color: #2b6777; height: 38px; margin-top: 14px; text-align: center">
                        <span class="spinner-border spinner-border-sm" role="status" aria-hidden="true"></span>
                        Loading...
                    </button>

                    <input id="add-course" type="submit" value="Submit" class="btn btn-primary mt-3">

                    <a href="admin.jsp#a-courses"><div class="btn btn-danger mt-3">
                            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-arrow-left" viewBox="0 0 16 16">
                            <path fill-rule="evenodd" d="M15 8a.5.5 0 0 0-.5-.5H2.707l3.147-3.146a.5.5 0 1 0-.708-.708l-4 4a.5.5 0 0 0 0 .708l4 4a.5.5 0 0 0 .708-.708L2.707 8.5H14.5A.5.5 0 0 0 15 8z"/>
                            </svg> Back</div>
                    </a>
                </div>
            </form>

        </div>
    </body>
    <script
        src="https://code.jquery.com/jquery-3.4.1.min.js"
        integrity="sha256-CSXorXvZcTkaix6Yvo6HppcZGetbYMGWSFlBw8HfCJo="
    crossorigin="anonymous"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>

    <script src="https://cdnjs.cloudflare.com/ajax/libs/sweetalert/2.1.2/sweetalert.min.js"></script><!-- comment -->
    <script src="https://unpkg.com/sweetalert/dist/sweetalert.min.js"></script>
    <script>
        $(document).ready(function () {
            console.log("loaded........");
            $('#reg-form').on('submit', function (event) {
                event.preventDefault();
                let form = new FormData(this);
                $("#add-course").hide();
                $("#loader").show();
                //send register servlet:
                $.ajax({
                    url: "addCourseAdmin",
                    type: 'POST',
                    data: form,
                    success: function (data, textStatus, jqXHR) {
                        console.log(data);
                        $("#add-course").show();
                        $("#loader").hide();
                        if (data.trim() === 'done')
                        {
                            swal("Registered successfully..We are going to redirect to admin page")
                                    .then((value) => {
                                        window.location = "admin.jsp#a-courses"   //to be handled
                                    });
                        } else
                        {
                            swal(data);
                        }
                    },
                    error: function (jqXHR, textStatus, errorThrown) {
                        $("#add-course").show();
                        $("#loader").hide();
                        swal("something went wrong..try again");
                    },
                    processData: false,
                    contentType: false
                });
            });
        });
    </script>

</html>