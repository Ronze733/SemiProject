<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
  <head>
    <meta charset="utf-8" />
    <meta
      name="viewport"
      content="width=device-width, initial-scale=1, shrink-to-fit=no"
    />

    <link
      href="https://fonts.googleapis.com/css?family=Poppins:300,400,500,600,700,800,900"
      rel="stylesheet"
    />
    <link
      href="https://fonts.googleapis.com/css2?family=Arizonia&display=swap"
      rel="stylesheet"
    />

    <link
      rel="stylesheet"
      href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css"
    />

    <link rel="stylesheet" href="css/bj/SKTCMain/animate.css" />

    <link rel="stylesheet" href="css/bj/SKTCMain/owl.carousel.min.css" />
    <link rel="stylesheet" href="css/bj/SKTCMain/owl.theme.default.min.css" />
    <link rel="stylesheet" href="css/bj/SKTCMain/magnific-popup.css" />

    <link rel="stylesheet" href="css/bj/SKTCMain/bootstrap-datepicker.css" />
    <link rel="stylesheet" href="css/bj/SKTCMain/jquery.timepicker.css" />

    <link rel="stylesheet" href="css/bj/SKTCMain/flaticon.css" />
    <link rel="stylesheet" href="css/bj/SKTCMain/style.css" />

    <link rel="icon" type="image/png" href="./img/jy/sktc-favicon.png" />
    <link rel="stylesheet" href="./css/reset.css" />
    <link rel="stylesheet" href="./css/index.css" />
    <link rel="stylesheet" href="./css/jm/event.css" />
    <link rel="stylesheet" href="./css/jh/review.css" />
    <link rel="stylesheet" href="./css/jy/recommend.css" />
    <link rel="stylesheet" href="./css/sh/QnA.css" />
    <script src="./js/jh/review.js"></script>
    <script src="./js/sh/QnA.js"></script>
    <link rel="stylesheet" href="./css/sh/QnA.css" />
    <link rel="preconnect" href="https://fonts.googleapis.com" />
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin />
    <link
      href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300;400;500;700&display=swap"
      rel="stylesheet"
    />

    <title>South Korea Travel Controller</title>
  </head>
  <body onload="test()">
    <nav
      class="navbar navbar-expand-lg navbar-dark ftco_navbar bg-dark ftco-navbar-light"
      id="ftco-navbar"
    >
      <div class="container">
        <a class="navbar-brand" href="index.html"
          >
          <img style="width: 30px; height: 30px;" src="./img/jy/SKTC.png">
          SKTC<span>South Travel Controller</span></a
        >
        <button
          class="navbar-toggler"
          type="button"
          data-toggle="collapse"
          data-target="#ftco-nav"
          aria-controls="ftco-nav"
          aria-expanded="false"
          aria-label="Toggle navigation"
        >
          <span class="oi oi-menu"></span> Menu
        </button>

        <div class="collapse navbar-collapse" id="ftco-nav">
          <ul class="navbar-nav ml-auto">
            <li class="nav-item" id="nav-home">
              <a href="NewFile.jsp" class="nav-link">HOME</a>
            </li>
            <li class="nav-item" id="nav-review">
              <a href="ReviewPageC?p=1" class="nav-link">REVIEW</a>
            </li>
            <li class="nav-item" id="nav-qna">
              <a href="QnAC" class="nav-link">QnA</a>
            </li>
            <li class="nav-item">
              <jsp:include page="${LoginPage}"></jsp:include>
            </li>
          </ul>
        </div>
      </div>
    </nav>
    <!-- END nav -->

    <section
      class="hero-wrap hero-wrap-2 js-fullheight"
      style="background-image: url('img/jy/main-img1.jpg')"
    >
      <div class="overlay"></div>
      <div class="container">
        <div
          class="row no-gutters slider-text js-fullheight align-items-end justify-content-center"
        >
          <div class="col-md-9 ftco-animate pb-5 text-center">
            <p class="breadcrumbs">
              <span class="mr-2"
                ><a href="index.html"
                  >Home <i class="fa fa-chevron-right"></i></a
              ></span>
              <span id="nowPage"> <i class="fa fa-chevron-right"></i></span>
            </p>
            <h1 class="mb-0 bread" id="nowPageH"></h1>
          </div>
        </div>
      </div>
    </section>

    <section class="ftco-section">
      <div class="container">
        <div class="row d-flex">
          <jsp:include page="${contentPage}"></jsp:include>
        </div>
      </div>
    </section>

    <section class="ftco-intro ftco-section ftco-no-pt">
      <div class="container">
        <div class="row justify-content-center">
          <div class="col-md-12 text-center">
            <div
              class="img"
              style="background-image: url('img/jy/main-img2.jpg')"
            >
              <div class="overlay"></div>
              <h2>We Are Pacific A Travel Agency</h2>
              <p>
                We can manage your dream building A small river named Duden
                flows by their place
              </p>
            </div>
          </div>
        </div>
      </div>
    </section>

    <footer
      class="ftco-footer bg-bottom ftco-no-pt"
      style="background-image: url(css/bj/images/bg_3.jpg)"
    >
      <div class="container">
        <div class="row mb-5">
          <div class="col-md pt-5">
            <div class="ftco-footer-widget pt-md-5 mb-4">
              <h2 class="ftco-heading-2">About</h2>
              <p>
                Far far away, behind the word mountains, far from the countries
                Vokalia and Consonantia, there live the blind texts.
              </p>
              <ul
                class="ftco-footer-social list-unstyled float-md-left float-lft"
              >
                <li class="ftco-animate">
                  <a href="#"><span class="fa fa-twitter"></span></a>
                </li>
                <li class="ftco-animate">
                  <a href="#"><span class="fa fa-facebook"></span></a>
                </li>
                <li class="ftco-animate">
                  <a href="#"><span class="fa fa-instagram"></span></a>
                </li>
              </ul>
            </div>
          </div>
          <div class="col-md pt-5 border-left">
            <div class="ftco-footer-widget pt-md-5 mb-4 ml-md-5">
              <h2 class="ftco-heading-2">Infromation</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Online Enquiry</a></li>
                <li><a href="#" class="py-2 d-block">General Enquiries</a></li>
                <li><a href="#" class="py-2 d-block">Booking Conditions</a></li>
                <li><a href="#" class="py-2 d-block">Privacy and Policy</a></li>
                <li><a href="#" class="py-2 d-block">Refund Policy</a></li>
                <li><a href="#" class="py-2 d-block">Call Us</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md pt-5 border-left">
            <div class="ftco-footer-widget pt-md-5 mb-4">
              <h2 class="ftco-heading-2">Experience</h2>
              <ul class="list-unstyled">
                <li><a href="#" class="py-2 d-block">Adventure</a></li>
                <li>
                  <a href="#" class="py-2 d-block">Hotel and Restaurant</a>
                </li>
                <li><a href="#" class="py-2 d-block">Beach</a></li>
                <li><a href="#" class="py-2 d-block">Nature</a></li>
                <li><a href="#" class="py-2 d-block">Camping</a></li>
                <li><a href="#" class="py-2 d-block">Party</a></li>
              </ul>
            </div>
          </div>
          <div class="col-md pt-5 border-left">
            <div class="ftco-footer-widget pt-md-5 mb-4">
              <h2 class="ftco-heading-2">Have a Questions?</h2>
              <div class="block-23 mb-3">
                <ul>
                  <li>
                    <span class="icon fa fa-map-marker"></span
                    ><span class="text"
                      >203 Fake St. Mountain View, San Francisco, California,
                      USA</span
                    >
                  </li>
                  <li>
                    <a href="#"
                      ><span class="icon fa fa-phone"></span
                      ><span class="text">+2 392 3929 210</span></a
                    >
                  </li>
                  <li>
                    <a href="#"
                      ><span class="icon fa fa-paper-plane"></span
                      ><span class="text">info@yourdomain.com</span></a
                    >
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="row">
          <div class="col-md-12 text-center">
            <p>
              <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
              Copyright &copy;
              <script>
                document.write(new Date().getFullYear());
              </script>
              All rights reserved | This template is made with
              <i class="fa fa-heart" aria-hidden="true"></i> by
              <a href="https://colorlib.com" target="_blank">Colorlib</a>
              <!-- Link back to Colorlib can't be removed. Template is licensed under CC BY 3.0. -->
            </p>
          </div>
        </div>
      </div>
    </footer>

    <!-- loader -->
    <div id="ftco-loader" class="show fullscreen">
      <svg class="circular" width="48px" height="48px">
        <circle
          class="path-bg"
          cx="24"
          cy="24"
          r="22"
          fill="none"
          stroke-width="4"
          stroke="#eeeeee"
        />
        <circle
          class="path"
          cx="24"
          cy="24"
          r="22"
          fill="none"
          stroke-width="4"
          stroke-miterlimit="10"
          stroke="#F96D00"
        />
      </svg>
    </div>

    <script src="js/bj/SKTCMain/jquery.min.js"></script>
    <script src="js/bj/SKTCMain/jquery-migrate-3.0.1.min.js"></script>
    <script src="js/bj/SKTCMain/popper.min.js"></script>
    <script src="js/bj/SKTCMain/bootstrap.min.js"></script>
    <script src="js/bj/SKTCMain/jquery.easing.1.3.js"></script>
    <script src="js/bj/SKTCMain/jquery.waypoints.min.js"></script>
    <script src="js/bj/SKTCMain/jquery.stellar.min.js"></script>
    <script src="js/bj/SKTCMain/owl.carousel.min.js"></script>
    <script src="js/bj/SKTCMain/jquery.magnific-popup.min.js"></script>
    <script src="js/bj/SKTCMain/jquery.animateNumber.min.js"></script>
    <script src="js/bj/SKTCMain/bootstrap-datepicker.js"></script>
    <script src="js/bj/SKTCMain/scrollax.min.js"></script>
    <script src="https://maps.googleapis.com/maps/api/js?key=AIzaSyBVWaKrjvy3MaE7SQ74_uJiULgl1JY0H2s&sensor=false"></script>
    <script src="js/bj/SKTCMain/google-map.js"></script>
    <script src="js/bj/SKTCMain/main.js"></script>
  </body>
</html>
