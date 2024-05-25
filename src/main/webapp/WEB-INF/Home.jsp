<%--
  Created by IntelliJ IDEA.
  User: user
  Date: 09/05/2024
  Time: 16:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>
<html>
<head>
    <!--
      - custom css link
    -->
    <style><%@include file="CSS/style.css"%></style>
    <link rel="stylesheet" href="CSS/style.css">
    <!--
      - google font link
    -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

    <!--

        <style>
            /* Style pour le bouton Payer */
            .butn {
                background-color: #007bff;
                color: #fff;
                border: none;
                padding: 10px 20px;
                border-radius: 5px;
                cursor: pointer;
            }

            .butn:hover {
                background-color: #0056b3;
            }
        </style>
    </head>

    <body id="#top">

    <header class="header" data-header>
        <div class="container">
            <div class="overlay" data-overlay></div>
            <a href="allStudent" class="logo"></a>
            <div class="header-actions">
                <button class="search-btn">
                    <ion-icon name="search-outline"></ion-icon>
                </button>
            </div>
            <button class="menu-open-btn" data-menu-open-btn>
                <ion-icon name="reorder-two"></ion-icon>
            </button>
            <nav class="navbar" data-navbar>
                <div class="navbar-top">
                    <a href="movies" class="logo">
                        <img src="webapp/images/logo.png" alt="Cinema LOgo">
                    </a>
                    <button class="menu-close-btn" data-menu-close-btn>
                        <ion-icon name="close-outline"></ion-icon>
                    </button>
                </div>
                <ul class="navbar-list">
                    <li>
                        <a href="saveStudent" class="navbar-link">Students List</a>
                    </li>
                </ul>

                <ul class="navbar-social-list">
                    <li>
                        <a href="#" class="navbar-social-link">
                            <ion-icon name="logo-twitter"></ion-icon>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="navbar-social-link">
                            <ion-icon name="logo-facebook"></ion-icon>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="navbar-social-link">
                            <ion-icon name="logo-pinterest"></ion-icon>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="navbar-social-link">
                            <ion-icon name="logo-instagram"></ion-icon>
                        </a>
                    </li>
                    <li>
                        <a href="#" class="navbar-social-link">
                            <ion-icon name="logo-youtube"></ion-icon>
                        </a>
                    </li>
                </ul>
            </nav>
        </div>
    </header>
    <main>
        <article>
            <section class="hero" style="background: url(https://www.lecoindesentrepreneurs.fr/wp-content/uploads/2021/03/Automatisation-gestion-dentreprise.png) no-repeat;  background-size: cover;background-position: center;min-height: 750px;height: 100vh;max-height: 1000px;display: flex;justify-content: flex-start;align-items: center;padding-block: var(--section-padding);">
                <div class="container">

                    <div class="hero-content">

                        <p class="hero-subtitle">student management</p>
                        <button class="btn btn-primary">
                            <ion-icon name="play"></ion-icon>

                            <span>Watch now</span>
                        </button>

                    </div>

                </div>
            </section>
    <footer class="footer">
        <div class="footer-top">
            <div class="container">
                <div class="divider"></div>
                <div class="quicklink-wrapper">
                    <ul class="quicklink-list">
                        <li>
                            <a href="#" class="quicklink-link">Faq</a>
                        </li>
                        <li>
                            <a href="#" class="quicklink-link">Help center</a>
                        </li>
                        <li>
                            <a href="#" class="quicklink-link">Terms of use</a>
                        </li>
                        <li>
                            <a href="#" class="quicklink-link">Privacy</a>
                        </li>
                    </ul>
                    <ul class="social-list">
                        <li>
                            <a href="#" class="social-link">
                                <ion-icon name="logo-facebook"></ion-icon>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="social-link">
                                <ion-icon name="logo-twitter"></ion-icon>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="social-link">
                                <ion-icon name="logo-pinterest"></ion-icon>
                            </a>
                        </li>
                        <li>
                            <a href="#" class="social-link">
                                <ion-icon name="logo-linkedin"></ion-icon>
                            </a>
                        </li>
                    </ul>
                </div>
            </div>
        </div>
        <div class="footer-bottom">
            <div class="container">
                <p class="copyright">
                    &copy; 2022 <a href="#">Megarama Béni Mellal</a>. All Rights Reserved
                </p>
                <img src="images/footer-bottom-img.png" alt="Online banking companies logo" class="footer-bottom-img">
            </div>
        </div>
    </footer>
    <a href="#top" class="go-top" data-go-top>
        <ion-icon name="chevron-up"></ion-icon>
    </a>

                <script src="JS/script.js"></script>
                <script type="module" src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.esm.js"></script>
                <script nomodule src="https://unpkg.com/ionicons@5.5.2/dist/ionicons/ionicons.js"></script>


    </body>
    </html>


    -->
    <link href="https://cdn.jsdelivr.net/npm/remixicon@3.5.0/fonts/remixicon.css" rel="stylesheet">
    <style>
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
            background-image: url(https://www.letsbuild.com/wp-content/uploads/2023/07/Depositphotos_89120612_s-2019.jpg) ;background-size: cover;background-position: center;min-height: 750px;height: 100vh;max-height: 1000px;display: flex;justify-content: flex-start;align-items: center;padding-block: var(--section-padding);background-repeat: no-repeat;
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
        .why-choose-us {
            text-align: center;
            padding: 50px 20px;
            background-color: white;
        }

        .why-choose-us h2 {
            font-size: 36px;
            color: #ffc400;

        }

        .why-choose-us .description {
            font-size: 16px;
            color: #666;
            max-width: 800px;
            margin: 0 auto 40px;
        }

        .features {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 40px;
        }

        .feature {
            text-align: center;
            max-width: 250px;
        }

        .feature .icon {
            width: 221px;
            height: 212px;
            border-radius: 50%;
            background: radial-gradient(circle, #ffc400, #ffc400);
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 20px;
        }

        .feature .icon img {
            width: 101px;
            height: 99px;
        }

        .feature h3 {
            font-size: 18px;
            color: #333;
            margin-bottom: 10px;
        }

        .feature p {
            font-size: 14px;
            color: #666;
        }


        /* contact 3 */
        .contact-section {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
        }
        .contact-form-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
        }
        .contact-form-container h2 {
            color: #fbc02d;
            margin-bottom: 20px;
        }
        .contact-form-container label {
            color: #333;
            display: block;
            margin-bottom: 5px;
        }
        .contact-form-container input, .contact-form-container textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .contact-form-container button {
            background-color: #fbc02d;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
        }
        .contact-form-container button:hover {
            background-color: #e6a700;
        }
        .contact-image {
            margin-left: 20px;
        }
        .contact-image img {
            max-width: 100%;
            height: auto;
            border-radius: 8px;
        }
    /* Our serfvices */
        .our-services {
            text-align: center;
            padding: 50px 20px;
        }

        .our-services h2 {
            font-size: 36px;
            color: #ffc400;
            margin-bottom: 40px;
        }

        .service-cards {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .service-card {
            background-color: white;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            max-width: 300px;
            margin: 20px;
            text-align: center;
            padding: 20px;
        }

        .service-card img {
            width: 100%;
            border-radius: 10px;
        }

        .service-card h3 {
            font-size: 20px;
            color: #333;
            margin: 20px 0 10px;
        }

        .service-card p {
            font-size: 14px;
            color: #666;
            margin-bottom: 20px;
        }

        .know-more {
            background-color: black;
            color: white;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            cursor: pointer;
            font-size: 14px;
            display: flex;
            justify-content: center;
            margin-left: 100px;

        }

        .know-more:hover {
            background-color: #ffdb29;
        }


        /* Why us
        #why_us {
            background: #f2f7fa none repeat scroll 0 0;
            padding-bottom: 50px;
            line-height: 18px;
        }
        #why_us h2 {
            margin: 70px 0 20px;
        }
        .why_us_item{ padding-top: 55px;}
        #why_us .fa{
            border-radius: 100%;
            box-shadow: 0 0 0 10px #ffcb0f, 0 0 0 20px #fadb64, 0 0 0 30px #f7e59c;
            padding: 38px;
            font-size:45px;
        }
        .why_us_item > h4 {
            font-size: 15px;
            margin: 60px 0 20px;
        }
        */
        /*
                .why-choose-us {
                    text-align: center;
                }

                #contt {
                    width: 80%;
                    margin: 0 auto;
                }


                .features {
                    display: flex;
                    flex-wrap: wrap;
                    justify-content: space-between;
                }

                .feature {
                    width: 25%;
                    text-align: left;
                    margin-bottom: 20px;
                }

                .feature img {
                    width: 100%;
                    height: 200px;
                    object-fit: cover;
                    margin-bottom: 10px;
                }


         */
        .services, .history, .team {
            padding: 50px 20px;
            text-align: center;
            background-color: #f9f9f9;
        }

        .services h2, .history h2, .team h2 {
            font-size: 36px;
            margin-bottom: 20px;
            color:#ffcb0f ;
            background-color: #f9f9f9;
        }

        .service-cards, .team-cards {
            display: flex;
            justify-content: space-around;
            flex-wrap: wrap;
        }

        .service-cards .card1, .team-cards .card1{
            background: #ffcb0f;
            border-radius: 10px;
            padding: 20px;
            margin: 10px;
            flex: 1;
            max-width: 28%;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }

        .service-cards .card h3, .team-cards .card h3 {
            font-size: 24px;
            margin-bottom: 10px;
        }

        .service-cards .card1 img {
            width: 375px;
            border-radius: 5px;
            margin-bottom: 10px;
            height: 266px;
        }

        /* Styles for service cards */
        .services-container {
            display: flex;
            justify-content: space-between;
            flex-wrap: wrap;
        }

        .service-card {
            background-color: #f9f9f9;
            border: 1px solid #ddd;
            border-radius: 5px;
            width: calc(33% - 20px); /* Adjust as needed based on the number of cards */
            margin-bottom: 20px;
            overflow: hidden;
        }

        .service-card img {
            width: 100%;
            height: auto;
        }

        .service-info {
            padding: 20px;
        }

        .service-info h3 {
            margin-top: 0;
        }

        .service-info p {
            margin-bottom: 0;
        }
        #room {
            background-color: #f9f9f9;
        }

        #feature {
            background-color: #f9f9f9;
        }

        #menu {
            background-color: #f9f9f9;
        }

        #news {
            background-color: #f9f9f9;
        }
        /* reviews */

        #reviews {
            text-align: center;
            background-color: #fff;
            padding: 95px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            width: 100%;
        }

        #reviews h2 {

            font-size: 36px;
            margin-bottom: 20px;
            color: #ffcb0f;

        }


        .reviews-container {
            display: flex;
            justify-content: space-between;
        }

        .review-card {
            background-color: #ffcb0f;
            border: 3px solid #f9f9f9;
            border-radius: 55px;
            padding: 58px;
            width: 31%;
            position: relative;
            transition: transform 0.3s;
            height: 346px;
        }


        .review-card:hover {
            transform: scale(1.05);
        }

        .review-content {
            margin-bottom: 20px;
        }



        .reviewer-info {
            text-align: center;
        }

        .reviewer-info img {
            border-radius: 50%;
            width: 116px;
            height: 110px;
            transition: transform 0.3s;
            margin-left:100px;
        }

        .review-card:hover .reviewer-info img {
            transform: rotate(360deg);
        }

        .reviewer-name {
            margin: 71px 62px 0;
            font-weight: bold;
            background-color: white;
        }
        /* end reviews */
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

        <!--
        .section__container {
            text-align: center;
            margin-bottom: 40px;
        }

        .card__container {
            display: flex;
            flex-wrap: wrap;
            justify-content: center;
            gap: 20px;
        }

        .card {
            width: 250px;
            padding: 20px;
            background-color: #f8f9fa;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            color: #ffcb0f ;
        }

        .card img {
            width: 100%;
            border-radius: 5px;
            margin-bottom: 10px;
        }

        .card h3 {
            margin-bottom: 10px;
        }

        .card p {
            margin-bottom: 20px;
        }

        .card button {
            background-color: #ffcb0f ;
            color: #fff;
            border: none;
            padding: 10px 20px;
            border-radius: 5px;
            cursor: pointer;
        }

        .card button:hover {
            background-color: #ffcb0f ;
        }
        .card-header {
            text-align: center;
            font-size: 20px;
            font-weight: bold;
            margin-bottom: 20px;
        }

        .form-group {
            margin-bottom: 15px;
        }

        .form-control {
            background-color: #e0e0e0;
            border: none;
            border-radius: 5px;
            padding: 10px;
        }

        .form-control:focus {
            outline: none;
            border-color: #ffcb0f ;
        }

        button.btn-success {
            background-color: #ffcb0f ;
            color: #fff;
            border: none;
            border-radius: 5px;
            padding: 10px 20px;
            font-weight: bold;
            cursor: pointer;
        }

        button.btn-success:hover {
            background-color: #ffcb0f ;
        }

        .text-center {
            text-align: center;
            margin-top: 20px;
        }
        .contact-section {
            display: flex;
            align-items: center;
            justify-content: center;
            padding: 20px;
            background-color:#f9f9f9 ;
        }
        .contact-form-container {
            background-color: #fff;
            padding: 20px;
            border-radius: 8px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            max-width: 887px;
            width: 126%;
        }
        .contact-form-container h2 {

            font-size: 36px;
            margin-bottom: 20px;
            color: #ffcb0f;
        }
        .contact-form-container label {
            color: #333;
            display: block;
            margin-bottom: 5px;
        }
        .contact-form-container input, .contact-form-container textarea {
            width: 100%;
            padding: 10px;
            margin-bottom: 10px;
            border: 1px solid #ccc;
            border-radius: 4px;
        }
        .contact-form-container button {
            background-color: #fbc02d;
            color: #fff;
            padding: 10px 20px;
            border: none;
            border-radius: 4px;
            cursor: pointer;
            margin-left: 327px;

        }
        .contact-form-container button:hover {
            background-color: #e6a700;
        }
        .contact-image {
            margin-left: 20px;
        }
        .contact-image img {

            max-width: 101%;
            height: 494px;
            border-radius: 10px;
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

<header id="home">
    <div class="section__container">
        <h1 style="color:#ffcb0f; ">CONSTRUCTION SERVICES</h1>
        <h2 style="color:black;">CREATIVE & PROFESSIONAL</h2>
        <a href="" style="display: inline-block;padding: 10px 20px;background-color: #ffcb0f ;color: #fff;text-decoration: none;border-radius: 5px;transition: background-color 0.3s ease;">Discover More</a>
    </div>
</header>
<section class="welcome-section">
    <div class="welcome-content">
        <h2>ABOUT US</h2>
        <h3>Construction Xpert Services</h3>
        <p>Construction Services" is a professional website showcasing a wide range of construction services offered by a team of certified and experienced engineers. The homepage features striking visuals of large construction machinery, emphasizing the company's capability and expertise in handling substantial projects. With a clean and modern design, the site highlights the company's commitment to creativity and professionalism. Key sections of the site include detailed information about the services provided, an impressive portfolio of past projects, and easy access to contact information. The use of bold typography and contrasting colors ensures that the important messages are effectively communicated to visitors, making the site both visually appealing and user-friendly.</p>
        <a href="" style="display: inline-block;padding: 10px 20px;background-color: #ffcb0f ;color: #fff;text-decoration: none;border-radius: 5px;transition: background-color 0.3s ease;">Show More</a>

    </div>
    <div class="welcome-image">
        <img src="https://www.training.com.au/wp-content/uploads/Construction_female_workers.jpg" alt="Construction Worker">
    </div>
</section>
<!-- Why us -->
<section class="why-choose-us">
    <h2>WHY CHOOSE US?</h2>
    <p class="description">Our team of highly skilled professionals is passionate about transforming your vision into reality. We take pride in our commitment to quality craftsmanship, using only the finest materials and adhering to the strictest safety standards to ensure that your project is built to last and exceeds your expectations.</p>
    <div class="features">
        <div class="feature">
            <div class="icon">
                <img src="https://static.thenounproject.com/png/1587734-200.png" alt="Quality Icon">
            </div>
            <h3>WE DELIVER QUALITY</h3>
        </div>
        <div class="feature">
            <div class="icon">
                <img src="https://cdn.discordapp.com/attachments/1210252312530919475/1243522297734893598/image.png?ex=6651c7e3&is=66507663&hm=388e7a99203802a9ff4edf6754a9fb3bbd2520fe54cfe0d753172fe93270c187&" alt="Time Icon">
            </div>
            <h3>ALWAYS ON TIME</h3>
        </div>
        <div class="feature">
            <div class="icon">
                <img src="https://cdn4.iconfinder.com/data/icons/sweetheart-2/67/heart_love_passion_favorite_palm_hand-512.png" alt="Passionate Icon">
            </div>
            <h3>WE ARE PASSIONATE</h3>
        </div>
        <div class="feature">
            <div class="icon">
                <img src="https://cdn-icons-png.flaticon.com/256/5362/5362724.png" alt="Professional Icon">
            </div>
            <h3>PROFESSIONAL SERVICES</h3>
        </div>
    </div>
</section>
<!-- Why us end -->
<!--<section class="why-choose-us">
    <div class="container" id="contt">
        <h2>Pourquoi nous choisir ?</h2>
        <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores
            ecs qui ratione voluptatem sequi nesciunt. Neque porro quisquam est, qui dolorem ipsum quia dolor sit amet,
            consectetur, adipisci velit, sed quia consequuntur magni dolores eos qui ratione voluptatem sequi nesciunt.</p>

        <div class="features">
            <div class="feature">
                <img src="https://png.pngtree.com/element_our/20200702/ourlarge/pngtree-high-quality-icon-image_2290167.jpg" alt="Qualité">
                <h3>Qualité</h3>
                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores
                    ecs qui ratione voluptatem sequi nesciunt.</p>
            </div>
            <div class="feature">
                <img src="https://cdn.create.vista.com/api/media/small/471210716/stock-vector-alarm-clock-minimal-bright-yellow-material-icon" alt="Ponctualité">
                <h3>Ponctualité</h3>
                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores
                    ecs qui ratione voluptatem sequi nesciunt.</p>
            </div>
            <div class="feature">
                <img src="https://www.pngitem.com/pimgs/m/28-284733_core-value-values-icon-make-a-difference-icon.png" alt="Passion">
                <h3>Passion</h3>
                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores
                    ecs qui ratione voluptatem sequi nesciunt.</p>
            </div>
            <div class="feature">
                <img src="https://cdn-icons-png.flaticon.com/512/11126/11126145.png" alt="Professionnalisme">
                <h3>Professionnalisme</h3>
                <p>Nemo enim ipsam voluptatem quia voluptas sit aspernatur aut odit aut fugit, sed quia consequuntur magni dolores
                    ecs qui ratione voluptatem sequi nesciunt.</p>
            </div>
        </div>
    </div>
</section>
-->
<section class="services">
    <h2>OUR SERVICES</h2>
    <div class="service-cards">
        <div class="card1">
            <img src="https://www.ootravaux.fr/sites/ootravaux/files/2020-06/Etapes-construction-maison_1000x667.jpg" alt="Construction Management">
            <h3>CONSTRUCTION</h3>
            <p>act of construct or design something.</p>
            <button class="know-more" >KNOW MORE</button>
        </div>
        <div class="card1">
            <img src="https://iau.ae/wp-content/uploads/2022/02/crop-architect-opening-lo.jpg" alt="Construction Management">
            <h3>ARCHITECTURE</h3>
            <p>art and technique of designing and building.</p>
            <button class="know-more">KNOW MORE</button>
        </div>
        <div class="card1">
            <img src="https://www.renoassistance.ca/wp-content/uploads/2021/08/renovation-majeure-1.jpg" alt="Construction Management">
            <h3>RENOVATION</h3>
            <p>act of renewing or restoring something.</p>
            <button class="know-more">KNOW MORE</button>
        </div>
    </div>
</section>
<section id="reviews">
    <h2>Customer Reviews</h2>
    <div class="reviews-container">
        <div class="review-card">
            <div class="review-content">
                <p><i class="quote">“</i>Exceptional experience and results. We couldn't be happier!</p>
            </div>
            <div class="reviewer-info">
                <img src="https://static.vecteezy.com/system/resources/previews/013/860/760/original/girl-in-the-headphones-customer-support-center-via-phone-mail-operator-service-icons-concept-illustration-in-flat-style-vector.jpg" alt="John Smith">
                <p class="reviewer-name">Lara</p>
            </div>
        </div>
        <div class="review-card">
            <div class="review-content">
                <p><i class="quote">“</i>Clear and transparent communication throughout the project!</p>
            </div>
            <div class="reviewer-info">
                <img src="https://cdn-icons-png.flaticon.com/512/6009/6009978.png" alt="John Smith">
                <p class="reviewer-name">John</p>
            </div>
        </div>
        <div class="review-card">
            <div class="review-content">
                <p><i class="quote">“</i>Excellent quality at a reasonable price. Worth every penny!</p>

            </div>
            <div class="reviewer-info">
                <img src="https://static.vecteezy.com/system/resources/previews/013/860/760/original/girl-in-the-headphones-customer-support-center-via-phone-mail-operator-service-icons-concept-illustration-in-flat-style-vector.jpg" alt="John Smith">
                <p class="reviewer-name">Emma</p>
            </div>
        </div>
    </div>
</section>
<!-- contact section -->
<section class="contact-section">
    <div class="contact-form-container">
        <h2>Contact Us</h2>
        <form action="#">
            <label for="name" >Name</label>
            <input type="text" id="name" name="name" required style="border: none; resize: none; width: 100%; padding: 0.2rem; color: inherit; font-family: inherit; line-height: 1.5; border-radius: 0.2rem; box-shadow: inset 2px 2px 8px rgba(0, 0, 0, 0.3), inset -2px -2px 8px rgba(255, 255, 255, 0.8); background-color: rgb(255, 255, 255);">
            <label for="email" >Email</label>
            <input type="email" id="email" name="email" required style="border: none; resize: none; width: 100%; padding: 0.2rem; color: inherit; font-family: inherit; line-height: 1.5; border-radius: 0.2rem; box-shadow: inset 2px 2px 8px rgba(0, 0, 0, 0.3), inset -2px -2px 8px rgba(255, 255, 255, 0.8); background-color: rgb(255, 255, 255);">
            <label for="message">Message</label>
            <textarea id="message" name="message" rows="5" required></textarea>
            <button type="submit">Send Message</button>
        </form>
    </div>
    <div class="contact-image">
        <img src="https://www.huffcon.com/wp-content/uploads/2022/11/Contact-Us-Huff-Construction-Company.webp" alt="Construction Image">
    </div>
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
    document.getElementById('knowMoreBtn').addEventListener('click', function(event) {
        event.preventDefault();
        document.getElementById('popup').style.display = 'block';
    });

    document.getElementById('closeBtn').addEventListener('click', function(event) {
        event.preventDefault();
        document.getElementById('popup').style.display = 'none';
    });
    function enlargeImage(card) {
        card.getElementsByTagName('img')[0].style.transform = "scale(1.1)";
        card.getElementsByTagName('img')[0].style.transition = "transform 0.3s ease";
    }

    function shrinkImage(card) {
        card.getElementsByTagName('img')[0].style.transform = "scale(1)";
    }
    $(document).ready(function() {
        $('.know-more').on('click', function() {
            alert('More information will be available soon!');
        });
    });
    $(document).ready(function() {
        // Show all items by default
        $('.gallery-item').show();

        // Filter items on button click
        $('.filter-btn').on('click', function() {
            var filterValue = $(this).attr('data-filter');

            // Remove active class from all buttons
            $('.filter-btn').removeClass('active');
            // Add active class to the clicked button
            $(this).addClass('active');

            if (filterValue === 'all') {
                $('.gallery-item').show();
            } else {
                $('.gallery-item').hide();
                $('.gallery-item[data-category="' + filterValue + '"]').show();
            }
        });
    });
    document.addEventListener('DOMContentLoaded', () => {
        const reviewsContainer = document.getElementById('reviews-container');
        const reviewCards = document.querySelectorAll('.review-card');
        const prevButton = document.getElementById('prevButton');
        const nextButton = document.getElementById('nextButton');

        let currentIndex = 0;
        const totalReviews = reviewCards.length;

        // Function to show the review at the given index
        function showReview(index) {
            const offset = -index * 100;
            reviewsContainer.style.transform = `translateX(${offset}%)`;
        }

        // Show next review
        function nextReview() {
            currentIndex = (currentIndex + 1) % totalReviews;
            showReview(currentIndex);
        }

        // Show previous review
        function prevReview() {
            currentIndex = (currentIndex - 1 + totalReviews) % totalReviews;
            showReview(currentIndex);
        }

        // Auto slide reviews every 5 seconds
        let autoSlide = setInterval(nextReview, 5000);

        // Event listeners for navigation buttons
        nextButton.addEventListener('click', () => {
            nextReview();
            clearInterval(autoSlide);
            autoSlide = setInterval(nextReview, 5000);
        });

        prevButton.addEventListener('click', () => {
            prevReview();
            clearInterval(autoSlide);
            autoSlide = setInterval(nextReview, 5000);
        });
    });

    document.getElementById('contactForm').addEventListener('submit', function(event) {
        event.preventDefault();

        // Get form values
        const name = document.getElementById('name').value;
        const email = document.getElementById('email').value;
        const message = document.getElementById('message').value;
        const formMessages = document.getElementById('formMessages');

        // Clear previous messages
        formMessages.textContent = '';

        // Basic validation
        if (name === '' || email === '' || message === '') {
            formMessages.textContent = 'All fields are required.';
            formMessages.className = 'error';
            return;
        }
    } );

</script>

<script src="https://code.jquery.com/jquery-3.6.0.min.js"></script>
<script src="JS/script.js"></script>

</body>
</html>