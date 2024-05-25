<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Add new project</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css" rel="stylesheet">
    <style><%@include file="../CSS/style.css"%></style>
    <link rel="stylesheet" href="../CSS/style.css">
    <!--
      - google font link
    -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link href="https://cdn.jsdelivr.net/npm/remixicon@3.5.0/fonts/remixicon.css" rel="stylesheet">

        <style>

        form {
            max-width: 600px;
            margin: auto;
            padding: 1em;
            border: 1px solid #ccc;
            border-radius: 1em;
            background-color: #ffcb0f ;
        }
        div.form-group {
            margin-bottom: 1em;
        }
        label {
            margin-bottom: .5em;
            color: #333333;
            display: block;
        }
        input, textarea {
            border: 1px solid #CCCCCC;
            padding: .5em;
            font-size: 1em;
            width: 100%;
            box-sizing: border-box;
        }
         input[type="submit"] {
            padding: 0.7em;
            color: #ffcb0f;
            background-color: #fff;
            border: none;
            border-radius: .3em;
            cursor: pointer;
            width: 160px;
            margin-left: 200px;
        }
        input[type="submit"]:hover {
            background-color: #ffffff;
        }
        /*list*/


        .project-cards {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .project-card {
            background-color:#ffcb0f;
            border-radius: 10px;
            box-shadow: 0 0 10px rgb(255, 219, 41);
            padding: 20px;
            width: 500px;
            transition: transform 0.3s ease;
        }

        .project-card:hover {
            transform: translateY(-5px);
        }

        .project-card h2 {
            font-size: 1.5rem;
            color: #333333;
            margin-bottom: 10px;
        }

        .project-card p {
            margin-bottom: 10px;
            color: #666666;
        }

        .button-container {
            display: flex;
            justify-content: space-between;
        }

        .button-container a {
            text-decoration: none;
            padding: 8px 15px;
            border-radius: 5px;
            color: #ffffff;
            font-weight: bold;
            transition: background-color 0.3s ease;
        }
        .button-add{
            background-color: #ffcb0f;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-size: 16px;
            width: 153px;
            margin-top: 30px;
            margin-left: 650px;
        }
        .button-container a.task-button {
            background-color: #007bff;
        }

        .button-container a.update-button {
            background-color: #28a745;
        }

        .button-container a.delete-button {
            background-color: #dc3545;
        }
        .button-container a.button-add {
            display: inline-block;
            padding: 10px 20px;
            background-color: #ffcb0f ;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
            transition: background-color 0.3s ease;
        }
        .button-container a:hover {
            background-color: rgba(0, 0, 0, 0.5);
        }
        /* nav footer .. */
        @keyframes fadeInUp {
            from {
                opacity: 0;
                transform: translateY(20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
        /* contact 2 */
        /* about diff */

        @keyframes titleAnimation {
            0% {
                color: #555;
            }
            100% {
                color: #333;
            }
        }
        #hey {
            background-color: black;
            padding: 10px 0;
            text-align: center;
            color: #ffcb0f;
        }

        .contact-info {
            display: flex;
            justify-content: space-around;
            align-items: center;
            transition: background-color 0.3s ease;
        }
        .contact-info div {
            flex: 1;
        }

        .social-icons a {
            margin-left: 10px;
            color: #000;
            text-decoration: none;
            transition: background-color 0.3s ease;

        }

        #home .section__container {
            animation: fadeInUp 0.5s ease forwards;
        }
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: 'Poppins', sans-serif;
        }

        body {
            background-color: #ffcb0f;
            font-family: 'Poppins', sans-serif;

        }
        .welcome-section {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 50px;
            background-color: #f9f9f9;
        }

        .welcome-content {
            max-width: 600px;
            margin-right: 20px;
            transition: transform 0.3s ease;

        }

        .welcome-content h2 {
            color: #ffc400;
            font-size: 36px;
            margin: 0 0 10px;
        }

        .welcome-content h3 {
            color: #333;
            font-size: 24px;
            margin: 0 0 20px;
        }

        .welcome-content p {
            color: #666;
            line-height: 1.6;
            margin: 0 0 20px;
            transition: transform 0.3s ease;

        }

        .btn {
            display: inline-block;
            background-color: #ffc400;
            color: #000;
            padding: 10px 20px;
            text-decoration: none;
            border-radius: 5px;
            font-weight: bold;
        }

        .welcome-image img {
            max-width: 100%;
            height: auto;
            border-radius: 10px;
            transition: transform 0.3s ease;

        }
        .welcome-image {
            flex: 1;
            transition: transform 0.3s ease;
        }
        .popup {
            display: none;
            position: fixed;
            left: 50%;
            top: 50%;
            transform: translate(-50%, -50%);
            padding: 20px;
            background: white;
            border: 1px solid #ccc;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
        .popup .close-btn {
            display: inline-block;
            margin-top: 10px;
            padding: 5px 10px;
            background-color: #f44336;
            color: #fff;
            text-decoration: none;
            border-radius: 5px;
        }
        .nav {
            position: fixed;
            width: 100%;
            z-index: 1000;
            background-color: #fff;
            box-shadow: 0px 2px 10px rgba(0, 0, 0, 0.1);
        }

        .nav__bar {
            display: flex;
            justify-content: space-between;
            align-items: center;
            padding: 20px 50px;
            max-width: 1200px;
            margin: 0 auto;
            background-color: #ffcb0f;
        }

        .logo {
            display: flex;
            align-items: center;
            font-weight: 700;
        }

        .logo div {
            background-color: #ffcb0f ;
            color: #fff;
            width: 50px;
            height: 50px;
            border-radius: 50%;
            display: flex;
            justify-content: center;
            align-items: center;
            margin-right: 10px;
            font-size: 24px;
        }

        .nav__links {
            display: flex;
            list-style: none;
            color: black;

        }

        .nav__links li {
            margin-right: 20px;
            color: black;
        }

        .nav__links li a {
            text-decoration: none;
            color: black;
            transition: color 0.3s ease;
        }

        .nav__links li a:hover {
            color: white ;
        }

        header {
            background-image: url(https://paulsenconstruction.com/wp-content/uploads/2015/12/Paulsen-Construction_Equipment-Image.jpg) ;background-size: cover;background-position: center;min-height: 750px;height: 100vh;max-height: 1000px;display: flex;justify-content: flex-start;align-items: center;padding-block: var(--section-padding);background-repeat: no-repeat;
        ");
        background-size: cover;
            text-align: center;
            padding: 100px 0;
        }

        header h1 {
            font-size: 48px;
            font-weight: 700;
            margin-bottom: 20px;
            color: white;
        }

        header p {
            font-size: 18px;
        }

        section {
            padding: 80px 0;
            text-align: center;
        }

        .section__container {
            max-width: 800px;
            margin: 0 auto;
        }

        .section__container h2 {
            font-size: 36px;
            font-weight: 700;
            margin-bottom: 20px;
            color: #333;
        }

        .section__container p {
            font-size: 18px;
            line-height: 1.6;
            color: #666;
        }

        button {
            background-color: blue;
            color: white;
            padding: 10px 20px;
            border: none;
            border-radius: 3px;
            cursor: pointer;
            font-size: 16px;
            width: 150px;
            margin-top: 10px;
        }

        button:hover {
            background-color: #ffcb0f ;
        }
        footer {
            background-color: black;
            color: #fff;
            padding: 50px 0;
        }

        .filter-buttons {
            margin-bottom: 30px;
        }

        .filter-btn {
            background-color: #333;
            color: #fff;
            border: none;
            border-radius: 20px;
            padding: 10px 20px;
            margin: 0 10px;
            cursor: pointer;
            font-size: 14px;
        }

        .filter-btn.active,
        .filter-btn:hover {
            background-color: #555;
        }

        .gallery {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .gallery-item {
            display: none; /* Hidden by default */
            max-width: 300px;
            margin: 10px;
        }

        .gallery-item img {
            width: 100%;
            border-radius: 10px;
        }

        footer .footer__container {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
            max-width: 1200px;
            margin: 0 auto;
        }

        footer .footer__col {
            width: calc(25% - 20px);
            text-align: left;
            color: white;
        }

        footer h4 {
            font-size: 20px;
            font-weight: 700;
            margin-bottom: 20px;
        }

        footer .footer__links li {
            margin-bottom: 10px;
            color: white;

        }

        footer .footer__form input {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: none;
            border-radius: 5px;
        }

        footer .footer__form button {
            width: 100%;
            padding: 10px;
            border: none;
            border-radius: 5px;
            background-color: #ffcb0f ;
            color: #000000;
            cursor: pointer;
        }

        footer .footer__bottom {
            border-top: 1px solid rgba(255, 255, 255, 0.1);
            padding-top: 20px;
            margin-top: 20px;
            display: flex;
            justify-content: center;
            align-items: center;
            font-size: 14px;
        }
        .footer__links li a {
            color: #fff;
            text-decoration: none;
            transition: color 0.3s ease;
        }

        .footer__links li a:hover {
            color: #ffcb0f ;
        }


        -->
        /* media query */
        @media (max-width: 768px) {
            @keyframes fadeInUp {
                from {
                    opacity: 0;
                    transform: translateY(20px);
                }
                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            @keyframes titleAnimation {
                0% {
                    color: #555;
                }
                100% {
                    color: #333;
                }
            }

            #hey {
                background-color: black;
                padding: 10px 0;
                text-align: center;
                color: #ffcb0f;
            }

            .contact-info {
                display: flex;
                flex-direction: column;
                align-items: center;
                transition: background-color 0.3s ease;
            }

            .contact-info div {
                width: 100%;
                margin-bottom: 10px;
            }

            .social-icons {
                justify-content: center;
            }

            .social-icons a {
                margin-left: 10px;
                color: #000;
                text-decoration: none;
                transition: background-color 0.3s ease;
            }

            #home .section__container {
                animation: fadeInUp 0.5s ease forwards;
            }

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }

            body {
                background-color: #ffcb0f;
                font-family: 'Poppins', sans-serif;
            }

            .welcome-section {
                flex-direction: column;
                padding: 20px;
                background-color: #f9f9f9;
            }

            .welcome-content {
                max-width: 100%;
                margin-right: 0;
            }

            .welcome-content h2 {
                font-size: 24px;
                margin: 0 0 10px;
            }

            .welcome-content h3 {
                font-size: 18px;
                margin: 0 0 10px;
            }

            .welcome-content p {
                font-size: 14px;
                margin: 0 0 10px;
            }

            .btn {
                padding: 5px 10px;
                font-size: 14px;
            }

            .welcome-image {
                width: 100%;
                text-align: center;
            }

            .welcome-image img {
                max-width: 100%;
                height: auto;
                border-radius: 10px;
            }

            .popup {
                padding: 10px;
            }

            .popup .close-btn {
                padding: 5px;
            }

            .nav {
                padding: 10px;
            }

            .nav__bar {
                flex-direction: column;
                padding: 10px;
                background-color: #ffcb0f;
            }

            .nav__links {
                flex-direction: column;
                align-items: center;
                margin-top: 10px;
            }

            .nav__links li {
                margin-bottom: 10px;
            }

            header {
                background-size: cover;
                background-position: center;
                min-height: 400px;
                display: flex;
                justify-content: center;
                align-items: center;
                padding: 20px;
                background-repeat: no-repeat;
            }

            header h1 {
                font-size: 24px;
                margin-bottom: 10px;
            }

            header p {
                font-size: 14px;
            }

            section {
                padding: 40px 0;
                text-align: center;
            }

            .section__container {
                max-width: 100%;
            }

            .section__container h2 {
                font-size: 24px;
                margin-bottom: 10px;
            }

            .section__container p {
                font-size: 14px;
                color: #666;
            }

            footer {
                padding: 10px;
            }

            footer p {
                font-size: 12px;
            }

            .title {
                font-size: 24px;
            }

            .card {
                padding: 10px;
                margin: 10px 0;
                border: 1px solid #ccc;
                border-radius: 10px;
                background-color: white;
            }

            .card img {
                max-width: 100%;
                height: auto;
                border-radius: 10px;
            }

            .card h3 {
                font-size: 18px;
                margin: 10px 0;
            }

            .card p {
                font-size: 14px;
            }
        }
        @media (max-width: 400px) {
            @keyframes fadeInUp {
                from {
                    opacity: 0;
                    transform: translateY(20px);
                }
                to {
                    opacity: 1;
                    transform: translateY(0);
                }
            }

            @keyframes titleAnimation {
                0% {
                    color: #555;
                }
                100% {
                    color: #333;
                }
            }

            #hey {
                background-color: black;
                padding: 10px 0;
                text-align: center;
                color: #ffcb0f;
            }

            .contact-info {
                display: flex;
                flex-direction: column;
                align-items: center;
                transition: background-color 0.3s ease;
            }

            .contact-info div {
                width: 100%;
                margin-bottom: 10px;
            }

            .social-icons {
                justify-content: center;
            }

            .social-icons a {
                margin-left: 10px;
                color: #000;
                text-decoration: none;
                transition: background-color 0.3s ease;
            }

            #home .section__container {
                animation: fadeInUp 0.5s ease forwards;
            }

            * {
                margin: 0;
                padding: 0;
                box-sizing: border-box;
                font-family: 'Poppins', sans-serif;
            }

            body {
                background-color: #ffcb0f;
                font-family: 'Poppins', sans-serif;
            }

            .welcome-section {
                flex-direction: column;
                padding: 20px;
                background-color: #f9f9f9;
            }

            .welcome-content {
                max-width: 100%;
                margin-right: 0;
            }

            .welcome-content h2 {
                font-size: 24px;
                margin: 0 0 10px;
            }

            .welcome-content h3 {
                font-size: 18px;
                margin: 0 0 10px;
            }

            .welcome-content p {
                font-size: 14px;
                margin: 0 0 10px;
            }

            .btn {
                padding: 5px 10px;
                font-size: 14px;
            }

            .welcome-image {
                width: 100%;
                text-align: center;
            }

            .welcome-image img {
                max-width: 100%;
                height: auto;
                border-radius: 10px;
            }

            .popup {
                padding: 10px;
            }

            .popup .close-btn {
                padding: 5px;
            }

            .nav {
                padding: 10px;
            }

            .nav__bar {
                flex-direction: column;
                padding: 10px;
                background-color: #ffcb0f;
            }

            .nav__links {
                flex-direction: column;
                align-items: center;
                margin-top: 10px;
            }

            .nav__links li {
                margin-bottom: 10px;
            }

            header {
                background-size: cover;
                background-position: center;
                min-height: 400px;
                display: flex;
                justify-content: center;
                align-items: center;
                padding: 20px;
                background-repeat: no-repeat;
            }

            header h1 {
                font-size: 24px;
                margin-bottom: 10px;
            }

            header p {
                font-size: 14px;
            }

            section {
                padding: 40px 0;
                text-align: center;
            }

            .section__container {
                max-width: 100%;
            }

            .section__container h2 {
                font-size: 24px;
                margin-bottom: 10px;
            }

            .section__container p {
                font-size: 14px;
                color: #666;
            }

            .why-choose-us {
                padding: 20px;
                background-color: white;
            }

            .why-choose-us h2 {
                font-size: 24px;
            }

            .why-choose-us .description {
                font-size: 14px;
                margin: 0 auto 20px;
            }

            .features {
                flex-direction: column;
                align-items: center;
            }

            .feature {
                max-width: 100%;
                margin-bottom: 20px;
            }

            .feature .icon {
                width: 100px;
                height: 100px;
            }

            .feature .icon img {
                width: 50px;
                height: 50px;
            }

            .feature h3 {
                font-size: 16px;
            }

            .feature p {
                font-size: 12px;
            }

            .contact-section {
                flex-direction: column;
                padding: 10px;
            }

            .contact-form-container {
                padding: 10px;
            }

            .contact-form-container h2 {
                margin-bottom: 10px;
            }

            .contact-form-container label {
                margin-bottom: 5px;
            }

            .contact-form-container input,
            .contact-form-container textarea {
                padding: 5px;
                margin-bottom: 5px;
            }

            .contact-form-container button {
                padding: 5px 10px;
                font-size: 14px;
            }

            .contact-image {
                margin-top: 10px;
            }

            .our-services {
                padding: 20px;
            }

            .our-services h2 {
                font-size: 24px;
                margin-bottom: 20px;
            }

            .service {
                flex-direction: column;
                padding: 10px;
                margin-bottom: 10px;
            }

            .service-icon {
                margin-bottom: 10px;
            }

            .service-icon img {
                width: 24px;
                height: 24px;
            }

            .service-description h3 {
                font-size: 18px;
                margin-bottom: 5px;
            }

            .service-description p {
                font-size: 14px;
            }

            .contact-info {
                padding: 10px;
            }

            .contact-info div {
                width: 100%;
                margin-bottom: 10px;
                text-align: center;
            }

            .contact-info p {
                font-size: 14px;
            }

            .social-icons {
                justify-content: center;
            }

            footer {
                padding: 10px;
            }

            footer p {
                font-size: 12px;
            }

            .title {
                font-size: 24px;
            }

            .card {
                padding: 10px;
                margin: 10px 0;
                border: 1px solid #ccc;
                border-radius: 10px;
                background-color: white;
            }

            .card img {
                max-width: 40%;
                height: auto;
                border-radius: 10px;
            }

            .card h3 {
                font-size: 18px;
                margin: 10px 0;
            }

            .card p {
                font-size: 7px;
            }
        }




        </style>
</head>
<body>
<div id="hey">
    <div class="contact-info">
        <div>📞 1234-5678-9012</div>
        <div>📧 support@construct.com</div>
        <div>🕒 Mon - Sat 9:00 - 19:00</div>
    </div>
</div>
<nav>
    <div class="nav__bar">
        <div class="nav__header">
            <div class="logo nav__logo">
                <img src="https://media.istockphoto.com/id/1409896133/vector/home-build-illustration-symbol-symbol-design.jpg?s=612x612&w=0&k=20&c=lapiynHCIj-8RJV6rymm2ge_Y3wjeOPo1bkgV7QClw0=" alt="ConstructionExpert Logo" style="max-width: 80px; height: auto;">
            </div>
        </div>
        <ul class="nav__links" id="nav-links">
            <li ><a href="${pageContext.request.contextPath}/">Home</a></li>
            <li ><a href="${pageContext.request.contextPath}/about">About</a></li>
            <li><a href="${pageContext.request.contextPath}/listProject">Projects</a></li>
            <li><a href=".services">Services</a></li>
            <li><a href=".contact-section">Contact</a></li>
        </ul>
    </div>
</nav>
<section class="ADD"style="background-color: white ; width: 100% ;height: auto ; padding: 50px 20px;
            text-align: center;">

<h1 style="font-size: 36px;
            color: #ffc400;
            margin-bottom: 40px;">Add a new project</h1>
<form action="${pageContext.request.contextPath}/AddProjectServlet?projectId=${project.pId}" method="post">
    <div class="form-group">
        <label for="name">Project Name</label>
        <input type="text" id="name" name="name" required >
    </div>
    <div class="form-group">
        <label for="description">Description:</label>
        <input id="description" name="description" required>
    </div>
    <div class="form-group">
        <label for="startDate">Start Date:</label>
        <input type="date" id="startDate" name="startDate" >
    </div>
    <div class="form-group">
        <label for="endDate">End Date:</label>
        <input type="date" id="endDate" name="endDate" required>
    </div>
    <div class="form-group">
        <label for="budget">Budget:</label>
        <input type="text" id="budget" name="budget"  required >
    </div>


    <input type="submit" value="Add Project" onclick="return confirm('Are you sure you want to add this new project?')" >

</form>
</section>

<footer>
    <div class="footer__container">
        <div class="footer__col">
            <h4>About Us</h4>
            <ul class="footer__links">
                <li><a href="#">Our Story</a></li>
                <li><a href="#">Vision</a></li>
            </ul>
        </div>
        <div class="footer__col">
            <h4>Services</h4>
            <ul class="footer__links">
                <li><a href="#">Management service</a></li>
                <li><a href="#">Events</a></li>
                <li><a href="#">Clubs</a></li>
            </ul>
        </div>
        <div class="footer__col">
            <h4>Contact</h4>
            <ul class="footer__links">
                <li><a href="#">Contact Us</a></li>
                <li><a href="#">Support</a></li>
                <li><a href="#">Location</a></li>
            </ul>
        </div>
        <div class="footer__col">
            <h4>Newsletter</h4>
            <p>Contact Us</p>
            <form action="#" class="footer__form">
                <input type="email" placeholder="Enter your email" required>
                <button type="submit"><i class="ri-send-plane-2-line"></i></button>
            </form>
        </div>
    </div>
    <div class="footer__bottom">
        <p>&copy; 2024 Construction Services.</p>
    </div>

</footer>
<script>


</script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="JS/script.js"></script>

</body>
</html>

