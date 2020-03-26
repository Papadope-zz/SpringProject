<%@page contentType="text/html" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Registration Page</title>
        <!-- External Sources -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
        <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
        <!-- Internal File for CSS Styles and Images-->
        <link href="css/styles.css" rel="stylesheet" />
        <link rel='icon' href='img/favicon.ico' type='img/java'/>
    </head>
    <body>
        <!-- Navigation Section -->
        <div>
            <div class="pos-f-t">
                <div class="collapse" id="navbarToggleExternalContent">
                    <div class="bg-dark p-4">
                        <h4 class="text-white">Main Menu</h4>
                        <a href="index.html" id="menu">Home</a><br>
                        <a href="getAllTrainers" id="menu">See all Trainers</a><br>
                        <a href="preCreate" id="menu">Create Trainer</a><br>
                    </div>
                </div>
                <nav class="navbar navbar-dark bg-dark">
                    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarToggleExternalContent" aria-controls="navbarToggleExternalContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                </nav>
            </div>
        </div>
        <!-- MastHead Section -->
        <header class="masthead">
            <div class="container h-100">
                <div class="row h-100 align-items-center justify-content-center text-center">
                    <div class="col-lg-10 align-self-end">
                        <h1 class="text-uppercase text-white font-weight-bold">Welcome to Trainer APP</h1>
                        <hr class="divider my-4" />
                    </div>
                    <div class="col-lg-8 align-self-baseline">
                        <p class="text-white-75 font-weight-light mb-5" style="color: white">This project is made with Bootstrap | JQuery | JPA | JSTL | SpringBoot | MySQL | Maven | Hibernate and of course our favorite JAVA!</p>
                        <a class="btn btn-primary btn-xl js-scroll-trigger" href="preCreate">Create a Trainer now!</a>
                    </div>
                </div>
            </div>
        </header>
        <!-- Download Section -->
        <section class="page-section bg-dark text-white">
            <div class="container text-center">
                <h2 class="mb-4">Free Download Source Code</h2>
                <a class="btn btn-light btn-xl" href="">Comming Soon!</a>
            </div>
        </section>
        <!-- Form Section -->
        <div class="container">
            <div class="span12" align="center">
                <form:form cssClass="form-horizontacssClassl" action='updateTrainer' method="POST" modelAttribute="Trainer">
                    <fieldset>
                        <div id="legend">
                            <legend class="">Update</legend>
                        </div>
                        <div class="control-group">
                            <div class="controls">
                                <form:hidden path="trainerid" placeholder="${trainerid}"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="firstname">First Name</label>
                            <div class="controls">
                                <form:input path="firstname" cssClass="input-xlarge" placeholder="${firstname}"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="lastname">Last Name</label>
                            <div class="controls">
                                <form:input path="lastname" cssClass="input-xlarge" placeholder="${lastname}"/>
                            </div>
                        </div>
                        <div class="control-group">
                            <label class="control-label" for="subject">Subject</label>
                            <div class="controls">
                                <form:input path="subject" cssClass="input-xlarge" placeholder="${subject}"/>
                            </div>
                        </div>
                        <br><br>
                        <div class="control-group">
                            <!-- Button -->
                            <div class="controls">
                                <button class="btn btn-success">Update</button>
                            </div>
                        </div>
                    </fieldset>
                </form:form>
            </div>
        </div>
    </body>
</html>